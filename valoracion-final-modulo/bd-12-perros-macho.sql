-- creando base de datos
CREATE DATABASE Peluqueria_canina;

use Peluqueria_canina;

-- creando las tablas
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
-- insertando datos de dueños
INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES
(303030, 'Juan', 'Perez', '15465600', 'Calle 1 256');
INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES
(223654, 'Florencia', 'Martinez', '15228961', 'Calle 5 1841');
INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES
(343434, 'Pedro', 'Lopez', '15154701', 'Calle 2 891');
INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES
(214587, 'Jose', 'Martinez', '15478964', 'Calle 21 1241');

-- insertando datos de perros
INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES
(111, 'Pancho', '2010-02-24', 'Macho', 303030);
INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES
(163, 'Rulo', '2022-11-07', 'Macho', 223654);
INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES
(512, 'Manchita', '2021-07-05', 'Hembra', 343434);
INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES
(222, 'Floppy', '2015-07-17', 'Hembra', 343434);
INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES
(240, 'Tito', '2021-05-07', 'Macho', 214587);
INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES
(252, 'Rocky', '2020-02-21', 'Macho', 303030);


-- punto 12: Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022.
SELECT * FROM perro
WHERE perro.Fecha_nac > '2020-01-01' AND perro.Fecha_nac < '2022-12-31' AND perro.Sexo = 'Macho';