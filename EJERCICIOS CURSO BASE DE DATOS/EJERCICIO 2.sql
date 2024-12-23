##===========##
##   SELECT  ##
##===========##
SELECT * FROM sakila.actor;
-- traer el actor_id, first_name, last_name de la tabla actor 
SELECT actor_id,first_name,last_name FROM sakila.actor;

##===========##
##   DISTINC  ##
##===========##
##SE USA PARA DEVOLVER VALORES DISTINTOS
SELECT * FROM sakila.customer;

-- traer los distintos store_id de las tiendas

SELECT distinct store_id FROM sakila.customer;

-- traer los distintos first_name de las tiendas


##===========##
##  ORDER BY  ##
##===========##
## los ordena de mayor a menor o viceversa
SELECT * FROM sakila.country;

-- ORDENAR DE MANERA ASCENDENTE 

SELECT * FROM sakila.country ORDER BY country_id ASC;

-- ORDENAR DE MANERA DESCENDENTE 

SELECT * FROM sakila.country ORDER BY country_id DESC;


# 1 Consulta store_id, first_name y last_name de la tabla customer de la base de datos sakila.

SELECT customer_id, first_name,last_name FROM sakila.customer;

# 2 Cambia el nombre de las columnas store_id, first_name y last_name a Tienda, Nombre y Apellido respectivamente.

ALTER TABLE sakila.customer
/*CHANGE store_id Tienda smallint ,*/
CHANGE first_name Nombre varchar(45),
CHANGE  last_name Apellido varchar(45) ;
select * from  sakila.customer;

# 3 Ordena de manera descendente la columna Apellido en la consulta 2
SELECT * FROM sakika.customer ORDER BY Apellido asc ;

#Consulta la tabla payment de la base de datos sakila.

SELECT * FROM sakila.payment;

# 4 ¿Cuál es la cantidad mas baja y mas alta de la columna amount?
select max(amount) from sakila.payment; /* mas alta*/
select min(amount) from sakila.payment; /* mas baja*/


# 5 traer los distintos precios y ordenarlo de manera Ascendente
select distinct amount from  sakila.payment order by amount asc;

##===========##
##   WHERE  ##
##===========##

-- Traer todos los registros en la tabla actor donde el nombre es igual a ED
select * from sakila.actor where first_name = 'ED';

-- Traer todos los registros  en la tabla city donde la city es igual a london
select * from sakila.city where city = 'london';

-- Traer todos los registros  en la tabla city donde country_id = 102
select * from sakila.city where country_id = '182';

-- Traer todos los registros  en la tabla inventory donde film_id sea mayor o igual a 50
select * from sakila.inventory where film_id >=50;

# 6 traer solo los precios distintos de la tabla payment donde el amount sea menor a 3 y ordernarlos de manera descendente


# 7  traer todos los datos del staff donde el staff_id sea distinto de 2


# 8 traer todos los idiomas que sean distintos de German
SELECT * FROM sakila.language;


# 9  Consulta description, release_year de la tabla film de la base de datos sakila.
#Filtra la información donde title sea IMPACT ALADDIN*/

SELECT * FROM sakila.film;


/*#10

Consulta la tabla payment de la base de datos sakila.
Filtra la información donde amount sea mayor a 0.99 y ordenarlo de manera desc*/

SELECT * FROM sakila.payment;


##===========##
## AND OR NOT ##
##===========##

# AND = CUANDO 2 CONDICIONES SEAN VERDADERAS.

# 11 - Traer todos los registros en la tabla country donde el country sea igual a Algeria y ademas el country_id = 2



# OR = cuando se cumple una de las condiciones solicitadas 

# 12 - Traer todos los registros en la tabla country donde el country sea igual a Algeria o el country_id = 12


# 13 - Traer todos los registro en la tabla language  donde el language_id sea igual a 1 o el name = german


# NOT
SELECT * FROM sakila.category;

##  14 traer todos los registros en la tabla category donde no se encuentren el name Action


# 15 traer todos los registros en la tabla film donde el rating no sea PG 
SELECT * FROM sakila.film;


# 16 traer todos los distintos tipos de rating y que no este contemplado el 'PG'



/* 17 
Filtra la información en la tabla payment  donde customer_id sea igual a 36, amount sea mayor a 0.99 y staff_id sea igual a 1
ordenarlos de manera ascendente por amount.
 */
 
 SELECT * FROM sakila.payment;

 
