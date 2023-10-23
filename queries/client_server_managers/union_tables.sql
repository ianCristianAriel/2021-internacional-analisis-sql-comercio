-- Unión de tablas --

--26. Listar los nombres de los países sudamericanos junto a los nombres (alias 'Capital') de sus capitales. (Se esperan 2 columnas y 14 registros).
SELECT name as capital 
FROM country 
WHERE continent = 'South America';

--27. Listar el código de país, junto a los nombres de las ciudades y su cantidad de habitantes, de aquellos cuya expectativa de vida sea mayor a 80. 
--(Se esperan 3 columnas y 253 registros).
SELECT country.code, city.name, city.population 
FROM country inner JOIN city on country.code = city.countrycode 
WHERE country.lifeexpectancy > 80;

--28. Listar las capitales de los países cuya forma de gobierno sea una República Federal. (Se esperan 2 columnas y 15 registros).
SELECT country.name 
FROM country inner join city on city.id = country.capital 
WHERE governmentform = 'Federal Republic';

--29. Listar los lenguajes oficiales, junto al nombre de sus respectivos países, donde la cantidad de habitantes de dicho país esté entre un millón y tres 
--millones. (Se esperan 2 columnas y 14 registros).
SELECT countrylanguage.language, country.name 
FROM country INNER JOIN countrylanguage ON country.code = countrylanguage.countrycode 
WHERE country.population BETWEEN 1000000 and 3000000;

--30. Listar los códigos, los nombres locales y la región a la que pertenecen aquellos países donde se hable español. (Se esperan 3 columnas y 28 registros).
SELECT country.code, country.localname, country.region 
FROM country inner join countrylanguage on country.code = countrylanguage.countrycode 
where countrylanguage.language = 'Spanish'

--31. Listar los nombres y las capitales de los países en cuya capital se concentre más de la mitad de su población total. 
--(Se esperan 2 columnas y 14 registros).
SELECT country.name, city.name 
from country inner join city on country.capital = city.id 
WHERE city.population > country.population % 2;

--32. Listar los nombres y la superficie de los países africanos cuya capital coincida con el nombre del distrito a la que pertenece. 
--(Se esperan 2 columnas y 32 registros).
SELECT country.name, country.surfacearea 
FROM country inner join city on country.capital = city.id 
WHERE city.name = city.district AND country.continent = 'Africa';

--33. Listar los nombres, las capitales y el año de independencia (sin nulos) de los 20 países más antiguos. (Se esperan 3 columnas y 20 registros).
SELECT country.name, city.name, country.indepyear 
FROM country inner join city on country.capital = city.id 
WHERE country.name IS NOT NULL AND city.name IS NOT NULL and country.indepyear IS NOT NULL
GROUP BY country.name 
ORDER BY country.indepyear DESC
limit 20;

--34. Listar las ciudades junto a sus idiomas oficiales, donde no se hable español, inglés, portugués, italiano, francés o alemán de manera oficial. 
--(Se esperan 2 columnas y 2694 registros).
SELECT city.name, countrylanguage.language
FROM country INNER join city
ON country.code = city.countrycode
inner join countrylanguage
on country.code = countrylanguage.countrycode
where countrylanguage.language not in ('Spanish', 'English', 'Portuguese', 'German', 'Italian', 'French');

--35. Listar nombre, población y país de las diez ciudades europeas de habla inglesa más pobladas. (Se esperan 3 columnas y 10 registros).
SELECT city.name, city.population, country.name
FROM country inner join city on country.capital = city.id 
group by city.name
ORDER BY city.population DESC
limit 10;
