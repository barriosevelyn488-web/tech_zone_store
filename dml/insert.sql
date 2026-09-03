INSERT INTO categorias (nombre, descripcion) VALUES
('Computación', 'Equipos de cómputo'),
('Telefonía', 'Teléfonos inteligentes'),
('Accesorios', 'Accesorios tecnológicos'),
('Componentes', 'Partes de computadora'),
('Audio', 'Productos de sonido'),
('Gaming', 'Productos para videojuegos');

INSERT INTO proveedores (nombre, telefono, correo, direccion) VALUES
('Nexa Distribuciones', '5550-1001', 'ventas@nexa.com', 'Zona 12'),
('Móvil Centro', '5550-1002', 'contacto@movil.com', 'Zona 10'),
('Orbital Tech', '5550-1003', 'pedidos@orbital.com', 'Zona 9'),
('Componentes GT', '5550-1004', 'ventas@componentes.com', 'Zona 1'),
('Audio Digital', '5550-1005', 'contacto@audio.com', 'Zona 4'),
('Game Planet', '5550-1006', 'ventas@gameplanet.com', 'Zona 7');

INSERT INTO productos (nombre, precio, stock, id_categoria, id_proveedor) VALUES
('Laptop Aster 14', 850.00, 3, 1, 1),
('Smartphone Helio One', 420.00, 4, 2, 2),
('Mouse Vector M2', 18.00, 34, 3, 3),
('Memoria RAM 16GB', 52.00, 18, 4, 4),
('Auriculares Pulse Beam', 45.00, 20, 5, 5),
('Teclado Prisma K8', 65.00, 15, 6, 6);

INSERT INTO clientes (nombre, correo, telefono) VALUES
('Marina Salvatierra', 'marina@email.com', '5551-2084'),
('Diego Cifuentes', 'diego@email.com', '5554-7190'),
('Sofía Arévalo', 'sofia@email.com', '5558-3621'),
('Carlos Mendoza', 'carlos@email.com', '5552-1480'),
('Elena Rosales', 'elena@email.com', '5556-2874'),
('Javier Morales', 'javier@email.com', '5553-9652');

INSERT INTO ventas (fecha_venta, id_cliente) VALUES
('2026-08-03 10:30:00', 1),
('2026-08-07 14:15:00', 2),
('2026-08-15 09:45:00', 3),
('2026-07-05 11:20:00', 1),
('2026-07-20 16:00:00', 4),
('2026-02-16 14:50:00', 5);

INSERT INTO detalle_ventas (id_venta, id_producto, cantidad, precio_unitario) VALUES
(1, 1, 1, 850.00),
(2, 2, 1, 420.00),
(3, 3, 2, 18.00),
(4, 1, 1, 850.00),
(5, 4, 1, 52.00),
(6, 5, 1, 45.00);