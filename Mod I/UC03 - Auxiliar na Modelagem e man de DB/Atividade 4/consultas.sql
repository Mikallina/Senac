
/*
	-- INSERT DE DADOS PARA TESTE
SELECT * FROM hospital_db_michelle.consultas;
INSERT INTO consultas (id_consulta, data_consulta,hora_consulta,valor_consulta,id_paciente,id_medico)
VALUES 
(45,'2020-01-13','16:15:00',180.0,6,7),
(46,'2020-10-16','15:28:00',150.0,9,8);

*/
-- Consulta 1: Consultas realizadas sem convênio em 2020
/*
SELECT
    c.id_consulta,
    c.data_consulta,
    c.valor_consulta
FROM
    consultas AS c
INNER JOIN
    cadastro_paciente AS p
ON
    c.id_paciente = p.id_paciente
WHERE
    YEAR(c.data_consulta) = 2020
    AND p.id_convenio IS NULL;
*/
/*
-- Valor médio das consultas sem convênio em 2020
SELECT
    AVG(c.valor_consulta) AS valor_medio_sem_convenio_2020
FROM
    consultas AS c
INNER JOIN
    cadastro_paciente AS p
ON
    c.id_paciente = p.id_paciente
WHERE
    YEAR(c.data_consulta) = 2020
    AND p.id_convenio IS NULL;
*/

/*
-- Consulta 2: Consultas realizadas com convênio em 2020
-- Update para Consulta
UPDATE consultas
SET valor_consulta = 200
WHERE id_consulta = 31;
UPDATE consultas
SET valor_consulta = 250
WHERE id_consulta = 32;

SELECT
    c.id_consulta,
    c.data_consulta,
    c.valor_consulta
FROM
    consultas AS c
INNER JOIN
    cadastro_paciente AS p
ON
    c.id_paciente = p.id_paciente
WHERE
    YEAR(c.data_consulta) = 2020
    AND p.id_convenio IS NOT NULL;

*/
/*
-- Valor médio das consultas com convênio em 2020
SELECT
    AVG(c.valor_consulta) AS valor_medio_com_convenio_2020
FROM
    consultas AS c
INNER JOIN
    cadastro_paciente AS p
ON
    c.id_paciente = p.id_paciente
WHERE
    YEAR(c.data_consulta) = 2020
    AND p.id_convenio IS NOT NULL;

*/

/*
-- Consulta 3: Todos os dados das internações que tiveram data de alta maior que a data prevista para a alta

-- UPDATE Internação
UPDATE internacao
SET data_alta = '2019-03-31'
WHERE id_internacao = 17;

SELECT
    i.*
FROM
    internacao AS i
WHERE
    i.data_alta > i.data_prev_alta;
*/

/*
-- Consulta 4: Receituário completo da primeira consulta registrada com receituário associado
SELECT
    r.*
FROM
    receita AS r
WHERE
    r.id_consulta = (SELECT MIN(id_consulta) FROM consultas WHERE id_consulta IN (SELECT id_consulta FROM receita));
*/

/*
-- Consulta 5: Todos os dados da consulta de maior valor e também da de menor valor (ambas as consultas não foram realizadas sob convênio)
SELECT
    MAX(c.valor_consulta) AS maior_valor_consulta,
    MIN(c.valor_consulta) AS menor_valor_consulta
FROM
    consultas AS c
WHERE
    c.id_paciente IN (SELECT id_paciente FROM cadastro_paciente WHERE id_convenio IS NULL);
    */
    /*
-- Consulta 6: Todos os dados das internações em seus respectivos quartos, calculando o total da internação a partir do valor de diária do quarto e o número de dias entre a entrada e a alta
SELECT
    i.*,
    q.valor_diaria,
    DATEDIFF(i.data_alta, i.data_entrada) AS dias_internacao,
    (q.valor_diaria * DATEDIFF(i.data_alta, i.data_entrada)) AS total_internacao
FROM
    internacao AS i
INNER JOIN
    tipo_quarto AS q
ON
    i.quarto_id = q.id_tipo_quarto;    
*/

/*
-- Consulta 7: Data, procedimento e número de quarto de internações em quartos do tipo "apartamento"
SELECT
    i.data_entrada,
    i.procedimento,
    q.numero AS numero_quarto
FROM
    internacao AS i
INNER JOIN
    quarto AS q
ON
    i.quarto_id = q.id_quarto
WHERE
    q.tipo_quarto_id = 2; 
*/

-- Consulta 8: Nome do paciente, data da consulta e especialidade de todas as consultas em que os pacientes eram menores de 18 anos na data da consulta e cuja especialidade não seja "pediatria", ordenando por data de realização da consulta

