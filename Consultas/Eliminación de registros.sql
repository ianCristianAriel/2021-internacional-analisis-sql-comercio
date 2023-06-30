--Eliminación de registros

--58. Eliminar al cliente 9804. (Se espera 1 registro afectado).
DELETE 
FROM clientes 
WHERE id_cliente = 9804;

--59. Eliminar a los clientes cuyo servidor de mail sea 'z0h0'. (Se esperan 2127 registros afectados).
DELETE 
FROM clientes 
WHERE mail like '%@z0h0%';

--60. Eliminar a todos los clientes que residan en el barrio de 'Flores'. (Se esperan 803 registros afectados).
DELETE 
FROM clientes
WHERE barrio = 'Floresta';
