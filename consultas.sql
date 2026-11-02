USE coleccion_videojuegos;

-- 1)
SELECT id_juego, titulo, fecha_lanzamiento, clasificacion_edad
FROM juegos ORDER BY titulo ASC;

-- 2)
SELECT titulo, fecha_lanzamiento FROM juegos
WHERE fecha_lanzamiento >= '2023-01-01'
ORDER BY fecha_lanzamiento DESC;

-- 3)
SELECT j.titulo, p.nombre AS plataforma, e.nombre AS estado, b.formato, b.precio_compra
FROM biblioteca b
INNER JOIN juegos j ON b.id_juego = j.id_juego
INNER JOIN plataformas p ON b.id_plataforma = p.id_plataforma
INNER JOIN estados_juego e ON b.id_estado = e.id_estado
ORDER BY j.titulo;

-- 4)
SELECT e.nombre AS estado, COUNT(*) AS cantidad_juegos
FROM biblioteca b INNER JOIN estados_juego e ON b.id_estado = e.id_estado
GROUP BY e.id_estado, e.nombre ORDER BY cantidad_juegos DESC;

-- 5)
SELECT SUM(precio_compra) AS gasto_total FROM biblioteca;

-- 6)
SELECT AVG(precio_compra) AS precio_promedio FROM biblioteca;

-- 7)
SELECT p.nombre AS plataforma, SUM(b.precio_compra) AS gasto_total
FROM biblioteca b INNER JOIN plataformas p ON b.id_plataforma = p.id_plataforma
GROUP BY p.id_plataforma, p.nombre ORDER BY gasto_total DESC;

-- 8)
SELECT j.titulo, GROUP_CONCAT(g.nombre ORDER BY g.nombre SEPARATOR ', ') AS generos
FROM juegos j
INNER JOIN juegos_generos jg ON j.id_juego = jg.id_juego
INNER JOIN generos g ON jg.id_genero = g.id_genero
GROUP BY j.id_juego, j.titulo ORDER BY j.titulo;

-- 9)
SELECT j.titulo, r.puntuacion, r.comentario, r.fecha_resena
FROM resenas r INNER JOIN juegos j ON r.id_juego = j.id_juego
ORDER BY r.puntuacion DESC, r.fecha_resena DESC;

-- 10)
SELECT j.titulo, d.nombre AS desarrolladora, d.pais, jd.rol
FROM juegos j
INNER JOIN juegos_desarrolladoras jd ON j.id_juego = jd.id_juego
INNER JOIN desarrolladoras d ON jd.id_desarrolladora = d.id_desarrolladora
ORDER BY j.titulo, d.nombre;
