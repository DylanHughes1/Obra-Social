DROP DATABASE IF EXISTS sistema;

CREATE DATABASE IF NOT EXISTS sistema;

USE sistema;

CREATE TABLE IF NOT EXISTS Empleado(
	legajo SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    apellido VARCHAR(128) NOT NULL, 
    nombre VARCHAR(128) NOT NULL, 
    tipo_doc VARCHAR(20) NOT NULL, 
    direccion VARCHAR(128) NOT NULL, 
    telefono VARCHAR(128) NOT NULL, 
    cargo VARCHAR(128) NOT NULL, 
    nro_doc INT UNSIGNED NOT NULL,
    password VARCHAR(32) NOT NULL, #almacenar por hash MD5
    PRIMARY KEY(legajo)
)ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS Cliente(
	nro_cliente SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    apellido VARCHAR(128) NOT NULL, 
    nombre VARCHAR(128) NOT NULL, 
    tipo_doc VARCHAR(20) NOT NULL, 
    direccion VARCHAR(128) NOT NULL,
    telefono VARCHAR(128) NOT NULL,
    nro_doc INT UNSIGNED NOT NULL,
    fecha_nac DATE NOT NULL,
    PRIMARY KEY(nro_cliente)
)ENGINE=INNODB;

#--------------------------------------------------------------------------------------
DROP USER 'admin'@'localhost';
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON sistema.* TO 'admin'@'localhost' WITH GRANT OPTION;
    
DROP USER 'empleado'@'%';
CREATE USER 'empleado'@'%' IDENTIFIED BY 'empleado';
GRANT SELECT ON sistema.empleado TO 'empleado'@'%';
GRANT SELECT,UPDATE,INSERT ON sistema.Cliente TO 'empleado'@'%';  

DROP USER 'atm'@'%';
CREATE USER 'atm'@'%' IDENTIFIED BY 'atm';

SELECT legajo,password FROM Empleado;