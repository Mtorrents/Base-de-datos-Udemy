/*Clausula IN/NOT IN*/

-- Lista limpia con un registro unico por cada cliente de mi tabla ventas
SELECT DISTINCT(Ventas_CliID) AS Cliente FROM Ventas;

-- Lista de clientes que no me han comprado
SELECT Cli_ID AS 'Nro. Cliente', Cli_RazonSocial AS Nombre
FROM Clientes
WHERE Cli_ID NOT IN(SELECT DISTINCT(Ventas_CliID) AS Cliente FROM Ventas);

-- Lista de clientes que no me han comprado en febrero
SELECT Cli_ID AS 'Nro. Cliente', Cli_RazonSocial AS Nombre
FROM Clientes
WHERE Cli_ID NOT IN(SELECT DISTINCT(Ventas_CliID) AS Cliente FROM Ventas
WHERE Ventas_Fecha >='2018-02-01' AND Ventas_Fecha < '2018-03-01');

-- Lista de los clientes que me han comprado en febrero
SELECT Cli_ID AS 'Nro. Cliente', Cli_RazonSocial AS Nombre
FROM Clientes
WHERE Cli_ID IN(SELECT DISTINCT(Ventas_CliID) AS Cliente FROM Ventas
WHERE Ventas_Fecha >='2018-02-01' AND Ventas_Fecha < '2018-03-01')
ORDER BY Cli_ID;

-- Listar los clientes 1,5,6,10
SELECT Cli_ID AS 'Nro. Cliente', Cli_RazonSocial AS Nombre
FROM Clientes
WHERE Cli_ID IN(1,5,6,10)
ORDER BY Cli_ID;

-- Lista de todos los productos con estado 1 y 0
SELECT Prod_ID, Prod_Descripcion
FROM Productos
WHERE Prod_Status IN(1,0);

-- Lista de los productos que nunca fueron vendidos
SELECT Prod_Id, Prod_Descripcion
FROM Productos 
WHERE Prod_Id NOT IN
(SELECT DISTINCT(VD_ProvId) FROM Ventas_Detalle);

-- Lista de los productos que nunca fueron vendidos en las fechas despues del primero de enero
SELECT Prod_Id, Prod_Descripcion
FROM Productos 
WHERE Prod_Id NOT IN
(SELECT DISTINCT(VD_ProdId) FROM Ventas_Detalle, Ventas
WHERE VD_VentasId=Ventas_Id AND Ventas_Fecha > '2018-01-01');