/* CREACIÓN DE LA BASE DE DATOS */
DROP DATABASE IF EXISTS BDFacturacion;
CREATE DATABASE BDFacturacion;
USE BDFacturacion;

/* TABLA CLIENTE */
CREATE TABLE TCliente(
    IdCliente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    Celular VARCHAR(9)
);

/* TABLA COMPROBANTE */
CREATE TABLE TComprobante(
    IdComprobante INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATETIME,
    Total DECIMAL(10,2),
    IdCliente INT,
    FOREIGN KEY(IdCliente) REFERENCES TCliente(IdCliente)
);

/* INSERT */

/* Datos para Cliente */
INSERT INTO TCliente VALUES
(NULL, 'Juan Perez', '987654321'),
(NULL, 'Maria Lopez', '912345678');

/* Datos para Comprobante */
INSERT INTO TComprobante VALUES
(NULL, NOW(), 120, 1),
(NULL, NOW(), 80, 2);

/* CONSULTAS */
SELECT * FROM TCliente;
SELECT * FROM TComprobante;
