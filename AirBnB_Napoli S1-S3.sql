USE airbnb_napoli_2020;
SHOW databases;
show tables;
describe listings;
select neighbourhood from listings;
select price from listings;
select price from listings where neighbourhood = "Chiaia";
select price from listings where neighbourhood = "Vomero" order by price desc limit 3;
select price from listings where neighbourhood = "San Lorenzo" order by price asc limit 3;


-- Pregunta 1
select * from listings;

-- Pregunta 2
select neighbourhood from listings where price > 150;

-- Pregunta 3
select neighbourhood from listings where price < 25;

-- Pregunta 4
select max(price) as "Precio más alto" from listings;

-- Pregunta 5
select min(price) as "Precio más bajo" from listings;

-- Pregunta 6
select avg(price) as "Precio promedio" from listings;

-- Pregunta 7
describe listings;

-- Pregunta 8
select * from listings order by availability_365 asc limit 10;

-- Pregunta 9
select * from listings order by number_of_reviews desc limit 5;

-- Pregunta 10
select host_name from listings where room_type like "P%";

-- Pregunta 11
select neighbourhood, count(*) as "Alto número de reseñas" from listings group by number_of_reviews >= 400;










