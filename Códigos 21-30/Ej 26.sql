SELECT 
     clientes.nombre, SUM(ventas.total_venta) AS total_gastado
FROM clientes
INNER JOIN ventas ON clientes.id_cliente = ventas.id_cliente
INNER JOIN detalle_ventas ON ventas.id_venta = detalle_ventas.id_venta
INNER JOIN productos ON productos.id_producto = detalle_ventas.id_producto
WHERE clientes.id_cliente NOT IN (
    SELECT DISTINCT v2.id_cliente
    FROM ventas v2
    JOIN detalle_ventas dv2 ON v2.id_venta = dv2.id_venta
    JOIN productos pr ON dv2.id_producto = pr.id_producto
    WHERE pr.categoria = 'Accesorios'
)

## EXPLICACIÓN:
1. SELECT DISTINCT v2.id_cliente: Esta subconsulta selecciona los ID de clientes que han comprado productos de la categoría 'Accesorios'. Se utiliza DISTINCT para asegurarse de que cada cliente se cuente solo una vez, incluso si ha comprado varios accesorios.
