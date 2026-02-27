WITH ventas_mensuales AS (
    SELECT strftime('%m', fecha_venta) AS mes, SUM(total_venta) AS total_mes
    FROM ventas
    WHERE strftime('%Y', fecha_venta) = '2025'
    GROUP BY mes
)
SELECT MAX(total_mes) - MIN(total_mes) AS diferencia_ventas FROM ventas_mensuales;

## EXPLICACIÓN:
1. %m: Esta función de SQLite extrae el mes de la fecha de venta, formateándolo como un número de dos dígitos (01 para enero, 02 para febrero, etc.).