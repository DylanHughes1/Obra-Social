DROP DATABASE IF EXISTS sistema;

CREATE DATABASE IF NOT EXISTS sistema;

USE sistema;

CREATE TABLE IF NOT EXISTS Empleado(
	legajo INT UNSIGNED NOT NULL AUTO_INCREMENT,
    apellido VARCHAR(128) NOT NULL, 
    nombre VARCHAR(128) NOT NULL, 
    tipo_doc VARCHAR(20) NOT NULL, 
    direccion VARCHAR(128) NOT NULL, 
    telefono VARCHAR(128) NOT NULL, 
    nro_doc INT UNSIGNED NOT NULL,
    password VARCHAR(32) NOT NULL,
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



#------------------------------CARGA DE DATOS-------------------------------------#

#--------------Cliente (nro_cliente, apellido, nombre, tipo_doc, direccion, telefono, nro_doc, fecha_nac)-------------#
INSERT INTO Cliente VALUES (01,"Lopez", "Jorge", "DNI", "Sarmiento 245", "2915667893", 34567892, "1980/03/05");
INSERT INTO Cliente VALUES (02,"Perez", "Guillermo", "DNI", "Alem 3590", "2917856343", 42189488, "2000/10/10");
INSERT INTO Cliente VALUES (03,"Arena", "Camila", "DNI", "Viamonte 201", "0114567892", 20678945, "1990/07/23");
INSERT INTO Cliente VALUES (04,"Torres", "Sofia", "DNI", "Terrada 50", "2916735489", 45678936, "1986/05/09");
INSERT INTO Cliente VALUES (05,"Rodriguez", "Matias", "DNI", "Gorriti 302", "0116578635", 26783645, "1970/12/12");

#--------------Empleado (legajo, apellido, nombre, tipo_doc, direccion, telefono, nro_doc, password)-------------#
INSERT INTO Empleado VALUES (121943,"Maslein", "Ana", "DNI", "Salliquelo 2009", "0112377489", 44567789, 123456);
INSERT INTO Empleado VALUES (108976,"Hughes", "Leonardo", "DNI", "Colon 230", "0117822983", 42556333, 123234534);
INSERT INTO Empleado VALUES (89027,"Gonzalo", "Pedro", "DNI", "Roca 1500", "291674523", 10287364, 765432345);
INSERT INTO Empleado VALUES (134579,"Villafaña", "Rocio", "DNI", "Tucuman 567", "296786543", 32897654, 6986534);
INSERT INTO Empleado VALUES (126667,"Alvarez", "Selene", "DNI", "Viamonte 120", "298765432", 221987365, 3243545);


