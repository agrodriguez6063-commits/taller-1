SELECT clientes.nombre,
       SUM(ventas.total_venta) AS total_gastado,
       CASE
           WHEN SUM(ventas.total_venta) > 5000 THEN 'Alto Valor'
           WHEN SUM(ventas.total_venta) BETWEEN 2000 AND 5000 THEN 'Medio Valor'
           ELSE 'Bajo Valor'
       END AS clasificacion
FROM ventas
INNER JOIN clientes ON clientes.id_cliente = ventas.id_cliente
GROUP BY clientes.nombre;

## EXPLICACIÓN:
CASE es una estructura de control que permite realizar comparaciones y devolver resultados basados en condiciones. En este caso, se utiliza para clasificar a los clientes en tres categorías (Alto Valor, Medio Valor, Bajo Valor) según el monto total gastado. La función SUM se utiliza para calcular el total gastado por cada cliente, y luego se evalúa esa suma para determinar la clasificación correspondiente.