USE kallpa_sneakers;

-- 1) Función fn_calcular_porcentaje_provincia
-- Esta funcion te devuelve el porcentaje de venta de la provincia que se ingrese con respecto a la venta total que hubo. 
-- Actua sobre las tablas venta, cliente 

DROP FUNCTION IF EXISTS fn_calcular_porcentaje_provincia;

DELIMITER //
CREATE FUNCTION fn_calcular_porcentaje_provincia(p_provincia VARCHAR(250)) RETURNS VARCHAR(250)
DETERMINISTIC
BEGIN
    DECLARE cantidad_total DECIMAL(10,2);
    DECLARE cantidad_ubicacion_elegida DECIMAL(10,2);
    DECLARE porcentaje DECIMAL(10,2);
    DECLARE resultado VARCHAR(200);

    SELECT SUM(Total) INTO cantidad_total FROM venta;
    SELECT SUM(v.Total) INTO cantidad_ubicacion_elegida
    FROM venta v
    JOIN cliente c ON (v.ID_Cliente = c.ID_Cliente)
    WHERE c.Provincia = p_provincia;
    IF cantidad_ubicacion_elegida > 0 THEN
        SET porcentaje = (cantidad_ubicacion_elegida * 100) / cantidad_total;
    ELSE
        SET porcentaje = 0;
    END IF;
    SET resultado = CONCAT(p_provincia, ' representa el: ', porcentaje, '%',' de ventas total');

    RETURN resultado;
END //
DELIMITER ;


-- 2) Función fn_mostrar_articulo_mas_vendido_de_cliente_por_año
-- Esta función devuelve el articulo mas vendido por el cliente y año que ingresemos como parametros de entrada
-- Usa las tablas venta, articulo y cliente

DROP FUNCTION IF EXISTS fn_mostrar_articulo_mas_vendido_de_cliente_por_año;

DELIMITER //
CREATE FUNCTION fn_mostrar_articulo_mas_vendido_de_cliente_por_año(p_cliente VARCHAR(200), p_año INT) RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    DECLARE respuesta VARCHAR(100); 
    IF EXISTS (
        SELECT 1
        FROM venta v
        JOIN cliente c ON (v.ID_Cliente = c.ID_Cliente)
        WHERE c.cliente = p_cliente AND YEAR(Fecha) = p_año
    ) THEN
        SELECT tabla_cliente.articulo INTO respuesta
        FROM (
            SELECT a.articulo, SUM(v.Total)
            FROM venta v
            JOIN articulo a ON (v.ID_Articulo = a.ID_Articulo)
            JOIN cliente c ON (v.ID_Cliente = c.ID_Cliente)
            WHERE c.cliente = p_cliente AND YEAR(Fecha) = p_año
            GROUP BY 1
            ORDER BY 2 DESC
            LIMIT 1
        ) AS tabla_cliente;
    ELSE
        SET respuesta = 'No hay artículo o cliente';
    END IF;

    RETURN respuesta;
END//
DELIMITER ;
