/*Clausula BETWEEN*/

-- Ejemplo BETWEEN 1
SELECT Ventas_Fecha, Ventas_CliID, Ventas_Total
FROM Ventas
WHERE Ventas_Fecha BETWEEN '2018-01-01' AND '2018-01-04';

-- Ejemplo BETWEEN 2
SELECT Ventas_Fecha, Ventas_CliID, Ventas_Total
FROM Ventas
WHERE Ventas_CliID BETWEEN 2 AND 100