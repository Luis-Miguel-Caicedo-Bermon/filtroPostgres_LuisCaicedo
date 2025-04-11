create table proveedor(
	id serial primary key,
	nombre varchar(50) not null,
	telefono varchar(20) not null
);

create table producto(
	id serial primary key,
	nombre varchar(50) not null,
	categiria varchar(50) not null,
	precio numeric(10,2) not null,
	stock smallint not null,
	id_proveedor integer not null,
	constraint fk_proveedor foreign key (id_proveedor) references proveedor(id)
);

alter table producto rename column categiria to categoria;

create table cliente(
	id serial primary key,
	nombre varchar(50) not null,
	correo varchar(50) not null,
	telefono varchar(20) not null
);

create table venta(
	id serial primary key,
	fecha date default now(),
	id_cliente integer not null,
	constraint fk_cliente foreign key (id_cliente) references cliente(id)
);

create table venta_Producto(
	id_venta integer not null,
	id_producto integer not null,
	cantidad smallint not null,
	constraint fk_venta foreign key (id_venta) references venta(id),
	constraint fk_producto foreign key (id_producto) references producto(id)
);

