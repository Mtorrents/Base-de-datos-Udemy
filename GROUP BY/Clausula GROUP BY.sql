/*Clausula GROUP BY*/

-- Ejemplo agrupacion por fecha
SELECT Ventas_Fecha, SUM(Ventas_Total) AS Total
FROM Ventas
GROUP BY Ventas_Fecha;

-- Ejemplo agrupacion por año, mes y día
SELECT YEAR(Ventas_Fecha) AS Año,
       MONTH(Ventas_Fecha) AS Mes,
       DAY(Ventas_Fecha) AS Día,
       SUM(Ventas_Total) AS Total
FROM Ventas
GROUP BY Año, Mes, Día;

-- Ejemplo agrupacion por año y mes
SELECT YEAR(Ventas_Fecha) AS Año,
       MONTH(Ventas_Fecha) AS Mes,
       SUM(Ventas_Total) AS Total
FROM Ventas
GROUP BY Año, Mes;

-- Ejemplo agrupacion por año y mes sacando maximo
SELECT YEAR(Ventas_Fecha) AS Año,
       MONTH(Ventas_Fecha) AS Mes,
       MAX(Ventas_Total) AS Máximo
FROM Ventas
GROUP BY Año, Mes;

-- Ejemplo agrupacion por año y mes sacando minimo
SELECT YEAR(Ventas_Fecha) AS Año,
       MONTH(Ventas_Fecha) AS Mes,
       MIN(Ventas_Total) AS Minimo
FROM Ventas
GROUP BY Año, Mes;

-- Ejemplo agrupacion por año y mes sacando promedio
SELECT YEAR(Ventas_Fecha) AS Año,
       MONTH(Ventas_Fecha) AS Mes,
       AVG(Ventas_Total) AS Promedio
FROM Ventas
GROUP BY Año, Mes;

-- Ejemplo agrupacion por año y mes donde se cumpla la condicion de cliente consumidor final
SELECT YEAR(Ventas_Fecha) AS Año,
       MONTH(Ventas_Fecha) AS Mes,
       SUM(Ventas_Total) AS Total
FROM Ventas
WHERE Ventas_CliID=1
GROUP BY Año, Mes;

-- Ejemplo agrupacion por año y mes donde se cumpla la condicion de cliente consumidor final y se saca el promedio, maximo, minimo y contar
SELECT YEAR(Ventas_Fecha) AS Año,
       MONTH(Ventas_Fecha) AS Mes,
       SUM(Ventas_Total) AS Total,
       MIN(Ventas_Total) AS Mínimo,
       MAX(Ventas_Total) AS Máximo,
       AVG(Ventas_Total) AS Promedio,
       COUNT(Ventas_Total) AS Operaciones
FROM Ventas
WHERE Ventas_CliID=1
GROUP BY Año, Mes;