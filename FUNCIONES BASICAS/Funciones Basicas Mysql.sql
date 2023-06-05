/*Funciones Basicas*/

-- Funcion IF
SELECT Prod_Id, Prod_Descripcion, IF(Prod_Status = 1, 'Habilitado','Deshabilitado') AS Estado
FROM Productos;

-- Funcion CASE 1
SELECT Prod_Id, Prod_Descripcion, CASE WHEN Prod_Status=1 THEN 'Habilitado' ELSE 'Deshabilitado' END AS Estado
FROM Productos;

-- Funcion CASE 2
SELECT Prod_Id, Prod_Descripcion, CASE WHEN Prod_Status=1 THEN 'Habilitado' 
									   WHEN Prod_Status=0 THEN 'Deshabilitado'
                                       WHEN Prod_Status=2 THEN 'Otro Estado'
                                       END AS Estado
FROM Productos;

-- Funcion CASE 3
SELECT Prod_Id, Prod_Descripcion, CASE Prod_Status
									   WHEN 1 THEN 'Habilitado' 
									   WHEN 0 THEN 'Deshabilitado'
									   WHEN 2 THEN 'Otro Estado'
									END AS Estado
FROM Productos;

-- Funcion PARTE
SELECT Prod_Id, Prod_Descripcion, SUBSTR(Prod_Descripcion,1,10) AS Parte
FROM Productos;

-- Funcion Parte case
SELECT Prod_Id, Prod_Descripcion, CASE SUBSTR(Prod_Descripcion,1,1)
										WHEN 'A' THEN 'Letra A'
                                        WHEN 'B' THEN 'Letra B'
									END AS Ejercicio
FROM Productos;

-- Funcion Parte ucase
SELECT Prod_Id, Prod_Descripcion, UCASE(CASE SUBSTR(Prod_Descripcion,1,1)
										WHEN 'A' THEN 'Letra A'
                                        WHEN 'B' THEN 'Letra B'
									END) AS Ejercicio
FROM Productos;

-- Funcion current date
SELECT CURRENT_DATE;

-- Funcion current timestamp
SELECT CURRENT_TIMESTAMP;

-- Funcion current timestamp 
SELECT CURRENT_TIMESTAMP, Prod_Id FROM Productos;

-- Funcion base de datos para que nos diga el nombre
SELECT DATABASE(), Prod_Id FROM Productos;

-- Funcion que nos calcula la fecha 
SELECT DATEDIFF('2018-01-01', '2018-06-01') AS Fechas, Prod_Id FROM Productos;

-- Funcion que nos calcula la fecha actual al dia de las ventas
SELECT DATEDIFF(CURRENT_DATE, Ventas_Fecha) AS Fechas, Ventas_NroFactura FROM Ventas;

-- Funcion que nos calcula el dia de la semana segun la fecha actual y nos trae el nro de factura de ventas
SELECT DAYOFWEEK(CURRENT_DATE) AS Fechas, Ventas_NroFactura FROM Ventas;
								