select * from empleado as e join puesto as p on e.id_puesto = p.id_puesto;
select * from puesto as p left join empleado as e on e.id_puesto = p.id_puesto;
select * from empleado as e right join puesto as p on e.id_puesto = p.id_puesto;

-- Reto 1
-- ¿Cuál es el nombre de los empleados que realizaron cada venta?
select * from empleado as e join venta as v on v.id_venta = e.id_empleado;
-- ¿Cuál es el nombre de los artículos que se han vendido?
select * from articulo as a join venta as v on v.id_venta = a.id_articulo;
-- ¿Cuál es el total de cada venta?
select * from venta;
select * from venta as v join articulo as a on a.id_articulo = v.id_venta;
