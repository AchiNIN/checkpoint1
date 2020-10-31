use tienda;
select * from empleado where nombre like "M%";
select * from empleado where nombre like "%a";
select * from empleado where nombre like "M%a";
select * from empleado where nombre like "%el%";
select * from empleado where nombre like "M_losa";
use tienda;
select * from articulo where nombre like "%Pasta%";
select * from articulo where nombre like "%Cannelloni%";
select * from articulo where nombre like "%-%";
select (1 + 7) * (10 / (6 - 4));
select sqrt(16);
select round(avg(precio), 2) from articulo;
select round(avg(precio), 2) as promedioRedondeado from articulo;
select count(*) from articulo;
select max(precio) from articulo;
select min(precio) from articulo;
select sum(precio) from articulo;
-- RETO2 
select round(avg(salario)) from puesto;
select count(*) from articulo where nombre like "%pasta%";
select min(salario), max(salario) from puesto;
select max(id_puesto) - 5 from puesto;
select sum(salario) from puesto where id_puesto >= (select max(id_puesto) -5 from puesto);
-- Agrupamientos 
select nombre, sum(precio) as total from articulo group by nombre;
-- Agrupamientos con ordenamiento
select nombre, count(*) as cantida from articulo group by nombre order by cantida desc;
-- Agrupamientos con min y max
select nombre, min(salario) as menor, max(salario) as mayor from puesto group by nombre;

-- Reto 3 
select nombre, count(*) as RegistrosTotales from puesto group by nombre;
select nombre, sum(salario) as TotalSalario from puesto group by nombre;
select id_empleado, count(*) as ventas from venta group by id_empleado;
select id_articulo, count(*) as ventas from venta group by id_articulo;

-- Subconsultas
select id_puesto from puesto where nombre = "Junior Executive";
select * from empleado where id_puesto in(select id_puesto from puesto where nombre = "Junior Executive");
