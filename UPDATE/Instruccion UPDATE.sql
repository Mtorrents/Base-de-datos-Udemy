/*Instruccion UPDATE*/
-- Ejemplo 1
UPDATE Productos SET Prod_Status = 0;

-- Ejemplo 2
UPDATE Productos SET Prod_Status = 1 WHERE Prod_Precio > 0;

-- Ejemplo 3
UPDATE Productos SET Prod_Precio = 250 WHERE Prod_ProvId IN
(SELECT Prov_Id FROM Proveedores WHERE Prov_Id=1);