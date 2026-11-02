# TP N.º 8 — Especificación de Requisitos y Consultas SQL

**Asignatura:** Base de Datos 1 — IPET 247  
**Proyecto personal:** Catálogo y colección de videojuegos  
**Versión:** 1.0

> Este trabajo continúa el proyecto del TP N.º 7. `consultas.sql` utiliza la base `coleccion_videojuegos` y sus tablas.

## 1. Introducción

### 1.1 Propósito
Definir los requisitos orientados a datos del sistema de catálogo y colección personal de videojuegos y las consultas SQL para obtener información útil.

### 1.2 Alcance
Permite consultar videojuegos, fechas de lanzamiento, plataformas, géneros, desarrolladoras, estado de colección, precios y reseñas. Esta versión se enfoca en la base de datos y las consultas, no en una aplicación web.

### 1.3 Usuario
La persona que administra su colección y necesita consultar juegos y obtener reportes.

## 2. Descripción general
La base organiza videojuegos y sus características en tablas relacionadas. `juegos_plataformas`, `juegos_generos` y `juegos_desarrolladoras` resuelven relaciones muchos a muchos; `biblioteca` registra estado y adquisición, y `resenas` guarda puntuaciones y comentarios.

## 3. Requisitos funcionales

**RF-01 — Consultar videojuegos.** El sistema deberá permitir consultar los videojuegos registrados con título, fecha de lanzamiento y clasificación por edad.  
*Criterio de aceptación:* los registros se muestran ordenados por título.

**RF-02 — Filtrar por fecha.** El sistema deberá permitir obtener videojuegos lanzados desde una fecha indicada.  
*Criterio de aceptación:* solo aparecen juegos con fecha igual o posterior a la indicada.

**RF-03 — Consultar la colección.** El sistema deberá mostrar los juegos de la colección junto con plataforma, estado, formato y precio.  
*Criterio de aceptación:* los datos relacionados se muestran mediante claves foráneas.

**RF-04 — Obtener estadísticas de la colección.** El sistema deberá calcular cantidad por estado, gasto total, precio promedio y gastos por plataforma.  
*Criterio de aceptación:* los resultados usan `COUNT`, `SUM`, `AVG` y `GROUP BY` según corresponda.

**RF-05 — Consultar géneros, desarrolladoras y reseñas.** El sistema deberá mostrar las características y reseñas asociadas a cada juego.  
*Criterio de aceptación:* los datos asociados se recuperan mediante `JOIN`.

## 4. Diez consultas principales en lenguaje natural

1. ¿Qué videojuegos están registrados, ordenados alfabéticamente?
2. ¿Qué juegos fueron lanzados desde el 1 de enero de 2023?
3. ¿Qué juegos tengo en mi colección, con plataforma y estado?
4. ¿Cuántos juegos hay registrados en cada estado?
5. ¿Cuál es el gasto total de la colección?
6. ¿Cuál es el precio promedio pagado por juego?
7. ¿Cuánto gasté en cada plataforma?
8. ¿Qué géneros tiene cada videojuego?
9. ¿Cuáles son las puntuaciones y comentarios de las reseñas?
10. ¿Qué desarrolladoras están asociadas a cada juego?

## 5. Implementación SQL
Las diez sentencias están en `consultas.sql`, comentadas con el número y la pregunta correspondiente. Incluyen `WHERE`, `ORDER BY`, `INNER JOIN`, `COUNT`, `SUM`, `AVG` y `GROUP BY`.

## 6. Verificación
1. Importar primero el SQL del TP N.º 7 y comprobar que exista `coleccion_videojuegos`.
2. Abrir phpMyAdmin y seleccionar esa base.
3. Ejecutar las consultas de `consultas.sql` desde la pestaña SQL.
4. Verificar que cada resultado responda a la pregunta. Los resultados dependen de los datos que existan.

## 7. Declaración de uso de IA

La consigna pide declarar la ayuda recibida. Adaptá la tabla para que refleje fielmente lo que revisaste, modificaste y aprendiste.

| Herramienta | Propósito | Prompt utilizado | Ajuste / edición | Aprendizaje |
|---|---|---|---|---|
| ChatGPT | Proponer requisitos, preguntas y sentencias SQL iniciales. | “Revisa el codigo sql del tp 8 y el proyecto de colección de videojuegos del TP 7.dime alguas funciones que puedo utilizar.” | Revisar las consultas en phpMyAdmin y adaptar las preguntas a las tablas reales. | Completar con lo aprendido sobre `WHERE`, `ORDER BY`, `JOIN`, `COUNT`, `SUM`, `AVG` y `GROUP BY`. |
