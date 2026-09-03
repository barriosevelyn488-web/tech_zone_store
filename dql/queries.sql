-- 1. Productos con stock menor a 5
SELECT nombre, stock
FROM productos
WHERE stock < 5;

-- 2. Ventas totales de agosto de 2026
SELECT SUM(d.cantidad * d.precio_unitario) AS ventas_totales
FROM ventas v
JOIN detalle_ventas d ON v.id = d.id_venta
WHERE v.fecha_venta >= '2026-08-01'
  AND v.fecha_venta < '2026-09-01';

-- 3. Cliente con más compras
SELECT c.nombre, COUNT(v.id) AS cantidad_compras
FROM clientes c
JOIN ventas v ON c.id = v.id_cliente
GROUP BY c.id, c.nombre
ORDER BY cantidad_compras DESC
LIMIT 1;

-- 4. Productos más vendidos
SELECT p.nombre, SUM(d.cantidad) AS unidades_vendidas
FROM productos p
JOIN detalle_ventas d ON p.id = d.id_producto
GROUP BY p.id, p.nombre
ORDER BY unidades_vendidas DESC;

-- 5. Ventas en un rango de fechas
SELECT v.id, v.fecha_venta, c.nombre AS cliente
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id
WHERE v.fecha_venta BETWEEN '2026-01-01' AND '2026-08-31';

-- 6. Clientes sin compras en los últimos 6 meses
SELECT c.nombre, c.correo
FROM clientes c
WHERE NOT EXISTS (
    SELECT 1
    FROM ventas v
    WHERE v.id_cliente = c.id
      AND v.fecha_venta >= CURRENT_DATE - INTERVAL '6 months'
);