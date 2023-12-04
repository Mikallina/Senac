# Atividade 2 - Projeto de Banco de Dados para o Sistema de Gerenciamento Hoteleiro 

## Diagrama ER (Entidade-Relacionamento)
![ER](https://github.com/Mikallina/Senac/blob/main/Mod%20I/UC05%20-Projeto%20Integrador%20Assist%20de%20Adm%20DB/Atividade%202/EER%20-%20Hotel.png)

## Descrição do Diagrama:

### Entidades:

1. Hotel
2. Quarto
3. Reserva
4. Hospede
5. Funcionário
6. Cargo
7. Forma_de_pagamento

### Relacionamentos
- Relacionamento entre Hotel e Quarto (1:N): Um hotel pode ter vários quartos, mas um quarto pertence a apenas um hotel. 
- Relacionamento entre Quarto e Reserva (1:N): Um quarto pode ter várias reservas, mas uma reserva é feita para apenas um quarto. 
- Relacionamento entre Reserva e Hospede (N:1): Uma reserva pertence a um hóspede, mas um hóspede pode ter várias reservas. 
- Relacionamento entre Funcionario e Cargo (N:1): Um funcionário pertence a um cargo, mas um cargo pode ter vários funcionários. 
- Relacionamento entre Funcionario e Hotel (N:1): Um funcionário pertence a um hotel, mas um hotel pode ter vários funcionários. 
- Relacionamento entre Reserva e Forma_de_pagamento (1:1): Uma reserva pode ter uma forma de pagamento, e uma forma de pagamento está associada a uma reserva.

  ## Dicionário de Dados
1. Hotel:
     - cnpj: Identificador do CNPJ do hotel. (Chave Primária)   Tipo: VARCHAR(14) 
     - nome_hotel: Nome do hotel. Tipo: VARCHAR(80) 
     - logradouro: Nome do logradouro do hotel. Tipo: VARCHAR(255) 
     - numero: Número do endereço do hotel. Tipo: INT 
     - cep: CEP do hotel. Tipo: VARCHAR(8) 
     - uf: Unidade FederaƟva do hotel.Tipo: VARCHAR(2) 
     - cidade: Cidade do hotel. Tipo: VARCHAR(45) 
     - nome: Nome adicional associado ao hotel. Tipo: VARCHAR(255) 

2. Quarto
     - idquarto: IdenƟficador único do quarto. (Chave Primária) Tipo: INT 
     - capacidade: Capacidade de pessoas no quarto. Tipo: INT
     - diaria: Valor da diária do quarto. Tipo: DECIMAL(19,2) 
     - hotel_cnpj: CNPJ do hotel associado ao quarto. (Chave Estrangeira referenciando a tabela Hotel) Tipo: VARCHAR(14)
     - nome_quarto: Nome ou descrição do quarto. Tipo: VARCHAR(255)
     - numero: Número do quarto. Tipo: INT 

3. Reserva
     - idreserva: IdenƟficador único da reserva. (Chave Primária) Tipo: INT + data_check_in: Data de check-in da reserva. Tipo: DATE 
     - data_check_out: Data de check-out da reserva. Tipo: DATE
     - hospede_cpf: CPF do hóspede associado à reserva. (Chave Estrangeira referenciando a tabela Hospede) Tipo: VARCHAR(255) 
     - idquarto: Identificador do quarto associado à reserva. (Chave Estrangeira referenciando a tabela Quarto) Tipo: INT 
     - quantidade_adulto: QuanƟdade de adultos na reserva. Tipo: INT 
     - quantidade_crianca: QuanƟdade de crianças na reserva. Tipo: INT 
     - valor_total: Valor total da reserva. Tipo: FLOAT

4. Hospede: 
      - cpf: CPF do hóspede. (Chave Primária)Tipo: VARCHAR(255) 
      - email: Endereço de e-mail do hóspede. Tipo: VARCHAR(255) 
      - nome: Nome do hóspede. Tipo: VARCHAR(255) 
      - telefone: Número de telefone do hóspede. Tipo: VARCHAR(255)


5. Funcionario 
      - cpf: CPF do funcionário. (Chave Primária) Tipo: VARCHAR(11) 
      - idcargos: Identificador do cargo associado ao funcionário. (Chave Estrangeira referenciando a tabela Cargo) Tipo: INT 
      - hotel_cnpj: CNPJ do hotel associado ao funcionário. (Chave Estrangeira referenciando a tabela Hotel) Tipo: VARCHAR(14) 
      - nome: Nome do funcionário. Tipo: VARCHAR(80) 
      - data_admissao: Data de admissão do funcionário. Tipo: DATE 
      - data_demissao: Data de demissão do funcionário. Tipo: DATE 
      - senha: Senha de acesso do funcionário. Tipo: VARCHAR(8) 

6. Cargo 
    - id: Identificador único do cargo. (Chave Primária)Tipo: INT 
    - cargo: Nome do cargo. Tipo: VARCHAR(255) 
    - salario: Salário associado ao cargo. Tipo: DECIMAL(19,2)

7. Forma_de_pagamento 
    - idpagamento: Identificador único da forma de pagamento. (Chave Primária) Tipo: INT 
    - forma_pagamento: Descrição da forma de pagamento. Tipo: VARCHAR(255) 
    - idreserva: Identificador da reserva associada à forma de pagamento. (Chave Estrangeira referenciando a tabela Reserva) Tipo: INT 
