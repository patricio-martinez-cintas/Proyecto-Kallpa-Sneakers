USE kallpa_sneakers;

-- 1) Store Procedure 1 'sp_clientes_mayores_compradores_articulos'
-- Permite devolver la lista de los clientes que mas han vendidos pares segun un articulo que hemos agregado como parametro y segun el año indicado también. 
-- Actua sobre las tablas venta, cliente y articulo.

DELIMITER //

DROP PROCEDURE IF EXISTS sp_clientes_mayores_compradores_articulos;

CREATE PROCEDURE IF NOT EXISTS sp_clientes_mayores_compradores_articulos (
    IN p_articulo VARCHAR(25), 
    IN p_año INT
)
BEGIN		-- Traemos la cantidad de pares vendidos por clientes de acuerdo al articulo y año que ingresemos
    SELECT c.Cliente, SUM(v.Cantidad) AS 'Cantidad de pares'
    FROM venta v 
    JOIN cliente c ON (c.ID_Cliente = v.ID_Cliente)
    JOIN articulo a ON (a.ID_Articulo = v.ID_Articulo)
    WHERE a.articulo = p_articulo AND YEAR(v.fecha) = p_año
    GROUP BY c.Cliente
    ORDER BY SUM(v.Cantidad) DESC;
END //
DELIMITER ;

-- Probamos el store procedure
CALL sp_clientes_mayores_compradores_articulos('Condor' ,2022);


-- 2) Store procedure 2 'sp_mostrar_transporte_por_localidad'
-- Te trae de acuerdo a la localidad que señalemos como parametro los transportes que nos llevaron mercaderia a esa zona.  Ademas guarda la consulta realizada para ello en un parametro de salida.
-- Actua sobre las tablas transporte, cliente y venta(como conector entre las otras dos tablas)
DELIMITER //

DROP PROCEDURE IF EXISTS sp_mostrar_transporte_por_localidad;

CREATE PROCEDURE IF NOT EXISTS sp_mostrar_transporte_por_localidad (
    IN p_localidad VARCHAR(20),
    OUT p_tabla_transporte VARCHAR(500)
)
BEGIN
    -- Construimos la consulta SQL utilizando CONCAT para incluir el parámetro p_localidad
    SET @consulta = CONCAT('SELECT DISTINCT t.Transporte, c.Localidad, c.Provincia
        FROM transporte t 
        JOIN venta v ON (t.ID_Transporte = v.ID_Transporte)
        JOIN cliente c ON (c.ID_Cliente = v.ID_Cliente)
        WHERE c.Localidad LIKE ''%', p_localidad, '%''');

    -- Asignamos el valor de @consulta a p_tabla_transporte
    SET p_tabla_transporte = @consulta;

    -- Preparamos la consulta, la ejecutamos y la liberamos despues de que se haya ejecutado
    PREPARE stmt FROM @consulta;    
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //

DELIMITER ;
-- Llamamos la store procedure
CALL sp_mostrar_transporte_por_localidad('Monte', @p_tabla_transporte);

-- Mostrar el resultado de la consulta almacena en el parametro de salida
SELECT @p_tabla_transporte;
