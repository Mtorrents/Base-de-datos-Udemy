/*Creacion base de datos backoffice*/

-- Creo la base de datos backoffice
create database backoffice;

-- Uso la base de datos backoffice
use backoffice;

-- drop table clientes;
-- creo tabla clientes
create table clientes(id_cliente int primary key, nombre varchar(25), dni bigint);
insert into clientes values
(1, 'martin', 123456),
(2, 'juan', 1234567),
(3, 'carlos', 12345678);
-- drop table automotores;
-- creo tabla automotores
create table automotores(id_automotor int primary key, modelo varchar(25), patente varchar(25), id_cliente int, foreign key(id_cliente) references clientes(id_cliente));
insert into automotores values
(1, 'Ferrari', 'ABC 785', 1),
(2, 'Lotus', 'DEF 885', 2),
(3, 'BMW', 'GHI 985', 3);

-- consultas
select * from clientes;