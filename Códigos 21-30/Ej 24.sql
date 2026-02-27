SELECT strftime('%m', fecha_venta) AS mes, SUM(total_venta) AS total_mensual, COUNT(*) AS cantidad_transacciones, AVG(total_venta) AS ticket_promedio FROM ventas
WHERE strftime('%Y', fecha_venta) = '2025'
GROUP BY mes
ORDER BY mes;