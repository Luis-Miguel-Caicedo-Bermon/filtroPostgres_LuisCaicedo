insert into proveedor(nombre,telefono) values
('luis','3212332'),
('laura','2343445'),
('yessica','2345452'),
('aleja','1242345'),
('valerie','2342342');

insert into producto(nombre,categoria,precio,stock,id_proveedor) values
('Azus', 'laptop' , 2000 , 15 , 5),
('redmi 9 pro', 'celular' , 1000 , 12 , 5),
('kz edx', 'audifonos' , 12 , 15 , 5),
('rezer', 'mouse' , 2000 , 11 , 4),
('redmi', 'cargador' , 2000 , 15 , 4),
('compumax', 'laptop' , 2000 , 16 , 4),
('iphone', 'celular' , 900 , 18 , 3),
('oneOdio', 'audifonos' , 138 , 1 , 3),
('viper', 'mouse' , 2000 , 16 , 3),
('oppo', 'cargador' , 2000 , 3 , 2),
('mac', 'laptop' , 2000 , 23 , 2),
('samsung', 'celular' , 800 , 4 , 2),
('wigfar', 'audifonos' , 103 , 5 , 1),
('yooso', 'mouse' , 34 , 9 , 1),
('xiaomi', 'cargador' , 2000 , 10 , 1);

insert into cliente(nombre,correo,telefono) values
('juan','juan@gmail.com','234345'),
('perez','perez@gmail.com','345345'),
('camilo','camilo@gmail.com','45756845'),
('maria','maria@gmail.com','4566575'),
('angel','angel@gmail.com','45657567'),
('roman','roman@gmail.com','45645632'),
('lucas','lucas@gmail.com','2345435'),
('pepe','pepe@gmail.com','3452345'),
('jhonatan','jhonatan@gmail.com','2345456'),
('diego','diego@gmail.com','2346456'),
('franco','franco@gmail.com','32453'),
('diluc','diluc@gmail.com','324234'),
('mavuika','mavuika@gmail.com','23455'),
('xilonen','xilonen@gmail.com','234332'),
('furina','furina@gmail.com','234534');

insert into venta (fecha,id_cliente) values
('2024-01-01',5),
('2024-01-02',4),
('2024-01-03',3),
('2024-01-04',2),
('2024-01-05',5),
('2024-01-06',3),
('2024-01-08',4),
('2024-01-11',5),
('2024-01-12',1);

insert into venta_Producto (id_venta,id_producto,cantidad) values
(2,3,4),
(1,2,1),
(1,3,5),
(3,4,5),
(2,4,5),
(2,3,1),
(3,2,1),
(4,5,1),
(5,2,1),
(6,4,4),
(7,5,2),
(8,1,3),
(9,3,1),
(1,6,3),
(2,7,2);