USE hospital_db_michelle;
SELECT * FROM hospital_db_michelle.especialidades;
INSERT INTO especialidades (id_especialidade, nome_especialidade)
VALUES
(1, 'Pediatria'),
(2, 'Clínica Geral'),
(3, 'Gastroenterologia'),
(4, 'Dermatologia'),
(5, 'Ortopedia'),
(6, 'Cardiologia'),
(7, 'Neurologia');
SELECT * FROM hospital_db_michelle.tipo_quarto;
INSERT INTO tipo_quarto (id_tipo_quarto, descricao, valor_diaria)
VALUES
(1,'Enfermaria', 500),
(2,'Apartamento', 1000),
(3,'Apartamento Duplo', 1300);
SELECT * FROM hospital_db_michelle.quarto;
INSERT INTO quarto(id_quarto, numero, tipo_quarto_id)
VALUES
(1,100,1),
(2,101,1),
(3,102,2),
(4,103,3);
SELECT * FROM hospital_db_michelle.convenio;
INSERT INTO convenio (id_convenio,nome_convenio, cnpj_convenio, tempo_carencia)
VALUES
(1,'Convenio A', '85032740000162', 30),
(2,'Convenio B', '03704127000180', 60),
(3,'Convenio C', '42534799000146', 45),
(4,'Convenio D', '38612274000104', 0),
(5,'Convenio A', '85032740000162', 0),
(6,'Convenio B', '03704127000180', 30),
(7,'Convenio A', '85032740000162', 90);