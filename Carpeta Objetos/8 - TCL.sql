-- Realizando TCL
USE kallpa_sneakers;

SELECT @@SQL_SAFE_UPDATES;
SET SQL_SAFE_UPDATES = 0;

SELECT @@FOREIGN_KEY_CHECKS;
SET FOREIGN_KEY_CHECKS = 0;

SELECT @@AUTOCOMMIT;
SET AUTOCOMMIT = 0;


START TRANSACTION;
-- insertamos un registro nuevo en ventas con datos erroneos de precio
SELECT * FROM venta;

INSERT INTO venta(ID_Articulo, Cantidad, ID_Cliente, Color, Total, Fecha, ID_Transporte)
VALUES (5,12,4,'Blanco', 10, CURDATE(),3);

ROLLBACK;	-- Volvemos al inicio

-- Insertamos nuevos registros ahora si correctos
INSERT INTO venta(ID_Articulo, Cantidad, ID_Cliente, Color, Total, Fecha, ID_Transporte)
VALUES
(1,15,12,'Blanco', 120200, CURDATE(),10),
(11,30,26,'Negro', 300000, CURDATE(),4),
(11,30,26,'Blanco', 300000, CURDATE(),4),
(8,10,54,'Blanco', 72000, CURDATE(),12),
(3,12,12,'Azul', 76000, CURDATE(),19);

-- Creamos un punto de retorno
SAVEPOINT SP1;

-- Creamos nuevas inserciones para clientes erroneas de prueba
SELECT * FROM cliente;
INSERT INTO cliente(Cliente, Dirreccion, Localidad, Provincia, Mail, Telefono, Saldo, Ultima_Modificacion)
VALUES
('cliente1', 'S/D','S/D', 'S/D', 'S/D', 'S/D', 0.0,CURDATE()),
('cliente2', 'S/D','S/D', 'S/D', 'S/D', 'S/D', 0.0,CURDATE()),
('cliente3', 'S/D','S/D', 'S/D', 'S/D', 'S/D', 0.0,CURDATE()),
('cliente4', 'S/D','S/D', 'S/D', 'S/D', 'S/D', 0.0,CURDATE());

ROLLBACK TO SP1; -- Regresamos al punto de guardado SP1

-- Revisamos ambas tablas
SELECT * FROM venta;
SELECT * FROM cliente;


COMMIT; -- Guardamos los cambios
