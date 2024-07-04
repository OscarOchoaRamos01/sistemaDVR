INSERT INTO Categoria (nombre, descripcion) VALUES
('Electrónica', 'Productos electrónicos y gadgets'),
('Ropa', 'Vestimenta y accesorios'),
('Alimentos', 'Comestibles y bebidas'),
('Hogar', 'Artículos para el hogar y decoración'),
('Juguetes', 'Juguetes y juegos para niños');

INSERT INTO Clientes (dni, nombre, telefonos, calle, distrito, provincia) VALUES
(12345679, 'Juan Perez', '987654321', 'Calle 1', 'Distrito 1', 'Provincia 1'),
(23456780, 'Maria Lopez', '976543210', 'Calle 2', 'Distrito 2', 'Provincia 2'),
(34567891, 'Carlos Ruiz', '965432109', 'Calle 3', 'Distrito 3', 'Provincia 3'),
(45678902, 'Ana Torres', '954321098', 'Calle 4', 'Distrito 4', 'Provincia 4'),
(56789013, 'Lucia Fernandez', '943210987', 'Calle 5', 'Distrito 5', 'Provincia 5');

INSERT INTO Proveedores (ruc, nombre, direccion, telefono, pagina_web) VALUES
(101010101, 'Proveedor 1', 'Direccion 1', '987654321', 'www.proveedor1.com'),
(202020202, 'Proveedor 2', 'Direccion 2', '976543210', 'www.proveedor2.com'),
(303030303, 'Proveedor 3', 'Direccion 3', '965432109', 'www.proveedor3.com'),
(404040404, 'Proveedor 4', 'Direccion 4', '954321098', 'www.proveedor4.com'),
(505050505, 'Proveedor 5', 'Direccion 5', '943210987', 'www.proveedor5.com');

INSERT INTO Ventas (fecha, cliente, Monto, Clientes_dni) VALUES
('2024-01-01', 12345679, 100.00, 12345679),
('2024-02-01', 23456780, 200.00, 23456780),
('2024-03-01', 34567891, 300.00, 34567891),
('2024-04-01', 45678902, 400.00, 45678902),
('2024-05-01', 56789013, 500.00, 56789013);

INSERT INTO Venta_detalle (id_producto, id_venta, monto, Ventas_id_venta) VALUES
(1, 1, 100, 1),
(2, 2, 200, 2),
(3, 3, 300, 3),
(4, 4, 400, 4),
(5, 5, 500, 5);

INSERT INTO Producto (nombre, categoria, Venta_detalle_id, Categoria_id_categoria, Proveedores_ruc) VALUES
('Producto 1', 'Electrónica', 1, 1, 101010101),
('Producto 2', 'Ropa', 2, 2, 202020202),
('Producto 3', 'Alimentos', 3, 3, 303030303),
('Producto 4', 'Hogar', 4, 4, 404040404),
('Producto 5', 'Juguetes', 5, 5, 505050505);