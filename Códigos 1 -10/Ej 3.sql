SELECT nombre, precio FROM productos
WHERE categoria = 'Paracaídas'
AND precio = (SELECT MAX(precio) FROM productos WHERE categoria = 'Paracaídas');