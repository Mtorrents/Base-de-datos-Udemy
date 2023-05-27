/*Consultas clausula ORDER BY*/

-- Primer ejemplo
SELECT * FROM clientes ORDER BY Cli_RazonSocial;

-- Segundo ejemplo
SELECT * FROM productos ORDER BY Prod_Descripcion;

-- Tercer ejemplo
SELECT * FROM Productos ORDER BY Prod_descripcion, Prod_Precio DESC;

-- Cuarto ejemplo
SELECT * FROM Productos ORDER BY Prod_status, Prod_Precio DESC;

-- Quinto ejemplo
SELECT * FROM Productos ORDER BY Prod_ProvId DESC;

-- Sexto ejemplo
SELECT * FROM Ventas_Detalle, Productos WHERE VD_ProdID=Prod_Id
ORDER BY Prod_ProvId DESC;