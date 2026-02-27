SELECT clientes.nombre, COUNT(DISTINCT detalle_ventas.id_producto) AS variedad_productos FROM clientes
INNER JOIN ventas ON clientes.id_cliente = ventas.id_cliente
INNER JOIN detalle_ventas ON ventas.id_venta = detalle_ventas.id_venta
GROUP BY clientes.nombre
ORDER BY variedad_productos DESC