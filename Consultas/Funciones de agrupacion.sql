--Funciones de agregación. Agrupamiento.

--36. Mostrar según la tabla de países, la cantidad total de población, la población máxima, la población mínima, el promedio de población y con cuántos 
--registros de población se cuenta. (Se esperan 5 columnas y 1 registro).
SELECT count(population) as poblacion, max(population) as poblacion_maxima, min(population) as poblacion_minima, avg(population) as poblacion_promedio, count(*) as cantindad_registros 
from country;

--37. Mostrar según la tabla de países, la cantidad total de población, la población máxima, la población mínima y el promedio de población, por cada 
--continente. (Se esperan 5 columnas y 7 registros).
SELECT max(population), count(population), min(population), avg(population) 
FROM country 
GROUP BY continent;

--38. Agrupar a todos los países según el continente al que pertenecen. Mostrar los continentes junto a la cantidad de naciones que pertenecen a cada uno.
--(Se esperan 2 columnas y 7 registros).
SELECT continent, name from country
group by continent;

--39. Agrupar a todas las ciudades según el país al que pertenecen. Mostrar los códigos de países junto a la sumatoria total de habitantes de cada uno. 
--(Se esperan 2 columnas y 232 registros).
SELECT city.name, country.name, country.code, sum(country.population) 
FROM country inner join city on country.code = city.countrycode 
group by country.name;

--40. Agrupar a todos los lenguajes según su nombre. Mostrar los nombres de los lenguajes junto al porcentaje de habla mínimo registrado para cada uno. (Se esperan 2 columnas y 457 registros).
SELECT countrylanguage.language, countrylanguage.percentage 
FROM countrylanguage
GROUP BY countrylanguage.language;

--41. Mostrar las distintas formas de gobierno posibles de los países europeos junto a su correspondiente promedio de población que vive bajo estas circunstancias. (Se esperan 2 columnas y 10 registros).
SELECT country.name, distinct(governmentform) as formas_gobiernos 
FROM country
WHERE country.continent = 'Europe'

--42. Mostrar las diez regiones de mayor expectativa de vida promedio. (Se esperan 2 columnas y 10 registros).
SELECT region, avg(Lifeexpectancy) as expectativa_vida
from country
group by region
order by expectativa_vida DESC
limit 10;

--43. Mostrar los nombres de los diez distritos de mayor cantidad de ciudades con cantidad de habitantes mayor al medio millón, junto a la cantidad de ciudades. (Se esperan 3 columnas y 10 registros).
SELECT city.district, count(city.name) from city WHERE city.population > 500000;

--44. Mostrar los nombres de los países que tengan ciudades en el Caribe, junto al número de las mismas por país. (Se esperan 2 columnas y 24 registros).
SELECT country.name, count(city.name)
FROM country INNER JOIN city ON city.countrycode = country.code
WHERE city.name = 'Caribe'
GROUP BY country.name;

--45. Mostrar los lenguajes existentes junto a la cantidad de países que lo hablan de manera oficial. (Se esperan 2 columnas y 102 registros).
SELECT countrylanguage.language, count(country.name)
FROM country inner join countrylanguage on country.code = countrylanguage.countrycode
GROUP BY countrylanguage.language;