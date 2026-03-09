/* CREACIÓN DE LA BASE DE DATOS */
DROP DATABASE IF EXISTS BDGimnasio;
CREATE DATABASE BDGimnasio;
USE BDGimnasio;

/* TABLA CLIENTE */
CREATE TABLE TCliente(
    IdCliente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    Genero VARCHAR(10),
    FechaNacimiento DATE
);

/* TABLA DISCIPLINA */
CREATE TABLE TDisciplina(
    IdDisciplina INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100)
);

/* TABLA ASISTENCIA */
CREATE TABLE TAsistencia(
    IdAsistencia INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE,
    HoraEntrada TIME,
    IdCliente INT,
    IdDisciplina INT,
    FOREIGN KEY(IdCliente) REFERENCES TCliente(IdCliente),
    FOREIGN KEY(IdDisciplina) REFERENCES TDisciplina(IdDisciplina)
);

/* INSERT */

/* Datos para Cliente */
INSERT INTO TCliente VALUES
(NULL, 'Carlos Vega', 'M', '2000-01-10'),
(NULL, 'Ana Ruiz', 'F', '1998-04-22');

/* Datos para Disciplina */
INSERT INTO TDisciplina VALUES
(NULL, 'Crossfit'),
(NULL, 'Spinning');

/* Datos para Asistencia */
INSERT INTO TAsistencia VALUES
(NULL, '2026-03-05', '07:00', 1, 1),
(NULL, '2026-03-05', '08:00', 2, 2);

/* CONSULTAS */
SELECT * FROM TCliente;
SELECT * FROM TDisciplina;
SELECT * FROM TAsistencia;
