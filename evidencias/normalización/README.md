## EVIDENCIAS DE EJECUCIÓN DE SCRIPTS EN POSTGRES Y MODELADO ENTIDAD RELACIÓN 


## 1 MODELO ENTIDAD RELACIÓN 
![alt text](image.png)

## TECH_ZONE_STORE

### Entidades

1. **CATEGORIAS**
   - `id_categoria (PK)`: Identificador único.
   - `nombre`: Nombre de la categoría.
   - `descripcion`: Descripción de la categoría.

2. **PROVEEDORES**
   - `id_proveedor (PK)`: Identificador único.
   - `nombre`: Nombre del proveedor.
   - `telefono`: Teléfono de contacto.
   - `correo`: Correo electrónico.
   - `direccion`: Dirección del proveedor.

3. **PRODUCTOS**
   - `id_producto (PK)`: Identificador único.
   - `nombre`: Nombre del producto.
   - `precio_actual`: Precio actual.
   - `stock_disponible`: Cantidad en inventario.
   - `id_categoria (FK)`: Relación con `CATEGORIAS`.
   - `id_proveedor (FK)`: Relación con `PROVEEDORES`.

4. **CLIENTES**
   - `id_cliente (PK)`: Identificador único.
   - `nombre`: Nombre del cliente.
   - `correo`: Correo electrónico.
   - `telefono`: Teléfono de contacto.

5. **VENTAS**
   - `id_venta (PK)`: Identificador único.
   - `fecha_venta`: Fecha de la venta.
   - `id_cliente (FK)`: Relación con `CLIENTES`.

6. **DETALLE_VENTAS**
   - `id_detalle_ventas (PK)`: Identificador único.
   - `id_venta (FK)`: Relación con `VENTAS`.
   - `id_producto (FK)`: Relación con `PRODUCTOS`.
   - `cantidad`: Cantidad vendida.
   - `precio_unitario_venta`: Precio aplicado en la venta.

### Relaciones

- **CATEGORIAS** → **PRODUCTOS**: Una categoría tiene varios productos.
- **PROVEEDORES** → **PRODUCTOS**: Un proveedor suministra varios productos.
- **CLIENTES** → **VENTAS**: Un cliente puede realizar varias ventas.
- **VENTAS** → **DETALLE_VENTAS**: Una venta tiene varios detalles.
- **PRODUCTOS** → **DETALLE_VENTAS**: Un producto puede aparecer en varios detalles.

### Notas
- El total de una venta se calcula como `SUM(cantidad × precio_unitario_venta)`.
- El precio unitario de cada producto en una venta se guarda en `DETALLE_VENTAS` para conservar el historial.
