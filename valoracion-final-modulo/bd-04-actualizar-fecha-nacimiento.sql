CREATE DATABASE peluqueria_perros;

CREATE TABLE Dueno
(
DNI int primary key not null,
Nombre varchar(20) not null,
Apellido varchar(20) not null,
Telefono int(15),
Direccion varchar(25)
);
 
CREATE TABLE Perro 
(
ID_Perro int primary key not null,
Nombre varchar (15) not null,
Fecha_nac date,
Sexo varchar(6),
DNI_Dueno int,
constraint fk_DNI_Dueno FOREIGN KEY(DNI_Dueno) REFERENCES Dueno(DNI)
);

INSERT INTO Dueno (DNI,Nombre,Apellido,Telefono,Direccion) VALUES
(23145667,'Alberto','Castro','1162345678','Acevedo 524');

INSERT INTO Perro (ID_Perro,Nombre,Fecha_nac,Sexo,DNI_dueno) VALUES
(4142,'Dylan','2018-02-14','Macho',23145667);

INSERT INTO Dueno (DNI,Nombre,Apellido,Telefono,Direccion) VALUES
(24512647,'Cristina','Sarapura','1135325597','Alvear 1560');

INSERT INTO Perro (ID_Perro,Nombre,Fecha_nac,Sexo,DNI_dueno) VALUES
(3456,'Fani','2019-10-04','Hembra',24512647);

INSERT INTO Dueno (DNI,Nombre,Apellido,Telefono,Direccion) VALUES
(27515422,'Mauricio','Guantay','3511234567','Belgrano 4200');

INSERT INTO Perro (ID_Perro,Nombre,Fecha_nac,Sexo,DNI_dueno) VALUES
(2342,'Draco','2015-08-21','Macho',27515422);

UPDATE Perro SET Fecha_Nac = '2018-03-20' WHERE DNI_Dueno = 23145667;

SELECT*FROM Perro;
