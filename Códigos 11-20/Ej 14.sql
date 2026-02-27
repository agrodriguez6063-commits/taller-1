SELECT * FROM ventas
WHERE strftime('%Y', fecha_venta) = '2025'
ORDER BY fecha_venta DESC;

## Ejercicio 14: Clasificación de Ventas por Cliente
Strftime es una función de SQLite que formatea fechas. En este caso, se utiliza para extraer el año de la fecha de venta y compararlo con '2025'. La consulta selecciona todas las ventas realizadas en el año 2025 y las ordena por fecha de venta en orden descendente, mostrando primero las ventas más recientes.