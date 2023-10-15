--Inserción de registros--
--51. Insertar un nuevo cliente con los siguientes datos:
INSER INTO clientes (DNI, nombre, apellido, genero,Fecha de nacimiento,Mail,Móvil,Dirección,Barrio,Nacionalidad )
VALUES ('12169851', 'Luis Enrique', 'Pérez', 'HOMBRE', '1954-06-01', 'perez_luisenrique@ma1l.com', '1157319468', 'Pujol 416', 'Caballito', 'Uruguay')

--52. Insertar los siguientes clientes en una sola consulta:
INSERt INTO clientes (DNI, nombre, apellido, genero,Fecha_nacimiento,Mail,Movil,domicilio,Barrio,Nacionalidad )
VALUES
    ('17278290','Florencia','Santos','MUJER','1963-07-12','flor.santos@ma1l.com','1148434346','Piran 3015','Villa Urquiza','Argentina'),
    ('16839283','Luisa Nina','Escudero','MUJER','1962-03-22','lulu62@hushma1l.com','1175940343','Superi 348 1º A','Colegiales','Colombia'),
    ('19164274','Carlos Alberto','Medina','HOMBRE','1966-04-26','medinacarlosalberto@z0h0.com','1123423451','Mexico 2121','Balvanera','Argentina')

--53. Insertar una cliente llamada María Sol González, con DNI 36.427.254, nacida en Argentina el 15 de agosto de 1992. 
--Domiciliada en Gurruchaga 243, Villa Crespo. Su móvil es 1136782013 y su mail es ma.gon54@gma1l.com.
INSERt INTO clientes (DNI, nombre, apellido, genero,Fecha_nacimiento,Mail,Movil,domicilio,Barrio,Nacionalidad )
VALUES ('36.427.254', 'Maria Sol', 'Gonzales', 'MUJER', '1992-08-15', 'ma.gon54@gma1l.com', '1136782013','Gurruchaga 243', 'Villa Crespo', 'Argentina')

--54. Modificar el apellido de la cliente 85 por 'Chaves'. (Se espera 1 registro afectado).
UPDATE clientes 
SET apellido = 'Chaves' 
wHERE ID_cliente = 85;

--55. Agregar un cero a la izquierda de todos los DNI con exactamente siete cifras. (Se esperan 1173 registros afectados).
UPDATE clientes 
SET dni = concat(dni, '0');

--56. Agregar una tilde a todos los clientes llamados 'Nicolas' como único nombre para que el mismo pase a ser 'Nicolás'. (Se esperan 3 registros afectados).
UPDATE clientes 
SET nombre = 'Nicolás'
WHERE nombre = 'Nicolas';

--57. Poner en mayúsculas los apellidos de los clientes cuya nacionalidad no sea 'Argentina'. (Se esperan 4450 registros afectados).
UPDATE clientes
SET apellido = upper(apellido)
WHERE nacionalidad = 'Argentina';