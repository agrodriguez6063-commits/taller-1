SELECT cl.nombre, SUM(vt.total_venta) AS total_gastado
FROM ventas vt
JOIN clientes cl ON vt.id_cliente = cl.id_cliente
GROUP BY vt.id_cliente, cl.nombre
ORDER BY SUM(vt.total_venta) DESC
LIMIT 1;

## Explicación:
1. AS total_gastado: Se asigna un alias a la suma de las ventas para facilitar su lectura en el resultado.
ON vt.id_cliente = cl.id_cliente: Se establece la relación entre las tablas ventas y clientes utilizando el campo id_cliente.