-- INSERT DADOS PARA CONSULTA
/*
SELECT * FROM hospital_db_michelle.cadastro_medico_especialidades;
INSERT INTO cadastro_medico_especialidades(cadastro_medico_id_medico, especialidades_id_especialidade)
VALUES
(3,5),
(3,1),
(4,2),
(1,1),
(3,4),
(5,6),
(5,7),
(6,6),
(7,7),
(8,7),
(9,1),
(10,2),
(2,3);

SELECT
    p.nome_paciente,
    c.data_consulta,
    e.nome_especialidade
FROM
    consultas AS c
INNER JOIN
    cadastro_paciente AS p ON c.id_paciente = p.id_paciente
INNER JOIN
    cadastro_medico AS m ON c.id_medico = m.id_medico
INNER JOIN
    cadastro_medico_especialidades AS me ON m.id_medico = me.cadastro_medico_id_medico
INNER JOIN
    especialidades AS e ON me.especialidades_id_especialidade = e.id_especialidade
WHERE
    DATEDIFF(c.data_consulta, p.data_nascimento) / 365 < 18
    AND e.nome_especialidade != 'Pediatria'
ORDER BY
    c.data_consulta;
*/
/*
-- Consulta 9: Nome do paciente, nome do médico, data da internação e procedimentos das internações realizadas por médicos da especialidade "gastroenterologia", que tenham acontecido em "enfermaria".
-- update
UPDATE `hospital_db_michelle`.`internacao` 
SET `procedimento` = 'Bariatrica' 
WHERE (`id_internacao` = '16');

SELECT
    p.nome_paciente,
    m.nome_medico,
    i.data_entrada,
    i.procedimento
FROM
    internacao AS i
INNER JOIN
    cadastro_medico AS m ON i.medico_id = m.id_medico
INNER JOIN
    cadastro_paciente AS p ON i.paciente_id = p.id_paciente
WHERE
    EXISTS (
        SELECT 1
        FROM
            cadastro_medico_especialidades AS me
        WHERE
            me.cadastro_medico_id_medico = m.id_medico
            AND me.especialidades_id_especialidade = (SELECT id_especialidade FROM especialidades WHERE nome_especialidade = 'Gastroenterologia')
    )
    AND i.quarto_id IN (SELECT id_quarto FROM quarto WHERE tipo_quarto_id = 1)
LIMIT 0, 1000;
*/

/*
-- Consulta 10: Os nomes dos médicos, seus números de registro no CRM e a quantidade de consultas que cada um realizou

ALTER TABLE cadastro_medico
ADD crm VARCHAR(45);
*/
/*
 -- update

UPDATE `hospital_db_michelle`.`cadastro_medico` SET `crm` = '12555458' WHERE (`id_medico` = '1');
UPDATE `hospital_db_michelle`.`cadastro_medico` SET `crm` = '2225852' WHERE (`id_medico` = '2');
UPDATE `hospital_db_michelle`.`cadastro_medico` SET `crm` = '22569874' WHERE (`id_medico` = '3');
UPDATE `hospital_db_michelle`.`cadastro_medico` SET `crm` = '2225478' WHERE (`id_medico` = '4');
UPDATE `hospital_db_michelle`.`cadastro_medico` SET `crm` = '2225698' WHERE (`id_medico` = '5');
UPDATE `hospital_db_michelle`.`cadastro_medico` SET `crm` = '222547' WHERE (`id_medico` = '6');
UPDATE `hospital_db_michelle`.`cadastro_medico` SET `crm` = '8889556' WHERE (`id_medico` = '7');
UPDATE `hospital_db_michelle`.`cadastro_medico` SET `crm` = '5566846' WHERE (`id_medico` = '8');
UPDATE `hospital_db_michelle`.`cadastro_medico` SET `crm` = '222657878' WHERE (`id_medico` = '9');
UPDATE `hospital_db_michelle`.`cadastro_medico` SET `crm` = '222589665' WHERE (`id_medico` = '10');
INSERT INTO `hospital_db_michelle`.`cadastro_medico` (`crm`) VALUES ('');

SELECT
    m.nome_medico,
    m.crm,
    COUNT(c.id_consulta) AS quantidade_consultas
FROM
    cadastro_medico AS m
LEFT JOIN
    consultas AS c ON m.id_medico = c.id_medico
GROUP BY
    m.nome_medico, m.crm
LIMIT 0, 1000;
*/

/*
-- Consulta Extra: Consulta que retorna dados de pacientes, médicos e consultas
-- Esta consulta retornará informações de pacientes, médicos e consultas associadas.
-- O resultado incluirá nomes de pacientes, nomes de médicos, datas das consultas e valores das consultas.
SELECT
    p.nome_paciente,
    m.nome_medico,
    c.data_consulta,
    c.valor_consulta
FROM
    cadastro_paciente AS p
INNER JOIN
    consultas AS c
ON
    p.id_paciente = c.id_paciente
INNER JOIN
    cadastro_medico AS m
ON
    c.id_medico = m.id_medico;
*/


