/*Clausula LIKE*/

-- Ejemplo 1
SELECT * FROM clientes WHERE Cli_RazonSocial LIKE '%pab%';

-- Ejemplo 2
SELECT Prod_Id, Prod_Descripcion, Prod_Color
FROM Productos
WHERE Prod_Descripcion LIKE 'AD%';

-- Ejemplo 3
SELECT Prod_Id, Prod_Descripcion, Prod_Color
FROM Productos
WHERE Prod_Descripcion LIKE '%AD%';

-- Ejemplo 4
SELECT Prod_Id, Prod_Descripcion, Prod_Color
FROM Productos
WHERE Prod_Descripcion LIKE '%DORADO%';

-- Ejemplo 5
SELECT Prod_Id, Prod_Descripcion, Prod_Color
FROM Productos
WHERE Prod_Descripcion LIKE '%FERROLUX%';

-- Ejemplo 6
SELECT Prod_Id, Prod_Descripcion, Prod_Color
FROM Productos
WHERE CONCAT(Prod_Descripcion, Prod_Color) LIKE '%AD%'