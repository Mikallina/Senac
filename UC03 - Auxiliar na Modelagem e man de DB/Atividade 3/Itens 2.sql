/*
SELECT * FROM hospital_db_michelle.cadastro_medico;
ALTER TABLE cadastro_medico
ADD em_atividade BIT;
*/
/*
UPDATE cadastro_medico
SET em_atividade = 0
LIMIT 2;
*/
/*
UPDATE cadastro_medico
SET em_atividade = 1
WHERE em_atividade IS NULL;
*/
/*
UPDATE internacao
SET data_alta = DATE_ADD(data_entrada, INTERVAL 3 DAY)
WHERE quarto_id IN (SELECT id_quarto FROM quarto WHERE tipo_quarto_id = 1);
*/
/*
DELETE FROM convenio WHERE id_convenio = @ultimo_convenio_id;
*/