SELECT clientes.nombre, correo, MAX(ventas.fecha_venta) AS ultima_compra FROM clientes
INNER JOIN ventas ON clientes.id_cliente = ventas.id_cliente
GROUP BY clientes.nombre, correo
HAVING MAX(ventas.fecha_venta) < DATE('now', '-6 months');