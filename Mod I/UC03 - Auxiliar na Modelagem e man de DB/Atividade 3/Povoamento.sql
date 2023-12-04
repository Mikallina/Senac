SELECT * FROM hospital_db_michelle.cadastro_medico;
INSERT INTO cadastro_medico (id_medico, nome_medico, cpf_medico, email_medico)
VALUES
(1, 'Joao Guilherme', '71909836001', 'joaoguilherme@example.com'),
(2, 'Leonardo Melo Goncalves', '60035108207', 'drleonardo@example.com'),
(3, 'Mateus Carvalho', '90378991370', 'dr.mateuscarvalho@example.com'),
(4, 'Luiza Possi', '51015560504', 'dra.luizapossi@example.com'),
(5, 'Isabella Taviani', '04452567886', 'dra.isabellataviani@example.com'),
(6, 'Joao Ricardo', '62709149656', 'dr.joaoricardo@example.com'),
(7, 'Daniela Zanini', '33736680341', 'dra.danielazanini@example.com'),
(8, 'Jose Roberto Seixas', '68564654083', 'dr.joserobertoseixas@example.com'),
(9, 'Maria Cris􀆟na', '85673401957', 'dra.mariacris􀆟na@example.com'),
(10, 'Lucas Melo Ribeiro', '38234514130', 'dr.meloribeiro@example.com');
SELECT * FROM hospital_db_michelle.cadastro_paciente;
INSERT INTO cadastro_paciente (id_paciente,
cpf_paciente,rg_paciente,nome_paciente,data_nascimento, endereco,
telefone,email,numero_carteira_convenio,id_convenio)
VALUES
(1,'46840008932','318734424','Antonio Giovanni Noah Rocha','1967-05-15','Rua Francisco
Tomaz da Silva, 1045','(11) 39401794','antoniogiovani@exemple.com','0000122557889',1),
(2,'96673265949','122028028','Benjamin Isaac das Neves','1960-02-08','Travessa Rio Preto,
fortaleza, 1852','(13) 38333563','benjamin@exemple.com','0000122557890',2),
(3,'86374188489','321204360','Rafael Davi Iago Cavalcan􀆟','1994-05-18','Rua mar do caribe,
200','(12) 26849466','rafaelcavalcan􀆟@exemple.com','0000122557880',3),
(4,'29964881053','154699433','Gabrielly Allana','1973-04-25','Avenida Presidente Vargas,
s/n','(11) 26855888','gabriellyallana@exemple.com', null,null),
(5,'05262226035','453117223','Sebas􀆟ana Antonella','1982-10-02','Quadra 108','(11)
36965988','sebas􀆟anaantonella@exemple.com','0001255582258',4),
(6,'30852390068','327368603','Kaue Fabio Almeida','1952-06-16','Rua Almirante, 145','(11)
32857410','kauealmeida@exemple.com',null,null),
(7,'37960959099','468798018','Mar􀆟n Barros','2002-06-19','Rua Jose Villar, 200','(11)
32857410','mar􀆟nbarros@exemple.com','0000185554759',2),
(8,'72352583900','463325138','Pietro Erick dos Santos','1977-05-23','Rua Beija Flor, 1025','(11)
22589654','pietroerick@exemple.com','0000888595552',5),
(9,'29209075650','264439107','Lúcia Esther Oliveira','1985-06-03','Rua Professor José limeira,
558','(11) 33857845','luciaesther@exemple.com',null,null),
(10,'75462206372','494505497','Bryan Eduardo de Paula','1987-06-07','Travessa Vinte e Cinco
de Setembro, 115','(11) 32585658','bryandepaula@exemple.com','008571458',6);
SELECT * FROM hospital_db_michelle.consultas;
INSERT INTO consultas (id_consulta,data_consulta, hora_consulta, valor_consulta, id_paciente,
id_medico)
VALUES
(1,'2020-01-15', '09:00:00', 0.0, 1, 1),
(2,'2020-02-20', '14:30:00', 0.0, 2, 2),
(3,'2019-03-25', '10:45:00', 0.0, 3, 3),
(4,'2019-04-30', '15:15:00', 110.00, 4, 4),
(5,'2018-05-10', '08:30:00', 0.0, 5, 5),
(6,'2018-06-15', '14:00:00', 130.00, 6, 6),
(7,'2017-07-20', '11:30:00', 0.0, 7, 7),
(8,'2017-08-25', '16:45:00', 0.0, 8, 8),
(9,'2017-09-30', '09:15:00', 105.00, 9, 9),
(10,'2017-10-05', '15:45:00', 0.0, 10, 10),
(11,'2021-02-17', '08:30:00', 0.0, 5, 6),
(12,'2018-07-16', '17:35:00', 0.0, 6, 8),
(13,'2022-01-30', '13:10:00', 0.0, 7, 4),
(14,'2019-04-30', '14:13:00', 210.00, 4, 6);
SELECT * FROM hospital_db_michelle.receita;
INSERT INTO receita (id_receita, medicamentos, qtd_medicamentos,
instrucoes_medicamentos, id_consulta)
VALUES
(1,'Paracetamol, Ibuprofeno', 2, 'Tomar com água após as refeições', 1),
(2,'Amoxicilina, Dipirona', 2, 'Tomar de 8 em 8 horas', 2),
(3,'Omeprazol, Rani􀆟dina, An􀆟bió􀆟co', 3, 'Seguir as instruções do médico', 3),
(4,'Hidrocloro􀆟azida, Losartana', 2, 'Tomar de manhã', 4),
(5,'Dipirona, Codeína', 2, 'Tomar conforme dor', 5);
SELECT * FROM hospital_db_michelle.internacao;
INSERT INTO internacao (id_internacao, data_entrada, data_prev_alta, data_alta,
procedimento, paciente_id, medico_id, quarto_id)
VALUES
(1,'2020-01-10', '2020-01-20', '2020-01-18', 'Cirurgia de Apêndice', 1, 1, 1),
(2,'2020-02-15', '2020-02-25', '2020-02-23', 'Cirurgia de Fratura', 2, 2, 1),
(3,'2019-03-20', '2019-03-30', '2019-03-28', 'Cirurgia de Catarata', 3, 3, 2),
(4,'2019-04-25', '2019-05-05', '2019-05-03', 'Cirurgia de Hérnia', 4, 4, 3),
(5,'2018-05-05', '2018-05-15', '2018-05-13', 'Cirurgia de Joelho', 5, 5, 2),
(6,'2018-06-10', '2018-06-20', '2018-06-18', 'Cirurgia de Quadril', 6, 6, 3),
(7,'2017-07-15', '2017-07-25', '2017-07-23', 'Cirurgia de Coração', 7, 7, 2);
SELECT * FROM hospital_db_michelle.enfermeiro;
INSERT INTO enfermeiro(id_enfermeiro, nome, cpf,cre)
VALUES
(1,'José Francisco Roxha','96174632024','12587415'),
(2,'Maria Joaquina','48251635055','15887587'),
(3,'Ricardo Pereira da Silva','66010954002','12547859'),
(4,'João Ribeiro','64390775030','58269748'),
(5,'Raimundo Ferreira','92434276016','66985425'),
(6,'Francisca Ribeiro','79974769035','45812395');
SELECT * FROM hospital_db_michelle.internacao_enfermeiro;
INSERT INTO internacao_enfermeiro(internacao_id, enfermeiro_id)
VALUES
(1,1),
(2,2),
(3,2),
(4,3),
(2,4),
(3,5),
(2,6);