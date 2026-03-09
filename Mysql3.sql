/* DROP DATABASE SI EXISTE */
DROP DATABASE IF EXISTS BDINPE;
CREATE DATABASE BDINPE;
USE BDINPE;

/* TABLA EMPLEADO */
CREATE TABLE TEmpleado(
    IdEmpleado INT AUTO_INCREMENT PRIMARY KEY,
    TipoDocumento VARCHAR(20),
    NroDocumento VARCHAR(20),
    Nombres VARCHAR(100),
    Paterno VARCHAR(100),
    Materno VARCHAR(100),
    Celular VARCHAR(9)
);

/* TABLA TURNO */
CREATE TABLE TTurno(
    IdTurno INT AUTO_INCREMENT PRIMARY KEY,
    NombreTurno VARCHAR(50),
    HoraInicio TIME,
    HoraFin TIME
);

/* TABLA ASISTENCIA */
CREATE TABLE TAsistencia(
    IdAsistencia INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE,
    HoraEntrada TIME,
    HoraSalida TIME,
    Asistio BOOLEAN,
    IdEmpleado INT,
    IdTurno INT,
    FOREIGN KEY(IdEmpleado) REFERENCES TEmpleado(IdEmpleado),
    FOREIGN KEY(IdTurno) REFERENCES TTurno(IdTurno)
);

/* INSERT */

/* Datos para Empleado */
INSERT INTO TEmpleado VALUES
(NULL,'DNI','74125896','Luis','Castro','Vargas','945678912'),
(NULL,'DNI','95135784','Ana','Flores','Diaz','934567891');

/* Datos para Turno */
INSERT INTO TTurno VALUES
(NULL,'Mañana','08:00','16:00'),
(NULL,'Noche','16:00','00:00');

/* Datos para Asistencia */
INSERT INTO TAsistencia VALUES
(NULL,'2026-03-01','08:05','16:00',TRUE,1,1),
(NULL,'2026-03-01','16:00','00:00',TRUE,2,2);

/* CONSULTAS DE VERIFICACIÓN */
SELECT * FROM TEmpleado;
SELECT * FROM TTurno;
SELECT * FROM TAsistencia;
