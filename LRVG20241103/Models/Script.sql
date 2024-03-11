-- Creación de la base de datos LRVG20241103DB
CREATE DATABASE LRVG20241103DB;
USE LRVG20241103DB;

CREATE TABLE Clientes (
    id_cliente INT IDENTITY(1, 1) PRIMARY KEY,
    nombre VARCHAR(255),
    direccion VARCHAR(255),
    correo_electronico VARCHAR(100),
    fecha_nacimiento DATE,
    genero CHAR(1) -- 'M' para masculino, 'F' para femenino, etc.
    -- Otros campos adicionales que desees agregar
);

-- Tabla de Números de Teléfono
CREATE TABLE NumerosTelefonos (
    id_telefono INT IDENTITY(1, 1) PRIMARY KEY,
    id_cliente INT,
    numero_telefono VARCHAR(20),
    tipo_telefono VARCHAR(50), -- Ejemplo: "Casa", "Trabajo", "Móvil", etc.
    -- Otros campos adicionales que desees agregar
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);