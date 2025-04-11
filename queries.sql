 --Listar los productos con stock menor a 5 unidades.
 select * from producto where stock<5;
 --Calcular ventas totales de un mes específico.
 select v.fecha , sum(p.precio*vp.cantidad) as total_vendido from venta v
 inner join venta_producto vp on v.id = vp.id_venta
 inner join producto p on vp.id_producto = p.id
 where v.fecha = '2024-01-03' group by 1;
 --Obtener el cliente con más compras realizadas.
 select c.nombre , count(v.id) as cantidad_compras from venta v
 inner join cliente c on v.id_cliente = c.id
 group by 1 order by 2 desc limit 1;
 --Listar los 5 productos más vendidos.
 select p.nombre as nombre_producto , count(vp.cantidad) as cantidad_vendida from venta_producto vp
 inner join producto p on vp.id_producto = p.id
 group by 1 order by 2 desc limit 5;
 --Consultar ventas realizadas en un rango de fechas de tres Días y un Mes.
 select * from venta where fecha between CURRENT_DATE-33 and CURRENT_DATE;
 --Identificar clientes que no han comprado en los últimos 6 meses.
 select * from cliente where id not in (select id_cliente from venta where fecha between CURRENT_DATE-180 and CURRENT_DATE);