USE kallpa_sneakers;

/*Prueba trigger venta*/

INSERT INTO venta(ID_Articulo, Cantidad, ID_Cliente, Color, Total, Fecha, ID_Transporte)
VALUES (1,12,1,'Azul','20000',curdate(),12);

UPDATE venta
SET Total = 25000
WHERE ID_Venta = 342;

DELETE FROM venta
WHERE ID_Venta = 342; 

/*Prueba trigger articulo*/

INSERT INTO articulo(Articulo, Descripcion, Precio, Talles, Genero, Ultima_Modificacion)
VALUES ('Prueba', 'Descripcion de articulo', 20000,'35 al 45', 'Unisex', curdate());

UPDATE articulo
SET Precio = 25000
WHERE ID_Articulo = 1212;

DELETE FROM articulo
WHERE ID_Articulo = 12;

-- Comprobamos tabla auditoria_general
SELECT * FROM auditoria_general;


/*Prueba views*/

-- Probamos View vw_total_gastado_por_cliente
SELECT * FROM  vw_total_gastado_por_cliente;

-- Probamos View vw_cantidad_de_articulos_por_año
SELECT * FROM vw_cantidad_de_articulos_por_año;

-- Probamos View vw_transporte_clientes
SELECT * FROM vw_transporte_clientes;

-- Probamos View vw_costo_a_provedor_por_par
SELECT * FROM vw_costo_a_provedor_por_par;

-- Probamos View vw_costo_articulo_segun_materia_prima
SELECT * FROM vw_costo_articulo_segun_materia_prima;

-- Probamos View vw_clientes_cordoba
SELECT * FROM vw_clientes_cordoba;

-- Probamos View vw_articulos_vendidos_mas_quinientos
SELECT * FROM vw_articulos_vendidos_mas_quinientos;



/*Probamos Funciones*/

-- Probamos la funcion fn_calcular_porcentaje_provincia
SELECT fn_calcular_porcentaje_provincia('Córdoba');

-- Probamos la funcion fn_mostrar_articulo_mas_vendido_de_cliente_por_año
SELECT fn_mostrar_articulo_mas_vendido_de_cliente_por_año ('Graciela', 2022);





/*Probamos funciones*/
-- Probamos la funcion fn_calcular_porcentaje_provincia
SELECT fn_calcular_porcentaje_provincia('Córdoba');

-- Probamos la funcion fn_mostrar_articulo_mas_vendido_de_cliente_por_año
SELECT fn_mostrar_articulo_mas_vendido_de_cliente_por_año ('Graciela', 2023);


/*Probamos Stored Procedure*/

-- Probamos el stored procedure sp_clientes_mayores_compradores_articulos
CALL sp_clientes_mayores_compradores_articulos('Condor' ,2022);

-- Probamos el stored procedure sp_mostrar_transporte_por_localidad
CALL sp_mostrar_transporte_por_localidad('Monte', @p_tabla_transporte);
-- Mostrar el resultado de la consulta almacena en el parametro de salida
SELECT @p_tabla_transporte;

-- Probamos el stored procedure sp_ordenar_busqueda
CALL sp_ordenar_busqueda('ID_Venta', 'DESC');

SELECT * FROM venta;
-- Probamos el stored procedure sp_insert_delete_venta
CALL sp_insert_delete_venta('INSERT', 343,'1',20,1,'Azul',30000,1);
CALL sp_insert_delete_venta('Delete', 343, NULL, NULL, NULL, NULL, NULL, NULL);
