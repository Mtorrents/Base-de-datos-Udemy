/*Clausula INNER JOIN*/

-- Ejemplo
SELECT Ventas_fecha, Ventas_NroFactura, Ventas_CliID, Cli_RazonSocial, VD_ProdID, Prod_Descripcion, Prod_ProvID,
	   Prov_Nombre,VD_Cantidad, VD_Precio, (VD_Cantidad * VD_Precio) AS Parcial
FROM Ventas
INNER JOIN ventas_Detalle ON VD_VentasID = Ventas_ID
INNER JOIN Productos ON VD_ProdID = Prod_ID
INNER JOIN Proveedores ON Prod_ProvID = Prov_ID
INNER JOIN Clientes ON Ventas_CliID = Cli_ID;
