USE kallpa_sneakers;

/*Trigger articulo*/

-- Trigger insert after articulo

DROP TRIGGER IF EXISTS trg_articulo_after_insert ;

DELIMITER //
CREATE TRIGGER trg_articulo_after_insert AFTER INSERT ON articulo
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Periodo_Accion, Usuario, Detalles)
    VALUES ('articulo', 'INSERT', 'AFTER', USER(), CONCAT('Registro insertado: ID_Articulo->', NEW.ID_Articulo, ', Articulo->', NEW.Articulo, ', Descripcion->', NEW.Descripcion, ', Precio->', NEW.Precio, ', Talles->', NEW.Talles, ', Genero->', NEW.Genero, ', Ultima_Modificacion->', NEW.Ultima_Modificacion));
END //
DELIMITER ;

-- Trigger insert before articulo
DROP TRIGGER IF EXISTS trg_articulo_before_insert ;

DELIMITER //
CREATE TRIGGER trg_articulo_before_insert BEFORE INSERT ON articulo
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Periodo_Accion, Usuario, Detalles)
    VALUES ('articulo', 'INSERT', 'BEFORE', USER(), CONCAT('Registro insertado: ID_Articulo->', NEW.ID_Articulo, ', Articulo->', NEW.Articulo, ', Descripcion->', NEW.Descripcion, ', Precio->', NEW.Precio, ', Talles->', NEW.Talles, ', Genero->', NEW.Genero, ', Ultima_Modificacion->', NEW.Ultima_Modificacion));
END //
DELIMITER ;



-- Trigger update after articulo
DROP TRIGGER IF EXISTS trg_articulo_after_update ;

DELIMITER //
CREATE TRIGGER trg_articulo_after_update AFTER UPDATE ON articulo
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Periodo_Accion, Usuario, Detalles)
    VALUES ('articulo', 'UPDATE', 'AFTER', USER(), CONCAT('Registro actualizado (viejo/nuevo): ID_Articulo->', OLD.ID_Articulo, '/', NEW.ID_Articulo, ', Articulo->', OLD.Articulo, '/', NEW.Articulo, ', Descripcion->', OLD.Descripcion, '/', NEW.Descripcion, ', Precio->', OLD.Precio, '/', NEW.Precio, ', Talles->', OLD.Talles, '/', NEW.Talles, ', Genero->', OLD.Genero, '/', NEW.Genero, ', Ultima_Modificacion->', OLD.Ultima_Modificacion, '/', NEW.Ultima_Modificacion));
END //
DELIMITER ;


-- Trigger update before articulo
DROP TRIGGER IF EXISTS trg_articulo_before_update ;

DELIMITER //
CREATE TRIGGER trg_articulo_before_update BEFORE UPDATE ON articulo
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Periodo_Accion, Usuario, Detalles)
    VALUES ('articulo', 'UPDATE', 'BEFORE', USER(), CONCAT('Registro actualizado (viejo/nuevo): ID_Articulo->', OLD.ID_Articulo, '/', NEW.ID_Articulo, ', Articulo->', OLD.Articulo, '/', NEW.Articulo, ', Descripcion->', OLD.Descripcion, '/', NEW.Descripcion, ', Precio->', OLD.Precio, '/', NEW.Precio, ', Talles->', OLD.Talles, '/', NEW.Talles, ', Genero->', OLD.Genero, '/', NEW.Genero, ', Ultima_Modificacion->', OLD.Ultima_Modificacion, '/', NEW.Ultima_Modificacion));
END //
DELIMITER ;



-- Trigger delete after articulo
DROP TRIGGER IF EXISTS trg_articulo_after_delete ;

DELIMITER //
CREATE TRIGGER trg_articulo_after_delete AFTER DELETE ON articulo
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Periodo_Accion, Usuario, Detalles)
    VALUES ('articulo', 'DELETE', 'AFTER', USER(), CONCAT('Registro eliminado: ID_Articulo->', OLD.ID_Articulo, ', Articulo->', OLD.Articulo, ', Descripcion->', OLD.Descripcion, ', Precio->', OLD.Precio, ', Talles->', OLD.Talles, ', Genero->', OLD.Genero, ', Ultima_Modificacion->', OLD.Ultima_Modificacion));
END //
DELIMITER ;


-- Trigger delete before articulo
DROP TRIGGER IF EXISTS trg_articulo_before_delete ;

DELIMITER //
CREATE TRIGGER trg_articulo_before_delete BEFORE DELETE ON articulo
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Periodo_Accion, Usuario, Detalles)
    VALUES ('articulo', 'DELETE', 'BEFORE', USER(), CONCAT('Registro eliminado: ID_Articulo->', OLD.ID_Articulo, ', Articulo->', OLD.Articulo, ', Descripcion->', OLD.Descripcion, ', Precio->', OLD.Precio, ', Talles->', OLD.Talles, ', Genero->', OLD.Genero, ', Ultima_Modificacion->', OLD.Ultima_Modificacion));
END //
DELIMITER ;


/*Trigger venta*/

-- Trigger insert after venta
DROP TRIGGER IF EXISTS trg_venta_after_insert ;

