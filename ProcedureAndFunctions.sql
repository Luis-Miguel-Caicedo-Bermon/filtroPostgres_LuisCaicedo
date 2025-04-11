-- Un procedimiento almacenado para registrar una venta.
create or replace procedure registrar_venta (id_venta int , id_clientei int)
language plpgsql as $$
begin
	insert into venta (id,fecha,id_cliente) values
	(id_venta,CURRENT_DATE,id_clientei);
end;
$$;

create or replace procedure insertar_venta_producto(id_ventai int, id_clientei int , id_productoi int , cantidadi int)
language plpgsql as $$
begin
	if id_ventai in (select id from venta) and id_clientei = (select id_cliente from venta where id = id_ventai) then
		insert into venta_producto (id_venta,id_producto,cantidad) values
		(id_ventai,id_productoi,cantidadi);
		
	end if;	
	
	if id_ventai not in (select id from venta) then
		call registrar_venta(id_ventai,id_clientei);
		call insertar_venta_producto(id_ventai,id_clientei,id_productoi,cantidadi);
	end if;
end;
$$;

call insertar_venta_producto(10,3,2,1);
call insertar_venta_producto(12,3,2,1);
select * from venta;
select * from venta_producto;

--Verificar que el stock sea suficiente antes de procesar la venta.
--Si no hay stock suficiente, Notificar por medio de un mensaje en consola usando RAISE.
--Si hay stock, se realiza el registro de la venta.
create or replace procedure verificar_stock (id_ventai int, id_clientei int , id_productoi int , cantidadi int)
language plpgsql as $$
begin
	if (select stock from producto where id = id_productoi)>cantidadi then
		call insertar_venta_producto(id_ventai,id_clientei,id_productoi,cantidadi);
		update producto set stock = cantidadi where id = id_productoi;
	end if;
	if (select stock from producto where id = id_productoi)<cantidadi then
		raise 'cantidad invalida';
	end if;
end;
$$;

call verificar_stock(12,3,2,200);
