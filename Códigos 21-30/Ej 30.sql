SELECT 
    CASE 
        WHEN CAST((julianday('now') - julianday(c.fecha_nacimiento)) / 365.25 AS INTEGER) BETWEEN 18 AND 29 THEN '18-29'
        WHEN CAST((julianday('now') - julianday(c.fecha_nacimiento)) / 365.25 AS INTEGER) BETWEEN 30 AND 39 THEN '30-39'
        WHEN CAST((julianday('now') - julianday(c.fecha_nacimiento)) / 365.25 AS INTEGER) BETWEEN 40 AND 49 THEN '40-49'
        WHEN CAST((julianday('now') - julianday(c.fecha_nacimiento)) / 365.25 AS INTEGER) BETWEEN 50 AND 59 THEN '50-59'
        WHEN CAST((julianday('now') - julianday(c.fecha_nacimiento)) / 365.25 AS INTEGER) BETWEEN 60 AND 69 THEN '60-69'
        ELSE '70+'
    END AS rango_edad,
    COUNT(DISTINCT c.id_cliente) AS clientes_unicos,
    COUNT(v.id_venta) AS num_transacciones,
    SUM(v.total_venta) AS ingresos_totales
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY rango_edad
ORDER BY MIN(CAST((julianday('now') - julianday(c.fecha_nacimiento)) / 365.25 AS INTEGER));