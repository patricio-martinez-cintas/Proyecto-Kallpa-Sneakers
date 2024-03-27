USE kallpa_sneakers;
-- Creamos tabla autitoria_general para insert, update y delete
CREATE TABLE auditoria_general (
    ID_Auditoria INT AUTO_INCREMENT PRIMARY KEY,
    Tabla_Afectada VARCHAR(255) NOT NULL,
    Accion_Realizada ENUM('INSERT', 'UPDATE', 'DELETE') NOT NULL,
    Fecha_Hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Usuario VARCHAR(255) NOT NULL,
    Detalles TEXT
);

-- Trigger de articulo
-- insert
DELIMITER //
DROP TRIGGER IF EXISTS auditoria_articulo_insert ;
CREATE TRIGGER auditoria_articulo_insert AFTER INSERT ON articulo
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Usuario, Detalles)
    VALUES ('articulo', 'INSERT', USER(), CONCAT('Registro insertado en articulo con ID: ', NEW.ID_Articulo));
END //
DELIMITER ;

-- update
DELIMITER //
DROP TRIGGER IF EXISTS auditoria_articulo_update ;
CREATE TRIGGER auditoria_articulo_update AFTER UPDATE ON articulo
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Usuario, Detalles)
    VALUES ('articulo', 'UPDATE', USER(), CONCAT('Registro actualizado en articulo con ID: ', NEW.ID_Articulo));
END //
DELIMITER ;

-- delete
DELIMITER //
DROP TRIGGER IF EXISTS auditoria_articulo_delete ;
CREATE TRIGGER auditoria_articulo_delete AFTER DELETE ON articulo
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Usuario, Detalles)
    VALUES ('articulo', 'DELETE', USER(), CONCAT('Registro eliminado en articulo con ID: ', OLD.ID_Articulo));
END //
DELIMITER ;



-- Trigger de cliente
-- insert
DELIMITER //
DROP TRIGGER IF EXISTS auditoria_cliente_insert ;
CREATE TRIGGER auditoria_cliente_insert AFTER INSERT ON cliente
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Usuario, Detalles)
    VALUES ('cliente', 'INSERT', USER(), CONCAT('Registro insertado en cliente con ID: ', NEW.ID_Cliente));
END //
DELIMITER ;

-- update
DELIMITER //
DROP TRIGGER IF EXISTS auditoria_cliente_update ;
CREATE TRIGGER auditoria_cliente_update AFTER UPDATE ON cliente
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Usuario, Detalles)
    VALUES ('cliente', 'UPDATE', USER(), CONCAT('Registro actualizado en cliente con ID: ', NEW.ID_Cliente));
END //
DELIMITER ;

-- delete
DELIMITER //
DROP TRIGGER IF EXISTS auditoria_cliente_delete ;
CREATE TRIGGER auditoria_cliente_delete AFTER DELETE ON cliente
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Usuario, Detalles)
    VALUES ('cliente', 'DELETE', USER(), CONCAT('Registro eliminado en cliente con ID: ', OLD.ID_Cliente));
END //
DELIMITER ;


-- Trigger de materia_prima
-- insert
DELIMITER //
DROP TRIGGER IF EXISTS auditoria_materia_prima_insert ;
CREATE TRIGGER auditoria_materia_prima_insert AFTER INSERT ON materia_prima
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Usuario, Detalles)
    VALUES ('materia_prima', 'INSERT', USER(), CONCAT('Registro insertado en materia_prima con ID: ', NEW.ID_Materia_Prima));
END //
DELIMITER ;

-- update
DELIMITER //
DROP TRIGGER IF EXISTS auditoria_materia_prima_update ;
CREATE TRIGGER auditoria_materia_prima_update AFTER UPDATE ON materia_prima
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Usuario, Detalles)
    VALUES ('materia_prima', 'UPDATE', USER(), CONCAT('Registro actualizado en materia_prima con ID: ', NEW.ID_Materia_Prima));
END //
DELIMITER ;

-- delete
DELIMITER //
DROP TRIGGER IF EXISTS auditoria_materia_prima_delete ;
CREATE TRIGGER auditoria_materia_prima_delete AFTER DELETE ON materia_prima
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Usuario, Detalles)
    VALUES ('materia_prima', 'DELETE', USER(), CONCAT('Registro eliminado en materia_prima con ID: ', OLD.ID_Materia_Prima));
END //
DELIMITER ;


