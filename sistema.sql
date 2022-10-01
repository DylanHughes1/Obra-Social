DROP DATABASE IF EXISTS sistema;

CREATE DATABASE IF NOT EXISTS sistema;

USE sistema;

CREATE TABLE IF NOT EXISTS Empleado(
	legajo INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username CHAR(32) NOT NULL,
    password CHAR(32) NOT NULL,
    apellido VARCHAR(128) NOT NULL, 
    nombre VARCHAR(128) NOT NULL, 
    direccion VARCHAR(128) NOT NULL, 
    telefono VARCHAR(128) NOT NULL, 
    nro_doc INT UNSIGNED NOT NULL,
    fecha_nac DATE NOT NULL,
    correo VARCHAR(128) NOT NULL, 
    PRIMARY KEY(legajo)
)ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS Plan(
	nro_plan INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nombre CHAR(32),
    reintegro DECIMAL(5,2),
    CONSTRAINT pk_Plan PRIMARY KEY(nro_plan)
)ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS Cliente(
	nro_cliente INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username CHAR(32) NOT NULL,
    password CHAR(32) NOT NULL,
    apellido VARCHAR(128) NOT NULL, 
    nombre VARCHAR(128) NOT NULL, 
    fecha_nac DATE NOT NULL,
    direccion VARCHAR(128) NOT NULL,
    telefono VARCHAR(128) NOT NULL,
    correo VARCHAR(128) NOT NULL, 
    nro_doc INT UNSIGNED NOT NULL,
    nro_plan INT UNSIGNED NOT NULL,

    CONSTRAINT pk_Cliente PRIMARY KEY(nro_cliente)

    CONSTRAINT FK_Cliente_Plan,
    FOREIGN KEY (nro_plan) REFERENCES Plan(nro_plan)
    ON DELETE RESTRICT ON UPDATE CASCADE
    
)ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS Familiar(
    nro_familiar INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nro_cliente INT  UNSIGNED,
    apellido VARCHAR(128) NOT NULL, 
    nombre VARCHAR(128) NOT NULL, 
    fecha_nac DATE NOT NULL,
    direccion VARCHAR(128) NOT NULL,
    telefono VARCHAR(128) NOT NULL,
    CONSTRAINT pk_Familiar PRIMARY KEY(nro_familiar),

    CONSTRAINT FK_Familiar_ Cliente
    FOREIGN KEY (nro_cliente) REFERENCES Cliente(nro_cliente)
        ON DELETE RESTRICT ON UPDATE CASCADE

)

CREATE TABLE IF NOT EXISTS Servicio(
    nro_servicio INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nombre CHAR(32),
    CONSTRAINT pk_Servicio PRIMARY KEY(nro_servicio)
)

CREATE TABLE IF NOT EXISTS Servicio_plan(
    id_servicio_plan INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nro_servicio INT UNSIGNED,
    nro_plan INT UNSIGNED,
    
    FOREIGN KEY (nro_servicio) REFERENCES Servicio(nro_servicio)
        ON DELETE RESTRICT ON UPDATE CASCADE,
     FOREIGN KEY (nro_plan) REFERENCES Plan(nro_plan)
        ON DELETE RESTRICT ON UPDATE CASCADE

)

CREATE TABLE IF NOT EXISTS Administrador(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username CHAR(32) NOT NULL,
    password VARCHAR(32) NOT NULL,
    PRIMARY KEY(id)
)ENGINE=INNODB;

#--------------------------------------------------------------------------------------
/*falta cambiar*/
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


#--------------Empleado (legajo, apellido, nombre, edad, direccion, telefono, nro_doc, fecha_nac, correo, password)-------------#
INSERT INTO Empleado VALUES (1,"Maslein", "Ana", "Salliquelo 2009","0112377489", 44567789,"1999/11/05" , "anamaslein@gmail.com",md5('Cl123'));
INSERT INTO Empleado VALUES (2,"Hughes", "Leonardo", "Colon 230", "0117822983", 42556333, "1945/09/09","leohughes@gmail.com",md5('456GHDJ'));
INSERT INTO Empleado VALUES (3,"Gonzalo", "Pedro", "DNI", "Roca 1500", "291674523", 10287364, "1989/03/02","gonzalopedro@yahoo.com", md5('AGJEU64'));
INSERT INTO Empleado VALUES (4,"Villafaña", "Rocio", "DNI", "Tucuman 567", "296786543", 32897654, "2002/07/01","rovillafania@gmail.com", md5('F56892'));
INSERT INTO Empleado VALUES (5,"Alvarez", "Selene", "DNI", "Viamonte 120", "298765432", 221987365, "2000/07/02","selenealv@gmail.com",md5('C66728'));

#--Plan (nro_plan,nombre,reintegro)----#
INSERT INTO Plan VALUES (1,"A",70.05);
INSERT INTO Plan VALUES (2,"B",20.95);

#--------------Cliente (nro_cliente, username, password, apellido, nombre, fecha_nac, direccion, telefono, correo, nro_doc, nro_plan )-------------#
INSERT INTO Cliente VALUES (1,jorgito123,md5('45678GH'),"Lopez", "Jorge", "1980/03/05", "Sarmiento 245", "2915667893", "jorgelop33@gmail.com",34567892,1);
INSERT INTO Cliente VALUES (2,guille123,md5('KDWOE4'),"Perez", "Guillermo", "2000/10/10","Alem 3590", "2917856343", "guillermop45@gmail.com",42189488,2);
INSERT INTO Cliente VALUES (3,cami,md5('GHJKDW67'),"Arena", "Camila", "1990/07/23","Viamonte 201", "0114567892", "camiarena@gmail.com"20678945,2);
INSERT INTO Cliente VALUES (4,nombreRandom,md5('78DEHI8'),"Torres", "Sofia", "1986/05/09", "Terrada 50", "2916735489", "sofitorres@gmail.com",45678936,2);
INSERT INTO Cliente VALUES (5,matiR,md5('4567UNHJ'),"Rodriguez", "Matias", "1970/12/12","Gorriti 302", "0116578635", "matirod78@gmail.com",26783645,1);

#------ Familiar (nro_familiar,nro_cliente,apellido, nombre, fecha_nac, direccion, telefono) --------------------#
#--INSERT INTO Familiar VALUES (1,1,'Lopez','juan','1980/03/05');

#-----Servicio (nro_servicio,nombre)

#----servicio_plan (nro_servicio,nro_plan)

#---Administrador (id,username,password)






