INSERT INTO ambulancia_sch.ambu_soat_se_siniestro_alt_asig
SELECT a_siniestro, nro_siniestro, nro_cuenta, 1, 1, 860, CURRENT_TIMESTAMP, 1, 755 FROM ambulancia_sch.ambu_soat_se_siniestro_alt WHERE estado=1 AND (a_siniestro, nro_siniestro, nro_cuenta) NOT IN (SELECT a_siniestro, nro_siniestro, nro_cuenta FROM ambulancia_sch.ambu_soat_se_siniestro_alt_asig) LIMIT 129