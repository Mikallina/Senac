-- Povoamento da tabela Hotel
INSERT INTO hotel (cnpj, nome_hotel, logradouro, numero, cep, uf, cidade, nome)
VALUES
  ('12345678901234', 'Hotel A', 'Rua Principal', 123, '12345678', 'SP', 'Cidade A', 'Hotel A'),
  ('56789012345678', 'Hotel B', 'Avenida Secundária', 456, '87654321', 'RJ', 'Cidade B', 'Hotel B'),
  ('98765432101234', 'Hotel C', 'Rua Central', 789, '54321678', 'MG', 'Cidade C', 'Hotel C');

-- Povoamento da tabela Quarto
INSERT INTO quarto (idquarto, capacidade, diaria, hotel_cnpj, nome_quarto, numero)
VALUES
  (201, 2, 150.00, '12345678901234', 'Quarto Luxo', 101),
  (202, 4, 200.00, '56789012345678', 'Quarto Familiar', 201),
  (203, 1, 100.00, '98765432101234', 'Quarto Simples', 301);

-- Povoamento da tabela Reserva
INSERT INTO reserva (idreserva, data_check_in, data_check_out, hospede_cpf, idquarto, quantidade_adulto, quantidade_crianca, valor_total)
VALUES
  (1, '2023-01-15', '2023-01-20', '12345678901', 1, 2, 0, 750.00),
  (2, '2023-02-10', '2023-02-15', '98765432101', 2, 2, 2, 1000.00),
  (3, '2023-03-05', '2023-03-10', '56789012345', 3, 1, 0, 100.00);

-- Povoamento da tabela Hospede
INSERT INTO hospede (cpf, email, nome, telefone)
VALUES
  ('12345678901', 'hospede1@email.com', 'Hóspede 1', '123-456-7890'),
  ('56789012345', 'hospede2@email.com', 'Hóspede 2', '567-890-1234'),
  ('98765432101', 'hospede3@email.com', 'Hóspede 3', '987-654-3210');

-- Povoamento da tabela Funcionario
INSERT INTO funcionario (cpf, idcargos, hotel_cnpj, nome, data_admissao, data_demissao, senha)
VALUES
  ('11122233344', 1, '12345678901234', 'Funcionário 1', '2022-01-01', NULL, 'senha123'),
  ('22233344455', 2, '56789012345678', 'Funcionário 2', '2022-02-01', NULL, 'senha456'),
  ('33344455566', 3, '98765432101234', 'Funcionário 3', '2022-03-01', NULL, 'senha789');

-- Povoamento da tabela Cargo
INSERT INTO cargo (cargo, salario)
VALUES
  ('Recepcionista', 2000.00),
  ('Camareiro', 1500.00),
  ('Gerente', 3000.00);

-- Povoamento da tabela Forma_de_pagamento
INSERT INTO forma_de_pagamento (idpagamento, forma_pagamento, idreserva)
VALUES
  (1, 'Cartão de Crédito', 1),
  (2, 'Dinheiro', 2),
  (3, 'Transferência Bancária', 3);
