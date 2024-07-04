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