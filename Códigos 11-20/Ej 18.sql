SELECT cl.nombre, (strftime('%Y', 'now') - strftime('%Y', cl.fecha_nacimiento)) AS edad
FROM clientes cl
JOIN ventas v ON cl.id_cliente = v.id_cliente
GROUP BY cl.id_cliente, cl.nombre, cl.fecha_nacimiento
HAVING edad > 60
ORDER BY edad DESC;

## Explicación:
1. strftime('%Y', 'now') - strftime('%Y', cl.fecha_nacimiento): Esta parte calcula la edad de cada cliente restando el año actual (obtenido con strftime('%Y', 'now')) del año de nacimiento del cliente (obtenido con strftime('%Y', cl.fecha_nacimiento)).
2. HAVING edad > 60: Esta cláusula filtra los resultados para incluir solo aquellos clientes cuya edad es mayor a 60 años.