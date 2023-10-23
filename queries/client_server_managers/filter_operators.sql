--Filtrado de registros. Operadores relacionales y lógicos. Operadores IN y BETWEEN.--

--11. Listar todos los datos de los países que no cuenten con habitantes. (Se esperan 15 columnas y 7 registros).
SELECT *  
FROM country 
WHERE country.population = 0;

--12. Listar todos los datos de los países cuya expectativa de vida supere los setenta y cinco años, ordenados bajo este concepto de forma ascendente. 
--(Se esperan 15 columnas y 62 registros).
SELECT * 
FROM country 
WHERE lifeexpectancy > 75 
ORDER BY lifeexpectancy ASc;

--13. Listar todos los datos de los países cuya independencia haya ocurrido a partir de la segunda mitad del siglo XIX y su forma de gobierno sea 
--una monarquía constitucional. (Se esperan 15 columnas y 20 registros).
SELECT * 
FROM country 
WHERE indepyear > 1801 AND governmentform = 'Constitutional Monarchy';

--14. Listar todos los datos de los diez países europeos de mayor PBN. (Se esperan 15 columnas y 10 registros).
SELECT * 
FROM country 
WHERE continent = 'Europe' 
group by name 
ORDER BY population DESC LIMIT 10;

--15. Listar todos los datos de los países cuyo nombre registrado coincida con su nombre local. (Se esperan 15 columnas y 104 registros).
SELECT * 
FROM country 
WHERE name = localname;

--16. Listar todos los datos de los países cuya independencia se haya dado a partir de la segunda mitad del siglo XX. (Se esperan 15 columnas y 110 registros).
SELECT * 
FROM country 
WHERE indepyear > 1900;

--17. Listar todos los datos de los países situados en Europa, Asia o Sudamérica. (Se esperan 15 columnas y 111 registros).
SELECT * 
FROM country 
WHERE country.continent = 'Europe' OR country.continent = 'Asia' OR country.continent = 'Sudamérica';

--18. Listar todos los datos de todos los países, excepto los africanos. (Se esperan 15 columnas y 181 registros).
SELECT * 
FROM country 
WHERE continent != 'Africa';

--19. Listar todos los datos de las ciudades argentinas fuera de la provincia de Buenos Aires. (Se esperan 5 columnas y 26 registros).
SELECT * FROM city 
LEFT JOIN country on city.countrycode = country.code 
WHERE city.countrycode not in (select code from country where capital = 'Buenos Aires' and country.name = 'Argentina');

--20. Listar todos los datos de las ciudades de entre 125 mil y 130 mil habitantes. (Se esperan 5 columnas y 138 registros).
SELECT * FROM country 
join city on country.code = city.countrycode 
WHERE city.population BETWEEN 125000 AND 130000;