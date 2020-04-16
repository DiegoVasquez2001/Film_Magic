CREATE DATABASE film_magic;
USE film_magic;

CREATE TABLE Cliente(
Id_Cliente Varchar(25) Primary Key Not Null,
DPI_Cliente Varchar(70) Not Null,
Nombre_Cliente Varchar(60) Not Null,
Apellidos_Cliente Varchar(60) Not Null,
Telefono_Cliente Varchar(10) Not Null,
Correo_Cliente Varchar(100) Not Null,
Estatus_Cliente int
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE Categoria
(Id_Categoria Int Auto_Increment Primary Key Not Null,
Categoria Varchar(50) Not Null,
Estatus_Categoria int
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE Autor
(Id_Autor Int Auto_Increment Primary Key Not Null,
Autor_Nombre Varchar(100),
Anio_Autor int,
Estatus_Autor int
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE Clasificacion
(Id_Clasificacion Int Auto_Increment Primary Key Not Null,
Clasificacion_Cod Varchar(10),
Clasificacion_Desc Varchar(255)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE DVD
(Id_DVD Varchar(90) Primary Key Not Null,
Titulo_DVD Varchar(100),
FK_Categoria int,
FK_Autor int,
FK_Clasificacion int,
FOREIGN KEY (FK_Categoria) REFERENCES Categoria(Id_Categoria),
FOREIGN KEY (FK_Autor) REFERENCES Autor(Id_Autor),
FOREIGN KEY (FK_Clasificacion) REFERENCES Clasificacion(Id_Clasificacion)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;