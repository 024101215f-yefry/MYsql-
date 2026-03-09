/* CREACIÓN DE LA BASE DE DATOS */
DROP DATABASE IF EXISTS BDElectroTrack;
CREATE DATABASE BDElectroTrack;
USE BDElectroTrack;

/* PROVEEDOR */
CREATE TABLE TProveedor(
    IdProveedor INT AUTO_INCREMENT PRIMARY KEY,
    RazonSocial VARCHAR(100),
    Direccion VARCHAR(200)
);

/* ELECTRODOMESTICO */
CREATE TABLE TElectrodomestico(
    IdElectro INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    Marca VARCHAR(100),
    PrecioVenta DECIMAL(10,2)
);

/* INSERT */

/* Datos para Proveedor */
INSERT INTO TProveedor VALUES
(NULL, 'LG PERU', 'Lima'),
(NULL, 'Samsung Peru', 'Lima');

/* Datos para Electrodomestico */
INSERT INTO TElectrodomestico VALUES
(NULL, 'Refrigeradora', 'LG', 2500),
(NULL, 'Televisor', 'Samsung', 1800);

/* CONSULTAS */
SELECT * FROM TProveedor;
SELECT * FROM TElectrodomestico;
