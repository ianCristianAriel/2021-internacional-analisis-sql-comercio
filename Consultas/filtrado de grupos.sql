--Filtrado de grupos.

--46. Mostrar listados los años de independencia (sin nulos) junto a la cantidad de países que la hayan conseguido en ese año. 
--Se desea visualizar aquellos años donde más de un país se haya independizado. (Se esperan 2 columnas y 39 registros).
SELECT country.indepyear as anio_independencia, count(country.name) as cantidad_paises
FROM country
WHERE indepyear is not null
GROUP BY country.indepyear
having cantidad_paises > 1;

--47. Listar los países junto a la cantidad de idiomas diferentes hablados, pero solo aquellos donde se hablen entre tres y cinco idiomas diferentes. 
--(Se esperan 2 columnas y 80 registros).
SELECT country.name, count(countrylanguage.countrycode) as cantidad_idiomas
FROM country inner join countrylanguage ON country.code = countrylanguage.countrycode
GROUP BY country.name
having cantidad_idiomas between 3 and 5;

--48. Mostrar los distritos, junto al nombre del país al que pertenecen, cuya población total (también listada) no supere los diez mil habitantes. 
--(Se esperan 3 columnas y 35 registros).
SELECT city.district, city.name, sum(city.population) as poblacion_suma
FROM city INNER JOIN country ON city.countrycode = country.code
GROUP BY district
HAVING poblacion_suma < 10000;

--49. Mostrar las regiones junto a su densidad poblacional promedio, donde ésta supere a la mitad de la densidad poblacional máxima. 
--(Se esperan 2 columnas y 3 registros).
SELECT region, avg(population) as poblacion_promedio
from country
group by region
having poblacion_promedio > max(population) % 2

--50. Mostrar los lenguajes oficiales junto a su porcentaje promedio de habla, cuyo promedio no supere un dígito entero. 
--(Se esperan 2 columnas y 7 registros).
SELECT language, avg(percentage) as promedio_habla
FROM countrylanguage
GROUP BY language
HAVING promedio_habla < 1;
