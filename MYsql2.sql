-- BASE DE DATOS SUPER GIROS
-- MODELO 2
-- 06/03/26

DROP DATABASE IF EXISTS BDSuperGiros;

CREATE DATABASE BDSuperGiros;

USE BDSuperGiros;

-- TABLA CLIENTE
CREATE TABLE TCliente
(
    IdCliente INT AUTO_INCREMENT PRIMARY KEY,
    TipoDocumento VARCHAR(20) NOT NULL,
    NroDocumento VARCHAR(20) NOT NULL,
    Nombres VARCHAR(100) NOT NULL,
    Paterno VARCHAR(100) NOT NULL,
    Materno VARCHAR(100) NOT NULL
);

-- TABLA BANCO
CREATE TABLE TBanco
(
    IdBanco INT AUTO_INCREMENT PRIMARY KEY,
    NombreBanco VARCHAR(100) NOT NULL,
    PaginaWeb VARCHAR(100)
);

-- TABLA CUENTA
CREATE TABLE TCuenta
(
    IdCuenta INT AUTO_INCREMENT PRIMARY KEY,
    NumeroCuenta VARCHAR(20),
    Saldo DECIMAL(10,2),
    IdBanco INT,
    IdCliente INT,

    CONSTRAINT FK_Banco_Cuenta
    FOREIGN KEY(IdBanco)
    REFERENCES TBanco(IdBanco),

    CONSTRAINT FK_Cliente_Cuenta
    FOREIGN KEY(IdCliente)
    REFERENCES TCliente(IdCliente)
);

-- TABLA EMPLEADO
CREATE TABLE TEmpleado
(
    IdEmpleado INT AUTO_INCREMENT PRIMARY KEY,
    TipoDocumento VARCHAR(20),
    NroDocumento VARCHAR(20),
    Nombres VARCHAR(100),
    Paterno VARCHAR(100),
    Materno VARCHAR(100),
    Celular VARCHAR(9)
);

-- TABLA OPERACION
CREATE TABLE TOperacion
(
    IdOperacion INT AUTO_INCREMENT PRIMARY KEY,
    TipoOperacion VARCHAR(50)
);
