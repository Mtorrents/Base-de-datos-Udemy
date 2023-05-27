/*Consulta con UNION WHERE*/

-- Primer ejemplo
SELECT Ventas_Fecha AS 'Fecha', Ventas_NroFactura AS 'Nro. Factura', Ventas_CliID AS 'ID. Cliente', Cli_RazonSocial AS 'Razón Social', Ventas_Total AS 'Total'
FROM ventas AS v, clientes AS c
WHERE v.Ventas_CliId=c.Cli_Id;

-- Segundo ejemplo
SELECT v.Ventas_CliID, c.Cli_RazonSocial, v.Ventas_NroFactura, v.Ventas_Fecha, 
d.VD_ProdId, p.Prod_descripcion, p.Prod_color, d.VD_cantidad, d.VD_precio, r.Prov_Nombre
FROM clientes AS c, ventas AS v, ventas_detalle AS d, productos AS p, proveedores AS r
WHERE v.Ventas_CliId = c.Cli_Id AND d.VD_ProdId=p.Prod_Id  AND v.Ventas_Id = d.VD_VentasId AND p.Prod_ProvId=r.Prov_Id;