DELIMITER //
CREATE TRIGGER trg_venta_after_insert AFTER INSERT ON venta
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Periodo_Accion, Usuario, Detalles)
    VALUES ('venta', 'INSERT', 'AFTER', USER(), CONCAT('Registro insertado: ID_Venta->', NEW.ID_Venta, ', ID_Articulo->', NEW.ID_Articulo, ', Cantidad->', NEW.Cantidad, ', ID_Cliente->', NEW.ID_Cliente, ', Color->', NEW.Color, ', Total->', NEW.Total, ', Fecha->', NEW.Fecha, ', ID_Transporte->', NEW.ID_Transporte));
END //
DELIMITER ;


-- Trigger insert before venta
DROP TRIGGER IF EXISTS trg_venta_before_insert ;

DELIMITER //
CREATE TRIGGER trg_venta_before_insert BEFORE INSERT ON venta
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Periodo_Accion, Usuario, Detalles)
    VALUES ('venta', 'INSERT', 'BEFORE', USER(), CONCAT('Registro insertado: ID_Venta->', NEW.ID_Venta, ', ID_Articulo->', NEW.ID_Articulo, ', Cantidad->', NEW.Cantidad, ', ID_Cliente->', NEW.ID_Cliente, ', Color->', NEW.Color, ', Total->', NEW.Total, ', Fecha->', NEW.Fecha, ', ID_Transporte->', NEW.ID_Transporte));
END //
DELIMITER ;




-- Trigger update after venta
DROP TRIGGER IF EXISTS trg_venta_after_update ;

DELIMITER //
CREATE TRIGGER trg_venta_after_update AFTER UPDATE ON venta
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Periodo_Accion, Usuario, Detalles)
    VALUES ('venta', 'UPDATE', 'AFTER', USER(), CONCAT('Registro actualizado (viejo/nuevo): ID_Venta->', OLD.ID_Venta, '/', NEW.ID_Venta, ', ID_Articulo->', OLD.ID_Articulo, '/', NEW.ID_Articulo, ', Cantidad->', OLD.Cantidad, '/', NEW.Cantidad, ', ID_Cliente->', OLD.ID_Cliente, '/', NEW.ID_Cliente, ', Color->', OLD.Color, '/', NEW.Color, ', Total->', OLD.Total, '/', NEW.Total, ', Fecha->', OLD.Fecha, '/', NEW.Fecha, ', ID_Transporte->', OLD.ID_Transporte, '/', NEW.ID_Transporte));
END //
DELIMITER ;


-- Trigger update before venta
DROP TRIGGER IF EXISTS trg_venta_before_update ;

DELIMITER //
CREATE TRIGGER trg_venta_before_update BEFORE UPDATE ON venta
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Periodo_Accion, Usuario, Detalles)
    VALUES ('venta', 'UPDATE', 'BEFORE', USER(), CONCAT('Registro actualizado (viejo/nuevo): ID_Venta->', OLD.ID_Venta, '/', NEW.ID_Venta, ', ID_Articulo->', OLD.ID_Articulo, '/', NEW.ID_Articulo, ', Cantidad->', OLD.Cantidad, '/', NEW.Cantidad, ', ID_Cliente->', OLD.ID_Cliente, '/', NEW.ID_Cliente, ', Color->', OLD.Color, '/', NEW.Color, ', Total->', OLD.Total, '/', NEW.Total, ', Fecha->', OLD.Fecha, '/', NEW.Fecha, ', ID_Transporte->', OLD.ID_Transporte, '/', NEW.ID_Transporte));
END //
DELIMITER ;



-- Trigger delete after venta
DROP TRIGGER IF EXISTS trg_venta_after_delete ;

DELIMITER //
CREATE TRIGGER trg_venta_after_delete AFTER DELETE ON venta
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Periodo_Accion, Usuario, Detalles)
    VALUES ('venta', 'DELETE', 'AFTER', USER(), CONCAT('Registro eliminado: ID_Venta->', OLD.ID_Venta, ', ID_Articulo->', OLD.ID_Articulo, ', Cantidad->', OLD.Cantidad, ', ID_Cliente->', OLD.ID_Cliente, ', Color->', OLD.Color, ', Total->', OLD.Total, ', Fecha->', OLD.Fecha, ', ID_Transporte->', OLD.ID_Transporte));
END //
DELIMITER ;



-- Trigger delete before venta
DROP TRIGGER IF EXISTS trg_venta_before_delete ;

DELIMITER //
CREATE TRIGGER trg_venta_before_delete BEFORE DELETE ON venta
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_general (Tabla_Afectada, Accion_Realizada, Periodo_Accion, Usuario, Detalles)
    VALUES ('venta', 'DELETE', 'BEFORE', USER(), CONCAT('Registro eliminado: ID_Venta->', OLD.ID_Venta, ', ID_Articulo->', OLD.ID_Articulo, ', Cantidad->', OLD.Cantidad, ', ID_Cliente->', OLD.ID_Cliente, ', Color->', OLD.Color, ', Total->', OLD.Total, ', Fecha->', OLD.Fecha, ', ID_Transporte->', OLD.ID_Transporte));
END //
DELIMITER ;

