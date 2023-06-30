--Manejo de valores nulos. Operador LIKE. Comodines.

--21. Listar todos los datos de los países donde no se cuente con datos acerca de su independencia. (Se esperan 15 columnas y 47 registros).
SELECT + FROM country WHERE indepyear IS NULL;

--22. Listar todos los datos de los países donde no se tengan datos acerca del PBN anterior ni de la expectativa de vida. 
--(Se esperan 15 columnas y 17 registros).
SELECT * FROM country WHERE population IS NULL and lifeexpectancy  is null;

--23. Listar todos los datos de los países cuyo nombre comience y termine con 'A'. (Se esperan 15 columnas y 13 registros).
SELECT * FROM country where name like 'A%A';

--24. Listar todos los datos de los países cuyo nombre sea compuesto (más de una palabra). (Se esperan 15 columnas y 66 registros).
SELECT * FROM country WHERE name like '% %':

--25. Listar todos los datos de las ciudades cuyo nombre o distrito contengan un '-' (guión medio). (Se esperan 5 columnas y 372 registros).
SELECT * FROM country INNER JOIN city WHERE city.name like '%-%';