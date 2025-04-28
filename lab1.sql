create database lab3;
use lab3;
create table direccion (
iddireccion int (11)primary key,
direccion varchar (45),
ciudad varchar (45),
pais varchar(45)
);
INSERT INTO direccion VALUES

(1, 'Calle 178', 'Ciudad A', 'GUATEMALA'),
(2, 'Calle 279', 'Ciudad B', 'MEXICO'),
(3, 'Calle 380', 'Ciudad C', 'ESPAÑA'),
(4, 'Calle 481', 'Ciudad D', 'PERU'),
(5, 'Calle 582', 'Ciudad E', 'ECUADOR');
select*from direccion ;

create table cliente(
idcliente int(11) primary key ,
nombre varchar (45),
apellido varchar (45),
edad int(11),
direccion_iddireccion int(11),
FOREIGN KEY (direccion_iddireccion) REFERENCES direccion(iddireccion)

);

INSERT INTO cliente VALUES
(1, 'Juliana', 'Perez', 25, 1),
(2, 'Carlos', 'zenin', 30, 2),
(3, 'Juliana', 'Martinez', 28, 3),
(4, 'Maria', 'Gomez', 22, 4),
(5, 'izuku', 'Diaz', 35, 5);

SELECT * FROM cliente WHERE Nombre = 'Juliana';

create table renta(
idrenta int(11) primary key ,
fecha_renta date,
fecha_entrega date,
inventario_idcopiapelicula int(11),
cliente_idcliente int (11),
empleado_idempleado int (11),
FOREIGN KEY (inventario_idcopiapelicula) REFERENCES inventario(idcopiapelicula),
FOREIGN KEY (cliente_idcliente) REFERENCES cliente(idcliente),
FOREIGN KEY (empleado_idempleado) REFERENCES empleado(idempleado)
 
);
INSERT INTO renta VALUES
(1, '2025-04-20', '2025-04-23', 1, 1),
(2, '2025-04-21', '2025-04-24', 2, 2),
(3, '2025-04-22', '2025-04-25', 3, 3),
(4, '2025-04-23', '2025-04-26', 4, 4),
(5, '2025-04-24', '2025-04-27', 5, 5);
select*from renta ;

create table inventario(
idcopiapelicula int(11) primary key,
pelicula_idpelicula int(11),
disponible tinyint(1),
 FOREIGN KEY (pelicula_idpelicula) REFERENCES peliculas(idpelicula)
 
);
select*from inventario ;
INSERT INTO inventario VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1);
create table peliculas(
idpelicula int (11)primary key,
nombre varchar (45),
duracion int(11),
descripcion text,
año int(11),
categoria_idcategoria int(11),
 FOREIGN KEY (Categoria_idCategoria) REFERENCES categoria(idCategoria)
);

select*from peliculas order by año desc;
Delete from peliculas where nombre = 'POKEMON1' ;
INSERT INTO peliculas VALUES
(1, 'POKEMON1', 90, 'Aventura de pokémon', 2020, 1),
(2, 'Titanic', 195, 'Historia romantica', 1997, 3),
(3, 'Avengers', 180, 'Superheroes', 2012, 1),
(4, 'Toy Story', 100, 'Pelicula animada', 1995, 2),
(5, 'El Conjuro', 120, 'Pelicula de terror', 2013, 4);


create table categoria(
idcategoria int(11)primary key,
nombre varchar(45)
);
select*from categoria order by idcategoria asc;
INSERT INTO categoria VALUES
(1, 'Accion'),
(2, 'Comedia'),
(3, 'Drama'),
(4, 'Terror'),
(5, 'Ciencia Ficcion');

CREATE TABLE empleado (
  idempleado INT(11) PRIMARY KEY,
  Nombre VARCHAR(45),
  Apellido VARCHAR(45),
  Puesto VARCHAR(45)

  
);
select*from empleado ;
insert into empleado values
(1, 'Laura', 'Sanchez', 'Cajera'),
 (2, 'Miguel', 'Ruiz', 'Gerente'),
 (3, 'Ana', 'Mendez', 'Atención al cliente'),
  (4, 'lucas', 'perez', 'cajero'),
   (5, 'julio', 'paz', 'cajero');
   
   CREATE TABLE resena (
  idresena INT(11) PRIMARY KEY,
  cliente_idcliente INT(11),
  pelicula_idpelicula INT(11),
  Comentario TEXT,
  Calificacion INT(1), 
  FOREIGN KEY (cliente_idcliente) REFERENCES cliente(idcliente),
  FOREIGN KEY (Pelicula_idpelicula) REFERENCES peliculas(idpelicula)
);
select*from resena ;
INSERT INTO resena VALUES
(1, 1, 2, 'Excelente película, me encantó.', 5),
 (2, 2, 3, 'Muy buena acción.', 4),
 (3, 3, 5, 'Demasiado terrorífica para mi gusto.', 3),
  (4, 4, 5, 'me dormi.', 2),
   (5, 5, 5, 'me gusto mucho.', 1);


