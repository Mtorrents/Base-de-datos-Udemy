create database backoffice;
use backoffice;

-- drop table clientes;
-- creo tabla clientes
create table clientes(id_cliente int primary key, nombre varchar(25), dni bigint);
insert into clientes values
(1, 'martin', 39642511),
(2, 'juan', 1234567),
(3, 'carlos', 12345678);
-- drop table automotores;
-- creo tabla automotores
create table automotores(id_automotor int, modelo varchar(25), patente varchar(25), id_cliente int primary key, foreign key(id_cliente) references clientes(id_cliente));
insert into automotores values
(1, 'Ferrari', 'ABC 785', 1),
(2, 'Lotus', 'DEF 885', 2),
(3, 'BMW', 'GHI 985', 3);


