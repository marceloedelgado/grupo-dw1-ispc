CREATE DATABASE Peluqueria_Perros;

use Peluqueria_Perros;

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

-- Insertando Datos a las Tablas Dueno y Perro --

INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES
(50819786, 'Pedro', 'Caballero', '3764738790', 'Barrio Parque Calle Castex Nº 3293');

INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES
(37, 'Firulais', '2017-05-25', 'Macho', 50819786);

INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES
(27934987, 'Marcelo', 'Delgado', '27934987', 'Merlo 1834');

INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES
(34, 'Choco', '2019-02-10', 'Macho', 27934987);

INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES
(28983097, 'Pedro', 'Parker', '183739933', 'Park Av. 13743 NYC');

INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES
(23, 'Lassie', '2012-04-15', 'Hembra', 28983097);

-- 5). Realice una consulta multitabla que arroje el nombre de todos los perros cuyos dueños se llaman Pedro --

SELECT p.Nombre, d.Nombre FROM perro p
INNER JOIN dueno d ON p.DNI_dueno = d.DNI
WHERE d.nombre = 'Pedro'
