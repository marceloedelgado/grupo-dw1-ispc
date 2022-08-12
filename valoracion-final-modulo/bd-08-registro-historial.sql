/* Punto 1. Crear base de datos y tablas */
CREATE DATABASE pelucanina; 
USE pelucanina;
CREATE TABLE Dueno (
DNI int(15) PRIMARY KEY NOT NULL,
Nombre varchar(30) NOT NULL, 
Apellido varchar(25) NOT NULL, 
Telefono int(20) NOT NULL, 
Direccion varchar(50)
);

CREATE TABLE Perro(
ID_Perro int(100) PRIMARY KEY NOT NULL auto_increment, 
Nombre varchar(30) NOT NULL, 
Fecha_nacimiento date NULL, 
Sexo varchar(15) NOT NULL,
DNI_Dueno int,
constraint fk_DNI_Dueno FOREIGN KEY(DNI_Dueno) REFERENCES Dueno(DNI)
);


CREATE TABLE Historial(
ID_Historial int(100) PRIMARY KEY  NOT NULL auto_increment,
Fecha DATE NOT NULL,
Descripcion varchar(200) NULL, 
Monto DOUBLE NOT NULL,
ID_Perro int,
constraint fk_ID_Perro FOREIGN KEY(ID_Perro) REFERENCES Perro(ID_Perro) 
);

/*Punto 2. Nuevo animal y Dueño*/

INSERT INTO Dueno (
DNI, Nombre, Apellido, Telefono, Direccion)
VALUES(308049, "Juan", "Lopez", 32373465, "Brias 3458");

INSERT INTO Perro (ID_Perro, Nombre, Fecha_nacimiento, Sexo, DNI_dueno)
VALUES ('10','Stan', '2011-03-16', 'Macho', '308049');

/*Punto 8. Actualizar registro*/
INSERT INTO Historial (Fecha, Descripcion, Monto, ID_Perro)
VALUES('2011-03-16', 'Vacunas','2356','10')

