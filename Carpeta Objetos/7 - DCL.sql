/* DCL: creación de usuarios y privilegios de los mismos */

-- Vemos los usuarios que hay
USE mysql;
SELECT * FROM user;

-- Creamos tres usuarios nuevos con sus contraseñas

CREATE USER 'Juan'@'localhost' IDENTIFIED BY '1234';
CREATE USER 'Pedro'@'localhost' IDENTIFIED BY '4321';
CREATE USER 'Ricardo'@'localhost' IDENTIFIED BY '1111';

-- Damos privilegios de acción a los usuarios

GRANT ALL ON kallpa_sneakers.* TO 'Juan'@'localhost'; -- Otorgamos todos los privilegios a Juan sobre la base de datos de kallpa sneakers

GRANT SELECT ON kallpa_sneakers.* TO 'Pedro'@'localhost'; -- Otorgamos a Pedro privilegios para hacer consultas en las tablas y views de kallpa sneakers

GRANT INSERT, UPDATE, DELETE ON kallpa_sneakers.venta TO 'Ricardo'@'localhost'; -- Otorgamos a Ricardo privilegios para insertar, actualizar o borrar registros en la tabla venta


FLUSH PRIVILEGES; -- actualizamos los cambios.

-- Eliminamos algunos privilegios de usuarios creados
REVOKE ALL ON *.* FROM 'Juan'@'localhost'; -- Revocamos todos los privilegios que le dimos a juan
DROP USER 'Juan'@'localhost'; -- Borramos el usuario Juan

REVOKE DELETE ON kallpa_sneakers.venta FROM 'Ricardo'@'localhost'; -- Revocamos a Ricardo el privilegio de borrar registros en venta

FLUSH PRIVILEGES; -- Actualizamos las modificaciones

SELECT * FROM user; -- Vemos como quedaron los usuarios;



