CREATE DATABASE sistemaDVR;
USE sistemaDVR;

CREATE TABLE Categoria (
    id_categoria int AUTO_INCREMENT,
    nombre varchar(50),
    descripcion varchar(250),
    CONSTRAINT Categoria_pk PRIMARY KEY (id_categoria)
);

CREATE TABLE Clientes (
    dni int,
    nombre varchar(50),
    telefonos char(9),
    calle varchar(30),
    distrito varchar(30),
    provincia varchar(30),
    CONSTRAINT Clientes_pk PRIMARY KEY (dni)
);

CREATE TABLE Producto (
    id_producto int AUTO_INCREMENT,
    nombre varchar(50),
    categoria varchar(50),
    Venta_detalle_id int,
    Categoria_id_categoria int,
    Proveedores_ruc int,
    CONSTRAINT Producto_pk PRIMARY KEY (id_producto)
);

CREATE TABLE Proveedores (
    ruc int,
    nombre varchar(50),
    direccion varchar(70),
    telefono char(9),
    pagina_web varchar(100),
    CONSTRAINT Proveedores_pk PRIMARY KEY (ruc)
);

CREATE TABLE Venta_detalle (
    id int AUTO_INCREMENT,
    id_producto int,
    id_venta int,
    monto int,
    Ventas_id_venta int,
    CONSTRAINT Venta_detalle_pk PRIMARY KEY (id)
);

CREATE TABLE Ventas (
    id_venta int AUTO_INCREMENT,
    fecha date,
    cliente int,
    Monto decimal(10,2),
    Clientes_dni int,
    CONSTRAINT Ventas_pk PRIMARY KEY (id_venta)
);

-- Foreign Key Constraints
ALTER TABLE Producto ADD CONSTRAINT Producto_Categoria_fk FOREIGN KEY (Categoria_id_categoria)
    REFERENCES Categoria (id_categoria);

ALTER TABLE Producto ADD CONSTRAINT Producto_Proveedores_fk FOREIGN KEY (Proveedores_ruc)
    REFERENCES Proveedores (ruc);

ALTER TABLE Producto ADD CONSTRAINT Producto_Venta_detalle_fk FOREIGN KEY (Venta_detalle_id)
    REFERENCES Venta_detalle (id);

ALTER TABLE Venta_detalle ADD CONSTRAINT Venta_detalle_Ventas_fk FOREIGN KEY (Ventas_id_venta)
    REFERENCES Ventas (id_venta);

ALTER TABLE Ventas ADD CONSTRAINT Ventas_Clientes_fk FOREIGN KEY (Clientes_dni)
    REFERENCES Clientes (dni);
    
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