##===========##
##     IN    ##
##===========##

# IN = trabaja en la clasusa where , y  es una abreviatura de multiples condiciones de OR 


SELECT * FROM sakila.customer;
## 18 traer todos los nombres donde sean Mary y Patricia de la tabla customer

#OR

#IN


/* 19 
traer todos los registros de la tabla film donde las caracteristicas especiales sea Trailer y Trailer,Deleted Scenes,
ademas el rating tiene que ser G y R y el tiempo de duracion tiene que ser mayor a 50.
Ordenarlos de manera ascendete por tiempo*/

SELECT * FROM sakila.film;


/* IN conbinado con NOT*/
SELECT * FROM sakila.category;

# 20 Traer todos los registros menos Action , Children , Animation de la tabla category




/* 21 Consulta la tabla film_text de la base de datos sakila.

Filtra la información donde title  sea ZORRO ARK, VIRGIN DAISY, UNITED PILOT*/
SELECT * FROM sakila.film_text;


/* 22 Consulta la tabla city de la base de datos sakila.

Filtra la información donde city sea Chiayi, Dongying, Fukuyama y Kilis.*/
SELECT * FROM sakila.city;


##===========##
##  BETWEEN  ##
##===========##

# BETWEEN : lo utilizamos para seleccionar valores dentro de un determinado rango

SELECT * FROM sakila.rental;
# 23 TRAER TODOS LAS RENTAS DONDE el customer_id SEAN DEL 300 AL 500, Y ADEMAS SEAN DEL STAFF_ID = 1. Ordenarlo de manera ASC por customer_id


SELECT * FROM sakila.payment;

## 24 traer todos los registros de la tabla payment donde el monto sea entre 3 y 5 ordenar por amount de manera DESC


## 25 traer todos los registros de la tabla payment donde el monto no sea entre 3 y 5 ordenar por amount de manera DESC


/* 26 Consulta la tabla payment de la base de datos sakila.
Filtra la información donde amount esté entre 2.99 y 4.99,
  staff_id sea igual a 2 y customer_id sea 1 y 2.*/
  SELECT * FROM sakila.payment;




/* 27 Consulta la tabla address de la base de datos sakila.
Filtra la información donde city_id esté entre 300 y 350,  */

SELECT * FROM sakila.address;


/* 28  Consulta la tabla film de la base de datos sakila.

Filtra la información donde rental_rate esté entre 0.99 y 2.99, 
length sea menor igual de 50  y replacement_cost sea menor de 20.*/

SELECT * FROM sakila.film;





##===========##
##   LIKE    ##
##===========##

# LIKE : SE UTILIZA EN CLAUSULA WHERE PARA BUSCAR UN PATRON ESPECIFICO EN LA CONSULTA

SELECT * FROM sakila.actor;

# 29 TRAER TODOS LOS REGISTROS  EN LA TABLA ACTOR, LOS NOMBRES QUE EMPIENCEN CON LA LETRA "A" Y EL APELLIDO EMPIECE CON LA LETRA "B"



# 30 TRAER TODOS LOS REGISTROS DONDE LOS NOMBRES TERMINEN CON LA LETRA "A" Y ADEMAS LOS APELLIDOS TERNMINEN CON LA LETRA 'N'


## 31 TRAER TODOS LOS REGISTROS DONDE EL NOMBRE CONTIENE LA PALABRA "NE" EN CUALQUIERA DE SUS POSICIONES Y ADEMAS
## QUE TENGA EL APELLIDO LA PALABRA "RO".



# 32 TRAER TODOS LOS REGISTROS DONDE TODOS LOS NOMBRES EMPIECEN CON "A" Y TERMINEN CON "E"


# 33 TRAER TODOS LOS REGISTROS DONDE LOS NOMBRES ENPIECEN CON LA LETRA "C" Y TERMINEN CON "N" Y ADEMAS
# QUE EL APELIIDO EMPIECE CON LA LETRA "g"

SELECT * FROM sakila.actor where first_name like 'C%' and first_name like '%N' and last_name like 'G%';
	

/* 34 Consulta la tabla film de la base de datos sakila.

Filtra la información donde release_year sea igual a 2006  y title empiece con ALI.
*/
SELECT * FROM sakila.film;

SELECT * FROM sakila.film where release_year = 2006 and title like 'ALI%'
