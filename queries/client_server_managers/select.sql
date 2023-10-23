--||Selección. Unicidad. Alias. Columnas calculadas||--

--1. Listar código, nombre, continente y población de todos los países. (Se esperan 4 columnas y 239 registros).
SELECT country.code, country.name, country.continent, country.population FROM country;

--2. Listar solo el nombre de todos los lenguajes distintos que existan. (Se espera 1 columna y 457 registros).
SELECT countrylanguage.language FROM countrylanguage;

--3. Listar nombre y población de cada ciudad, con los nombres de las columnas en castellano. (Se esperan 2 columnas y 4079 registros).
SELECT name AS nombre, population AS poblacion FROM country;

--4. Listar el nombre, el GNP como 'Producto Bruto Nacional', el GNPOld como 'Producto Bruto Nacional Anterior' y la diferencia entre estos como 'Diferencia', para todos los países. (Se esperan 4 columnas y 239 registros).
SELECT name, GNP AS 'Producto Bruto Nacional', GNPOld AS 'Producto Bruto Nacional Anterior', GNP - GNPOld AS 'Diferencia' FROM country GROUP BY country.name;

--5. Listar el nombre, la cantidad de habitantes, la superficie y una columna llamada 'Densidad' con el resultado de la densidad poblacional de todos los países. (Se esperan 4 columnas y 239 registros).
SELECT name, population, surfacearea FROM country GROUP BY name;

