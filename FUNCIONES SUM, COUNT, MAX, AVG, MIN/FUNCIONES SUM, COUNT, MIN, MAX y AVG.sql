/*Funciones*/

-- Ejemplo suma 1
SELECT SUM(Ventas_Total) AS 'Total Ventas' FROM Ventas;

-- Ejemplo suma 2
SELECT SUM(Ventas_Total) AS 'Total Ventas' FROM Ventas
WHERE MONTH(Ventas_Fecha)=1 AND YEAR(Ventas_Fecha)=2018;

-- Ejemplo cantidad
SELECT COUNT(*) AS 'Cantidad Ventas' FROM Ventas
WHERE MONTH(Ventas_Fecha)=1 AND YEAR(Ventas_Fecha)=2018;

-- Ejemplo maximo
SELECT MAX(Ventas_Total) AS 'Venta Máxima' FROM Ventas
WHERE MONTH(Ventas_Fecha)=1 AND YEAR(Ventas_Fecha)=2018;

-- Ejemplo minimo
SELECT MIN(Ventas_Total) AS 'Venta Mínima' FROM Ventas
WHERE MONTH(Ventas_Fecha)=1 AND YEAR(Ventas_Fecha)=2018;

-- Ejemplo promedio
SELECT AVG(Ventas_Total) AS 'Venta Promedio' FROM Ventas
WHERE MONTH(Ventas_Fecha)=1 AND YEAR(Ventas_Fecha)=2018;