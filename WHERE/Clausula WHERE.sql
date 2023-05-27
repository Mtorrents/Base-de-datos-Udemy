/*Consulta clausula WHERE*/

-- Primer ejemplo
SELECT Prod_Id, Prod_Descripcion, Prod_Precio FROM productos WHERE Prod_Precio>0;

-- Segundo ejemplo
SELECT * FROM productos 
WHERE Prod_Precio>0 AND Prod_Status=0;

-- Tercer ejemplo
SELECT * FROM productos
WHERE Prod_Precio>0 AND (Prod_Status=0 OR (Prod_Status = 1 AND Prod_ProvId=97));

-- Cuarto ejemplo
SELECT Ventas_Fecha, Ventas_CliId, Ventas_Total FROM ventas
WHERE Ventas_Fecha > '2010-01-03';

-- Quinto ejemplo
SELECT Ventas_Fecha, Ventas_CliId, Ventas_Total FROM ventas
WHERE Ventas_Fecha > '2018-01-03' AND Ventas_Fecha < '2018-01-10';

-- Sexto ejemplo
SELECT Ventas_Fecha, Ventas_CliId, Ventas_Total FROM ventas
WHERE Ventas_Fecha > '2018-01-03' AND Ventas_Fecha < '2018-01-10' AND Ventas_CliId<>1;

-- Septimo ejemplo
SELECT Ventas_Fecha, Ventas_CliId, Ventas_Total FROM ventas
WHERE Ventas_Fecha > '2018-01-03' AND Ventas_Fecha < '2018-01-10' AND Ventas_CliId<>1
AND Ventas_Total > 1000;