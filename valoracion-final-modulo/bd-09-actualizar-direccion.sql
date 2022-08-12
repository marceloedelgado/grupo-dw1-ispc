/*Punto 1. Crear base de datos y tablas*/
CREATE DATABASE peluqueriacanina;
CREATE TABLE peluqueriacanina.Dueno (
DNI int(15) PRIMARY KEY NOT NULL,
Nombre varchar(30) NOT NULL, 
Apellido varchar(25) NOT NULL, 
Telefono int(20) NOT NULL, 
Direccion varchar(50)
);

CREATE TABLE peluqueriacanina.Perro(
ID_Perro int(100) PRIMARY KEY NOT NULL auto_increment, 
Nombre varchar(30) NOT NULL, 
Fecha_nacimiento date NULL, 
Sexo varchar(15) NOT NULL,
DNI_Dueno int,
constraint fk_DNI_Dueno FOREIGN KEY(DNI_Dueno) REFERENCES Dueno(DNI)
);


CREATE TABLE peluqueriacanina.Historial(
ID_Historial int(100) PRIMARY KEY  NOT NULL auto_increment,
Fecha DATETIME NOT NULL,
Descripcion varchar(200) NULL, 
Monto DOUBLE NOT NULL,
Perro int,
constraint fk_Perro FOREIGN KEY(Perro) REFERENCES Perro(ID_Perro) 
);

/*Punto 2. Agregar nuevo animal y dueño asociado*/

INSERT INTO peluqueriacanina.Dueno (
DNI, Nombre, Apellido, Telefono, Direccion)
VALUES(31583246, "Sabrina", "Cejas", 35134862, "Chile 455");

INSERT INTO peluqueriacanina.Perro (
Nombre, Fecha_nacimiento, Sexo, DNI_dueno)
VALUES("Rumi", "2013-10-24", "Masculino", 31583246);

/*Punto 9. Actualizar la dirección del dueño*/
SELECT*FROM peluqueriacanina.Dueno; #Consulto los datos de los dueños

UPDATE peluqueriacanina.Dueno
SET Direccion = "Libertad 123"
WHERE DNI =31583246;

SELECT*FROM peluqueriacanina.Dueno; #Consulto los datos del dueño para verificar que cambió la dirección



