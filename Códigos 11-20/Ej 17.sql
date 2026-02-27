SELECT 
    '$' || printf('%,.2f', SUM(total_venta / 0.70)) AS total_sin_descuento,
    '$' || printf('%,.2f', SUM(total_venta)) AS total_con_descuento,
    '$' || printf('%,.2f', SUM(total_venta / 0.70 - total_venta)) AS dinero_perdido
FROM ventas
WHERE cupon_usado = 'ULTIMO_SUSPIRO';

## EXPLICACIÓN:
2f es un formato de cadena que indica que el número debe ser formateado con dos decimales. El símbolo '$' se concatena al resultado para mostrar el monto en formato de moneda. La función printf se utiliza para formatear el número con comas como separadores de miles y dos decimales, lo que mejora la legibilidad del resultado.
