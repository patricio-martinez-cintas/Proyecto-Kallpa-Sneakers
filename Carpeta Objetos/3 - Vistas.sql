USE kallpa_sneakers;

-- 1)VIEW que muestra el monto total gastado por cliente en la empresa
-- Usa las tablas cliente y venta
CREATE OR REPLACE VIEW vw_total_gastado_por_cliente AS
SELECT c.cliente AS cliente, SUM(v.Total) AS Total_Comprado
FROM venta v JOIN cliente c ON (v.ID_Cliente = c.ID_Cliente)
GROUP BY 1
ORDER BY 2 ASC;


-- 2)View muestra la cantidad de artículos vendidos por año
-- Usa las tablas venta y articulo
CREATE OR REPLACE VIEW vw_cantidad_de_articulos_por_año AS
SELECT YEAR(v.Fecha) AS Año, a.articulo AS Articulo , SUM(Cantidad) AS 'Cantidad de pares vendidos'
FROM venta v JOIN articulo a ON (v.ID_Articulo = a.ID_Articulo)
GROUP BY 2, 1
ORDER BY 2 ASC , 1 ASC;


-- 3)View de empresas de transporte que mas usamos con los clientes, solo mostramos aquellas que si utilizamos
-- Usa las tablas transporte y venta
CREATE OR REPLACE VIEW vw_transporte_clientes AS
SELECT  t.Transporte AS Transporte, COUNT(DISTINCT v.ID_cliente) AS 'Cantidad clientes que usan este transporte'
FROM transporte t JOIN venta v ON (t.ID_Transporte = v.ID_Transporte)
GROUP BY 1
HAVING 2 > 0
ORDER BY 2 DESC;



-- 4)View vemos el costo que nos sale el par por proveedor
-- Usamos las tablas proveedor y materia_prima
CREATE OR REPLACE VIEW vw_costo_a_provedor_por_par AS
SELECT p.Proveedor, SUM(mp.Precio_por_par) AS 'Precio por par'
FROM  proveedor p JOIN materia_prima mp ON (p.ID_Proveedor = mp.ID_Proveedor)
GROUP BY 1
ORDER BY 2 DESC;


-- 5)View costo de articulo segun sus materias primas
-- Usa las tablas articulo, materia_prima y articulo_materia_prima
CREATE OR REPLACE VIEW vw_costo_articulo_segun_materia_prima AS
SELECT a.Articulo, SUM(mp.Precio_por_par) 
FROM articulo a JOIN articulo_materia_prima amt ON (a.ID_Articulo = amt.ID_Articulo)
JOIN  materia_prima mp ON (amt.ID_Materia_Prima = mp.ID_Materia_Prima)
GROUP BY 1
ORDER BY 2 DESC;


-- 6)View vemos los clientes de Cordoba
-- Usa la tabla cliente
CREATE OR REPLACE view vw_clientes_cordoba AS
SELECT * FROM cliente 
WHERE  Provincia LIKE 'Córdoba';


-- 7)View vemos los articulos que si vendimos mas de 500 unidades
-- Usa tabla articulo y venta
CREATE OR REPLACE VIEW vw_articulos_vendidos_mas_quinientos AS
SELECT Articulo, SUM(Cantidad) AS 'total_vendido'
FROM (SELECT v.cantidad, a.Articulo 
      FROM articulo a JOIN venta v ON a.ID_articulo = v.ID_articulo) AS subconsulta
GROUP BY Articulo
HAVING SUM(Cantidad) > 500
ORDER BY 2 DESC;



