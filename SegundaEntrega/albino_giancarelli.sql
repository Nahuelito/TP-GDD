-- 1. Listar para una red de distribución, su identificación, estación cabecera y compañías propietarias de las mismas.
SELECT id, nombre_estacion, nombre_compania
FROM tp.red_distribucion rd
JOIN tp.red_pertenece_compania rc ON (rd.id = rc.numero_red);
-- 2. Listar el nombre de la provincia con el menor número de zonas de servicio y la cantidad de zonas de servicio que posee.
SELECT MIN(count) 
FROM (
  SELECT COUNT(nombre_provincia) AS count 
  FROM zona 
  GROUP BY nombre_provincia
) AS auxiliar;
-- 3. Para  centrales nuaquellascleares que en los últimos 12 meses hubieran adquirido más de 100 tn de plutonio, listar los nombres de las centrales nucleares, los proveedores y transportistas, fechas y cantidades de plutonio comprado durante ese período.
SELECT
 nombre_proveedor AS proveedor,
 transportista.nombre AS transportista,
 toneladas,
 fecha
FROM entrega_proveeduria
JOIN
( SELECT
  nombre_productor,
  SUM(CASE WHEN fecha > CURRENT_DATE - INTERVAL '12 month' THEN toneladas END)
 FROM tp.entrega_proveeduria
 GROUP BY nombre_productor
 HAVING SUM(CASE WHEN fecha > CURRENT_DATE - INTERVAL '12 month' THEN toneladas END) > 100
) AS auxiliar ON auxiliar.nombre_productor = entrega_proveeduria.nombre_productor
JOIN transportista ON transportista.matricula = entrega_proveeduria.matricula_transportista
WHERE fecha > CURRENT_DATE - INTERVAL '12 month';
-- 4. Mostrar el nombre, y la producción media y máxima, de los productores básicos que proveen energía a todas las estaciones primarias.
WITH entregas AS (
 SELECT DISTINCT nombre_productor,nombre_estacion
 FROM tp.entrega_produccion
) SELECT 
 p.nombre,
 p.produccion_media,
 p.produccion_maxima
FROM tp.productor p
LEFT JOIN entregas e ON e.nombre_productor = p.nombre
GROUP BY p.nombre
HAVING COUNT(*)= (SELECT COUNT(*) FROM tp.estacion_primaria)
ORDER BY p.nombre;
-- 5. Para las redes de distribución que en los últimos 6 meses han tenido remanentes de energía se requiere mostrar la identificación de la red de distribución, la fecha, el volumen de energía y la red a cuál se traspasó la energía remanente.
SELECT 
 * 
FROM tp.suministro_inter_red
WHERE fecha > current_date - interval '6 month';
-- 6. Mostrar el nombre de las estaciones primarias que son o han sido abastecidas por las centrales térmicas que producen un volumen de emisiones de gases mayor a 50 ppm (partes por millón).
SELECT DISTINCT 
 nombre_estacion 
FROM tp.entrega_produccion 
JOIN tp.productor_termico ON productor_termico.nombre = entrega_produccion.nombre_productor 
WHERE volumen_gas > 50;
-- 7. Listar aquellas estaciones primarias que han sido abastecidas por centrales hidroeléctricas o solares, pero nunca abastecidas por centrales nucleares o térmicas.
SELECT
 nombre
FROM tp.estacion_primaria esp
WHERE 
( 
  EXISTS (
   SELECT 
    * 
   FROM tp.entrega_produccion ep
   JOIN tp.productor_hidroelectrico ph ON ph.nombre = ep.nombre_productor
   WHERE esp.nombre = ep.nombre_estacion
  )
  OR
  EXISTS (
   SELECT 
    * 
   FROM tp.entrega_produccion ep
   JOIN tp.productor_solar ph on ph.nombre = ep.nombre_productor
   WHERE esp.nombre = ep.nombre_estacion
  )
)
AND
NOT EXISTS (
 SELECT 
  * 
 FROM tp.entrega_produccion ep
 JOIN tp.productor_nuclear ph on ph.nombre = ep.nombre_productor
 WHERE esp.nombre = ep.nombre_estacion
)
AND
NOT EXISTS (
 SELECT 
  * 
 FROM tp.entrega_produccion ep
 JOIN tp.productor_termico ph on ph.nombre = ep.nombre_productor
 WHERE esp.nombre = ep.nombre_estacion
);
-- 8. Listar la provincia y la zona de servicio con el máximo consumo medio. En el listado mostrar provincia, zona de servicio, máximo consumo medio y la cantidad de consumidores por categoría.
SELECT 
 * 
FROM tp.zona 
WHERE consumo_medio = (SELECT max(consumo_medio) FROM tp.zona);
