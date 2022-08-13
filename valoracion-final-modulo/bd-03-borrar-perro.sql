-- PUNTO 1
CREATE DATABASE Peluqueria_canina;

use Peluqueria_canina;

-- PUNTO 2
CREATE TABLE Dueno
(
DNI int primary key not null,
Nombre varchar(25) not null,
Apellido varchar(25) not null,
Telefono varchar(15),
Direccion varchar(50)
);

CREATE TABLE Perro
(
ID_Perro int primary key not null,
Nombre varchar(25) not null,
Fecha_nac date,
Sexo varchar(6),
DNI_dueno int,
  constraint fk_DNI_dueno FOREIGN KEY(DNI_dueno) REFERENCES Dueno(DNI)
);

CREATE TABLE Historial
(
ID_Historial int primary key not null,
Fecha date,
Descripcion varchar(100),
Monto float,
Perro int,
constraint fk_Perro FOREIGN KEY(Perro) REFERENCES Perro(ID_Perro) 
);

INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES
(303030, 'Juan', 'Perez', '15465600', 'Calle 1 256');

INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES
(111, 'Pancho', '2010-02-24', 'Macho', 303030);

INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES
(343434, 'Pedro', 'Lopez', '15154701', 'Calle 2 891');

INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES
(222, 'Floppy', '2015-07-17', 'Hembra', 343434);

INSERT INTO historial (ID_Historial, Fecha, Descripcion, Monto, Perro) VALUES
(5, '2011-12-09', 'aplicacion de vacunas', 70.00, 111);

INSERT INTO historial (ID_Historial, Fecha, Descripcion, Monto, Perro) VALUES
(1258, '2022-08-11', 'atencion por otitis', 100.00, 222);

-- PUNTO 3
SELECT Fecha, Perro FROM historial
INNER JOIN perro ON perro.ID_Perro = historial.perro
ORDER BY Fecha ASC LIMIT 1;

DELETE FROM perro 
WHERE ID_Perro = 111;