-- Trigger de proveedor
-- insert
DELIMITER //
DROP TRIGGER IF EXISTS auditoria_proveedor_insert ;
CREATE TRIGGER auditoria_proveedor_insert AFTER INSERT ON proveedor
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Usuario, Detalles)
    VALUES ('proveedor', 'INSERT', USER(), CONCAT('Registro insertado en proveedor con ID: ', NEW.ID_Proveedor));
END //
DELIMITER ;

-- update
DELIMITER //
DROP TRIGGER IF EXISTS auditoria_proveedor_update ;
CREATE TRIGGER auditoria_proveedor_update AFTER UPDATE ON proveedor
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Usuario, Detalles)
    VALUES ('proveedor', 'UPDATE', USER(), CONCAT('Registro actualizado en proveedor con ID: ', NEW.ID_Proveedor));
END //
DELIMITER ;

-- delete
DELIMITER //
DROP TRIGGER IF EXISTS auditoria_proveedor_delete ;
CREATE TRIGGER auditoria_proveedor_delete AFTER DELETE ON proveedor
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Usuario, Detalles)
    VALUES ('proveedor', 'DELETE', USER(), CONCAT('Registro eliminado en proveedor con ID: ', OLD.ID_Proveedor));
END //
DELIMITER ;

-- Trigger de transporte
-- insert
DELIMITER //
DROP TRIGGER IF EXISTS auditoria_transporte_insert ;
CREATE TRIGGER auditoria_transporte_insert AFTER INSERT ON transporte
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Usuario, Detalles)
    VALUES ('transporte', 'INSERT', USER(), CONCAT('Registro insertado en transporte con ID: ', NEW.ID_Transporte));
END //
DELIMITER ;

-- update
DELIMITER //
DROP TRIGGER IF EXISTS auditoria_transporte_update ;
CREATE TRIGGER auditoria_transporte_update AFTER UPDATE ON transporte
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Usuario, Detalles)
    VALUES ('transporte', 'UPDATE', USER(), CONCAT('Registro actualizado en transporte con ID: ', NEW.ID_Transporte));
END //
DELIMITER ;

-- delete
DELIMITER //
DROP TRIGGER IF EXISTS auditoria_transporte_delete ;
CREATE TRIGGER auditoria_transporte_delete AFTER DELETE ON transporte
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Usuario, Detalles)
    VALUES ('transporte', 'DELETE', USER(), CONCAT('Registro eliminado en transporte con ID: ', OLD.ID_Transporte));
END //
DELIMITER ;


-- Trigger de venta

-- insert
DELIMITER //
DROP TRIGGER IF EXISTS auditoria_venta_insert ;
CREATE TRIGGER auditoria_venta_insert AFTER INSERT ON venta
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Usuario, Detalles)
    VALUES ('venta', 'INSERT', USER(), CONCAT('Registro insertado en venta con ID: ', NEW.ID_Venta));
END //
DELIMITER ;

-- update
DELIMITER //
DROP TRIGGER IF EXISTS auditoria_venta_update ;
CREATE TRIGGER auditoria_venta_update AFTER UPDATE ON venta
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Usuario, Detalles)
    VALUES ('venta', 'UPDATE', USER(), CONCAT('Registro actualizado en venta con ID: ', NEW.ID_Venta));
END //
DELIMITER ;

-- delete
DELIMITER //
DROP TRIGGER IF EXISTS auditoria_venta_delete ;
CREATE TRIGGER auditoria_venta_delete AFTER DELETE ON venta
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Usuario, Detalles)
    VALUES ('venta', 'DELETE', USER(), CONCAT('Registro eliminado en venta con ID: ', OLD.ID_Venta));
END //
DELIMITER ;


-- Probamos los trigers con la tabla cliente:
-- Vemos la tabla cliente cual es el ultimo articulo para saber el proximo id.
SELECT * FROM cliente;

-- Insert
INSERT INTO cliente(ID_Cliente, Cliente, Dirreccion, Localidad, Provincia, Mail, Telefono, Saldo, Ultima_Modificacion)
VALUES (67, 'Prueba', 'Prueba', 'Prueba', 'Prueba', 'Prueba', 'Prueba', 0.00, '2024-03-24');

-- Update
UPDATE cliente
SET Cliente = 'Prueba update'
WHERE ID_Cliente = 67;

-- Delete
DELETE FROM cliente
WHERE ID_Cliente = 67;


-- Vemos como quedo la tabla 'auditoria_general'
SELECT * FROM auditoria_general;
