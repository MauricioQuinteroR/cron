SELECT B.nombres[1]||' '||B.nombres[2] AS nombres, B.apellidos[1]||' '||B.apellidos[2] AS apellidos, A.fecha_registro, A.count AS Trabajado FROM(SELECT id_usuario, fecha_registro::date, count(*) FROM maos_sch.maos_soat_se_siniestro WHERE estado=0 AND fecha_registro>=cast(date_trunc('month', current_date) as date) AND fecha_registro < cast(current_date as date) GROUP BY id_usuario, fecha_registro::date)A INNER JOIN usuario_sis B ON A.id_usuario=B.id_usuario ORDER BY fecha_registro DESC

--SELECT B.nombres[1]||' '||B.nombres[2] AS nombres, B.apellidos[1]||' '||B.apellidos[2] AS apellidos, A.fecha_registro, A.count AS Trabajado FROM(SELECT id_usuario, fecha_registro::date, count(*) FROM maos_sch.maos_soat_se_siniestro WHERE estado=0 AND fecha_registro>='2021-11-01' AND fecha_registro < cast(current_date as date) GROUP BY id_usuario, fecha_registro::date)A INNER JOIN usuario_sis B ON A.id_usuario=B.id_usuario ORDER BY fecha_registro DESC