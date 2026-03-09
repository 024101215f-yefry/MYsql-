/* CREACIÓN DE LA BASE DE DATOS */
DROP DATABASE IF EXISTS BDMacSalud;
CREATE DATABASE BDMacSalud;
USE BDMacSalud;

/* ENFERMERO */
CREATE TABLE TEnfermero(
    IdEnfermero INT AUTO_INCREMENT PRIMARY KEY,
    Nombres VARCHAR(100),
    Genero VARCHAR(10),
    FechaNacimiento DATE
);

/* AMBIENTE */
CREATE TABLE TAmbiente(
    IdAmbiente INT AUTO_INCREMENT PRIMARY KEY,
    Numero VARCHAR(10),
    Ubicacion VARCHAR(100)
);

/* INSERT */

/* Datos para Enfermero */
INSERT INTO TEnfermero VALUES
(NULL, 'Ana Torres', 'F', '1995-05-10'),
(NULL, 'Luis Perez', 'M', '1992-02-20');

/* Datos para Ambiente */
INSERT INTO TAmbiente VALUES
(NULL, '101', 'Primer Piso'),
(NULL, '202', 'Segundo Piso');

/* CONSULTAS */
SELECT * FROM TEnfermero;
SELECT * FROM TAmbiente;
