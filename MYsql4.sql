/* CREACIÓN DE LA BASE DE DATOS */
DROP DATABASE IF EXISTS BDPolleria;
CREATE DATABASE BDPolleria;
USE BDPolleria;

/* TABLA CLIENTE */
CREATE TABLE TCliente(
    IdCliente INT AUTO_INCREMENT PRIMARY KEY,
    TipoDocumento VARCHAR(20),
    NroDocumento VARCHAR(20),
    Nombres VARCHAR(100),
    Paterno VARCHAR(100),
    Materno VARCHAR(100),
    Celular VARCHAR(9)
);

/* TABLA CATEGORIA */
CREATE TABLE TCategoria(
    IdCategoria INT AUTO_INCREMENT PRIMARY KEY,
    NombreCategoria VARCHAR(100)
);

/* TABLA PRODUCTO */
CREATE TABLE TProducto(
    IdProducto INT AUTO_INCREMENT PRIMARY KEY,
    NombreProducto VARCHAR(100),
    Precio DECIMAL(10,2),
    IdCategoria INT,
    FOREIGN KEY(IdCategoria) REFERENCES TCategoria(IdCategoria)
);

/* INSERT */

/* Datos para Categoria */
INSERT INTO TCategoria VALUES
(NULL, 'Bebidas'),
(NULL, 'Platos');

/* Datos para Producto */
INSERT INTO TProducto VALUES
(NULL, 'Pollo a la Brasa', 45, 2),
(NULL, 'Inka Cola', 5, 1);

/* CONSULTAS */
SELECT * FROM TCategoria;
SELECT * FROM TProducto;
