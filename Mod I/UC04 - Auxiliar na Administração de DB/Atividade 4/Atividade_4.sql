CREATE SCHEMA `atividade4` ;
-- Tabela "Cargo"
CREATE TABLE Cargo (
    id INT PRIMARY KEY,
    descricao VARCHAR(45),
    salario DECIMAL(9,2),
    comissao FLOAT
);

-- Tabela "Usuario"
CREATE TABLE Usuario (
    id INT PRIMARY KEY,
    login VARCHAR(100),
    senha VARCHAR(100),
    ultimo_login DATETIME
);

-- Tabela "Funcionario"
CREATE TABLE Funcionario (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    telefone VARCHAR(45),
    cpf VARCHAR(11),
    cargo_id INT,
    usuario_id INT,
    FOREIGN KEY (cargo_id) REFERENCES Cargo(id),
    FOREIGN KEY (usuario_id) REFERENCES Usuario(id)
);

-- Tabela "Produto"
CREATE TABLE Produto (
    id INT PRIMARY KEY,
	nome VARCHAR(255),
	decricao VARCHAR(255),
	estoque INT,
	fabricante VARCHAR(255)
);

-- Tabela "Cliente" Normalizada na 1FN
CREATE TABLE Cliente_Normalizada_1FN (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    cpf VARCHAR(11),
    endereco VARCHAR(255)
);

-- Tabela "TelefoneCliente" para armazenar telefones
CREATE TABLE TelefoneCliente (
    id INT PRIMARY KEY,
    cliente_id INT,
    telefone VARCHAR(45),
    FOREIGN KEY (cliente_id) REFERENCES Cliente_Normalizada_1FN(id)
);

-- Tabela "Produto"
CREATE TABLE Produto (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    descricao VARCHAR(255),
    estoque INT,
    fabricante VARCHAR(255)
);

-- Tabela "Item_venda" Normalizada na 2FN
CREATE TABLE ItemVenda_Normalizada_2FN (
    id INT PRIMARY KEY AUTO_INCREMENT,
    venda_id INT,
    produto_id INT,
    quantidade INT,
    valor_unitario DECIMAL(9,2),
    subtotal DECIMAL(9,2),
    FOREIGN KEY (venda_id) REFERENCES Venda_Normalizada_3FN(id),
    FOREIGN KEY (produto_id) REFERENCES Produto(id)
);

-- Tabela "Venda" Normalizada na 3FN
CREATE TABLE Venda_Normalizada_3FN (
    id INT PRIMARY KEY,
    data DATETIME,
    data_envio DATETIME,
    status VARCHAR(45),
    valor_total DECIMAL(9,2),
    cliente_id INT,
    funcionario_id INT,
    tipo_pagamento CHAR(1),
    numero_cartao_pagamento VARCHAR(16),
    numero_parcelas_pagamento INT,
    data_pagamento DATETIME,
    FOREIGN KEY (cliente_id) REFERENCES Cliente_Normalizada_1FN(id),
    FOREIGN KEY (funcionario_id) REFERENCES Funcionario(id)
);