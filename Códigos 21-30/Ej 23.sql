SELECT productos.nombre, SUM(detalle_ventas.cantidad * detalle_ventas.precio_unitario) AS ingresos
FROM detalle_ventas
INNER JOIN productos ON productos.id_producto = detalle_ventas.id_producto
GROUP BY productos.nombre
ORDER BY ingresos DESC
LIMIT 5;