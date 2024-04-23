USE kallpa_sneakers;

-- 1) Store Procedure 1 'sp_clientes_mayores_compradores_articulos'
-- Permite devolver la lista de los clientes que mas han vendidos pares segun un articulo que hemos agregado como parametro y segun el año indicado también. 
-- Actua sobre las tablas venta, cliente y articulo.

DROP PROCEDURE IF EXISTS sp_clientes_mayores_compradores_articulos;

DELIMITER //
CREATE PROCEDURE sp_clientes_mayores_compradores_articulos (
    IN p_articulo VARCHAR(25), 
    IN p_año INT
)
BEGIN		
    SELECT c.Cliente, SUM(v.Cantidad) AS 'Cantidad de pares'
    FROM venta v 
    JOIN cliente c ON (c.ID_Cliente = v.ID_Cliente)
    JOIN articulo a ON (a.ID_Articulo = v.ID_Articulo)
    WHERE a.articulo = p_articulo AND YEAR(v.fecha) = p_año
    GROUP BY c.Cliente
    ORDER BY SUM(v.Cantidad) DESC;
END //
DELIMITER ;


-- 2) Store procedure 2 'sp_mostrar_transporte_por_localidad'
-- Te trae de acuerdo a la localidad que señalemos como parametro los transportes que nos llevaron mercaderia a esa zona.  Ademas guarda la consulta realizada para ello en un parametro de salida.
-- Actua sobre las tablas transporte, cliente y venta(como conector entre las otras dos tablas)

DROP PROCEDURE IF EXISTS sp_mostrar_transporte_por_localidad;

DELIMITER //

CREATE PROCEDURE sp_mostrar_transporte_por_localidad (
    IN p_localidad VARCHAR(20),
    OUT p_tabla_transporte VARCHAR(500)
)
BEGIN
    SET @consulta = CONCAT('SELECT DISTINCT t.Transporte, c.Localidad, c.Provincia
        FROM transporte t 
        JOIN venta v ON (t.ID_Transporte = v.ID_Transporte)
        JOIN cliente c ON (c.ID_Cliente = v.ID_Cliente)
        WHERE c.Localidad LIKE ''%', p_localidad, '%''');

    SET p_tabla_transporte = @consulta;

    PREPARE stmt FROM @consulta;    
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //
DELIMITER ;


-- 3) Stored procedured 3 'sp_ordenar_busqueda'
-- Realiza una busqueda en ventas y ordenado por columna asencente o descendente
-- Actua sobre la tabla venta

DROP PROCEDURE IF EXISTS sp_ordenar_busqueda;

DELIMITER //
CREATE PROCEDURE sp_ordenar_busqueda(
    IN p_columna VARCHAR(30), 
    IN p_asc_desc VARCHAR(10)
)
BEGIN
    SET @sql = CONCAT(
        'SELECT * 
        FROM venta
        ORDER BY ', p_columna, ' ', p_asc_desc
    );
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //
DELIMITER ;


-- 4) Stored procedure 4 'sp_insert_delete_venta'.
-- Permite agregar o borrar un registro en la tabla ventas
-- Actua sobre la tabla ventas.

DROP PROCEDURE IF EXISTS sp_insert_delete_venta;

DELIMITER //
CREATE PROCEDURE sp_insert_delete_venta(
    IN p_accion VARCHAR(10),
    IN p_ID_Venta INT, 
    IN p_ID_Articulo INT, 
    IN p_Cantidad INT, 
    IN p_ID_Cliente INT,
    IN p_Color VARCHAR(50), 
    IN p_Total_precio DECIMAL(10,2),
    IN p_ID_Transporte INT
)
BEGIN
    DECLARE v_mensaje VARCHAR(50);
    IF p_accion = 'Insert' THEN
        INSERT INTO venta(ID_Articulo, Cantidad, ID_Cliente, Color, Total, Fecha, ID_Transporte) VALUES (p_ID_Articulo, p_Cantidad, p_ID_Cliente, p_Color, p_Total_precio, current_date() ,p_ID_Transporte);
        SET v_mensaje = 'INSERT OK.';
    ELSEIF p_accion = 'Delete' THEN
        DELETE FROM venta WHERE ID_Venta = p_ID_Venta;
        SET v_mensaje = 'DELETE OK.';
    ELSE
        SET v_mensaje = 'No se pudo realizar la acción.';
    END IF;
    SELECT v_mensaje AS mensaje;
END //
DELIMITER ;