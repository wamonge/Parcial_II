

create database Base_Ventas

use Base_Ventas

create table cajeros (
	codigo_cajero int identity primary key,
	nombre_cajero nvarchar(255) not null,
	apellidos nvarchar(255) not null
)
create table productos(
	codigo_producto int identity (500,2) primary key,
	nombre_producto nvarchar(100) not null,
	precio float default (0)
)
create table maquinas_registradoras (
	codigo_maquina int identity (100,1) primary key,
	piso int
)
create table ventas (
	codigo_venta int identity (1000,1) primary key,
	fecha date null,
	codigo_cajero int,
	codigo_producto int,
	codigo_maquina int,
	constraint FK_cod_caj foreign key (codigo_cajero) references cajeros(codigo_cajero),
	constraint FK_cod_prod foreign key (codigo_producto) references productos(codigo_producto),
	constraint FK_cod_maq foreign key (codigo_maquina) references maquinas_registradoras(codigo_maquina),
)

insert into cajeros values ('Juan', 'Pereira'),('Susan', 'Corrales')
insert into productos values ('Fresa', 125.12),('Melón',850.23),('Mango', 523.36)
insert into maquinas_registradoras values (3),(5)

update productos set nombre_producto = 'Pera', precio = 659.12 where codigo_producto = 500

select ventas.codigo_venta, cajeros.nombre_cajero, cajeros.apellidos, productos.nombre_producto, productos.precio, maquinas_registradoras.piso from ventas inner join cajeros on ventas.codigo_cajero = cajeros.codigo_cajero inner join productos on ventas.codigo_producto = productos.codigo_producto inner join maquinas_registradoras on ventas.codigo_maquina = maquinas_registradoras.codigo_maquina


