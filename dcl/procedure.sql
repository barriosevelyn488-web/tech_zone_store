CREATE OR REPLACE PROCEDURE registrar_venta(
    p_id_cliente INTEGER,
    p_id_producto INTEGER,
    p_cantidad INTEGER
)
LANGUAGE plpgsql
AS $$
DECLARE
    stock_actual INTEGER;
    precio_producto NUMERIC(10, 2);
    nueva_venta INTEGER;
BEGIN
    IF p_cantidad <= 0 THEN
        ROLLBACK;
        RAISE NOTICE 'La cantidad debe ser mayor que cero';
        RETURN;
    END IF;

    IF NOT EXISTS (
        SELECT 1
        FROM clientes
        WHERE id = p_id_cliente
    ) THEN
        ROLLBACK;
        RAISE NOTICE 'El cliente no existe';
        RETURN;
    END IF;

    SELECT stock, precio
    INTO stock_actual, precio_producto
    FROM productos
    WHERE id = p_id_producto;

    IF NOT FOUND THEN
        ROLLBACK;
        RAISE NOTICE 'El producto no existe';
        RETURN;
    END IF;

    IF stock_actual < p_cantidad THEN
        ROLLBACK;
        RAISE NOTICE 'No hay stock suficiente';
        RETURN;
    END IF;

    INSERT INTO ventas (fecha_venta, id_cliente)
    VALUES (CURRENT_TIMESTAMP, p_id_cliente)
    RETURNING id INTO nueva_venta;

    INSERT INTO detalle_ventas (
        id_venta,
        id_producto,
        cantidad,
        precio_unitario
    )
    VALUES (
        nueva_venta,
        p_id_producto,
        p_cantidad,
        precio_producto
    );

    UPDATE productos
    SET stock = stock - p_cantidad
    WHERE id = p_id_producto;

    COMMIT;

    RAISE NOTICE 'Venta registrada correctamente';
END;
$$;