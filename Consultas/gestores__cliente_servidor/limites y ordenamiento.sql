-- Límites. Ordenamiento --

--6. Listar toda la información de los países, ordenados por población de manera ascendente. (Se esperan 15 columnas y 239 registros).
SELECT * FROM country ORDER BY population DESC;

--7. Listar nombre de los lenguajes en orden alfabético. (Se espera 1 columna y 984 registros).
SELECT countrylanguage.Language FROM countrylanguage ORDER BY language ASC;

--8. Listar nombre y cantidad de habitantes de las veinte ciudades menos pobladas. (Se esperan 2 columnas y 20 registros).
SELECT name, population FROM country GROUP BY name ORDER BY population DESC LIMIT 20;

--9. Listar código, nombre y año de independencia de todos los países, ordenados por antigüedad descendente. (Se esperan 3 columnas y 239 registros).
SELECT code, name, indepyear FROM country GROUP BY name ORDER BY indepyear DESC;

--10. Listar nombre y continente de los cien países con mayor expectativa de vida. Si hubiera países que tengan la misma expectativa de vida, mostrar primero
--a los de menor superficie. (Se esperan 2 columnas y 100 registros).
SELECT name, continent FROM country GROUP BY name ORDER BY indepyear, surfacearea DESC LIMIT 100;


