UPDATE ambulancia_sch.ambu_soat_se_siniestro_alt_asig SET id_usuario_asignado=477 WHERE (a_siniestro, nro_siniestro, nro_cuenta) IN (SELECT a_siniestro, nro_siniestro, nro_cuenta FROM ambulancia_sch.ambu_soat_se_siniestro_alt_asig WHERE (a_siniestro, nro_siniestro, nro_cuenta) IN (SELECT a_siniestro, nro_siniestro, nro_cuenta FROM ambulancia_sch.ambu_soat_se_siniestro_alt WHERE estado=1) AND id_usuario_asignado=755 LIMIT 2)

--UPDATE ambulancia_sch.ambu_soat_se_siniestro_alt_asig SET id_usuario_asignado=446 WHERE (a_siniestro, nro_siniestro, nro_cuenta) IN (SELECT a_siniestro, nro_siniestro, nro_cuenta FROM ambulancia_sch.ambu_soat_se_siniestro_alt_asig WHERE (a_siniestro, nro_siniestro, nro_cuenta) IN (SELECT a_siniestro, nro_siniestro, nro_cuenta FROM ambulancia_sch.ambu_soat_se_siniestro_alt WHERE estado=1) AND a_siniestro=2021 and nro_siniestro=99331 and nro_cuenta=2)


--UPDATE ambulancia_sch.ambu_soat_se_siniestro_alt_asig SET id_usuario_asignado=755 WHERE (a_siniestro, nro_siniestro, nro_cuenta) IN (SELECT a_siniestro, nro_siniestro, nro_cuenta FROM ambulancia_sch.ambu_soat_se_siniestro_alt_asig WHERE (a_siniestro, nro_siniestro, nro_cuenta) IN (SELECT a_siniestro, nro_siniestro, nro_cuenta FROM ambulancia_sch.ambu_soat_se_siniestro_alt WHERE estado=1 and fecha_registro <= '2021-11-14') AND id_usuario_asignado=477)