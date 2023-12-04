# Tecnologia em Desenvolvimento de Sistemas


## Mód I

## Índice

- [Planejar o desenvolvimento de Software]
- [Desenvolver Algoritimos ]
- [Auxiliar na Modelagem e manipulação de banco de dados]
- [UC04 - Auxiliar na Adm de Banco de dados](https://github.com/Mikallina/Senac/tree/main/UC04%20-%20Auxiliar%20na%20Administra%C3%A7%C3%A3o%20de%20DB)
- [UC05 - Projeto Integrador Assistente de Adm de Banco de Dados](https://github.com/Mikallina/Senac/tree/main/UC05%20-Projeto%20Integrador%20Assist%20de%20Adm%20DB)
- [Sobre o projeto](#sobre-o-projeto)
- [Definição do Projeto](#definição-do-projeto)
- [Técnologias utilizadas](#técnologias-utilizadas)
- [Status do Projeto](#status-do-projeto)
- [Funcionalides da Aplicação](#funcionalides-da-aplicação)
- [Colaboradores do Projeto - GRUPO 1](#colaboradores-do-projeto---grupo-1)
- [Github](#github)
- [Licença](#licença)

## Atividade 1
### Contexto
Um dos clientes – uma loja de eletrônicos do sistema para vendas oferecido pela empresa de desenvolvimento de software na qual você trabalha – relatou problemas graves com o banco de dados. Os problemas foram os seguintes:
 - Um acesso indevido aconteceu no banco de dados. As hipóteses são de SQL injection ou deuso indevido de login e senha de funcionário.

 - O acesso indevido apagou dados das tabelas de venda e pagamento.
 - Um dos funcionários da loja emite periodicamente alguns relatórios com consultas diretas ao banco de dados. Essa pessoa, ao tentar ajudar, acabou removendo ainda duas tabelas. Nota-se que ela usava usuário root.
 - O último backup anterior ao desastre aconteceu duas semanas antes. Houve perda de dados, embora, felizmente, a partir das notas fiscais físicas, a loja tenha conseguido recadastrar boa parte das vendas desse período.
 - Diante dessa situação, a equipe de desenvolvimento precisa agir baseada em procedimentos que diminuam os riscos de um desastre semelhante acontecer no futuro.

 ### Atividade
Crie, em sua máquina, o banco de dados definido pelo script disponível em Conteúdo > Material complementar e analise e execute as seguintes ações de segurança:
- Crie um usuário chamado user_relatorio. Crie role para ele, com acesso ao comando SELECT de todas tabelas da base de dados uc4atividades. Não pode ser definido para este usuário nenhum outro comando DDL ou DML além do SELECT.
- Crie usuário chamado user_funcionario. Crie role para esse usuário. Ele poderá manipular as tabelas de venda, cliente e produto da base de dados uc4atividades, ou seja, poderá fazer apenas os comandos de SELECT, INSERT, UPDATE e DELETE.
- Elabore um plano de backups regular da base de dados uc4atividades para rodar periodicamente (especifique o período) ou um agendamento usando uma ferramenta automatizada. Pode-se utilizar como ponto de partida qualquer exemplo de plano de backup explicado no conteúdo desta UC.

## Atividade 2
### Contexto
Contexto
Ainda no contexto do sistema para lojas, após os ajustes de segurança, observaram-se outras necessidades, para as quais devem ser criadas sub-rotinas em banco de dados (stored functions, stored procedures e triggers).

### Atividade
Utilizando o banco de dados disponível no script em Conteúdos > Material complementar, realize as seguintes ações:
 - Crie um stored procedure que receba id de cliente, data inicial e data final, e que mostre a lista de compras realizadas pelo referido cliente entre as datas informadas (incluindo essas datas), mostrando nome do cliente, id da compra, total, nome e quantidade de cada produto comprado. No script, inclua o código de criação e o comando de chamada da procedure.
 - Crie uma stored function que receba id de cliente e retorne se o cliente é “PREMIUM” ou “REGULAR”. Um cliente é “PREMIUM” se já realizou mais de R$ 10 mil em compras na loja.  Se não, é um cliente “REGULAR”. No script, inclua o código de criação e o comando de chamada da function.
 - Crie um trigger que atue sobre a tabela “usuário” de modo que, ao incluir um novo usuário, aplique automaticamente MD5() à coluna “senha”; utilize nesta atividade variáveis com NEW.
 

## Atividade 3
### Contexto
Percebe-se que o banco de dados para o sistema de lojas enfrenta alguns “gargalos” de desempenho, de modo que as operações no sistema estão demorando mais do que o esperado – algumas delas acontecem com frequência. Você tem a tarefa de propor melhorias a algumas dessas consultas, tornando-as mais eficientes.
### Atividade
Utilizando o banco de dados proposto para as atividades, realize as consultas expostas no arquivo do item 'Scripts de Consulta - Atividade 3' em Conteúdos > Material complementar.
Para cada consulta presente no script, faça o seguinte:
- Execute o comando EXPLAIN mostrando detalhes da execução da consulta e tire um print.
- Realize ajustes de otimização nas consultas utilizando JOINs entre as tabelas, assim como removendo os asteriscos (*) e definindo quais colunas devem ser retornadas de cada consulta, a fim de otimizá-la.
- Crie índices que possam se beneficiar do recurso para melhorar o desempenho das consultas, considerando principalmente colunas utilizadas nas cláusulas WHERE.
- Execute novamente o comando EXPLAIN, mostrando agora os detalhes da execução da consulta depois das otimizações realizadas e tire um print.
- Crie uma view para cada uma das consultas ajustadas com JOINS.
- Armazene as consultas ajustadas e os demais comandos em scripts .sql para a entrega. - - Utilize comentários para organizar e explicar seus scripts.


## Atividade 4
### Contexto
Como um trabalho de otimização do banco de dados, observando algumas anomalias de dados, a equipe de desenvolvimento vê a necessidade de aplicar normalização em algumas tabelas do sistema de lojas. Três tabelas são o foco neste momento: “cliente”, “venda” e “item_venda”.
### Atividade
Observando as tabelas citadas no contexto e realizando as consultas no banco de dados, elabore um relatório respondendo aos seguintes pontos:
- Por que a tabela “Cliente” não está na 1FN? Proponha uma solução para fazer sua normalização na 1FN.
- Por que a tabela “Item_venda” não está na 2FN? Proponha uma solução para fazer sua normalização na 2FN.
- Por que a tabela “venda” não está na 3FN? Proponha uma solução para fazer sua normalização na 3FN.
- Crie o script SQL correspondente à alteração proposta com os comandos de criação e/ou alteração das tabelas normalizadas.

## Atividade 5

### Contexto
A empresa está avaliando alternativas de uso ao MySQL. Uma delas é a utilização de bancos NoSQL, com destaque para o MongoDB, que é bastante recomendado. Você tem a tarefa, nesse contexto, de utilizar, incluir e manipular, no MongoDB, algumas das informações presentes no banco de dados de lojas.
### Atividade
Para este momento, é requisitado que você trabalhe apenas com a tabela Produto do banco de dados uc4atividade, “traduzindo-a” para NoSQL.
Utilizando preferencialmente o MongoDB Compass, escreva e guarde em arquivo comandos para:
- Criação de um novo banco NoSQL
- Inclusão dos dados de nome, descricao, estoque, fabricante para a tabela “Produto”
- Atualização de dados de produto (qualquer campo de sua preferência)
- Busca de produto por nome
- Busca de produto por fabricante
- Para cada comando, escreva também no arquivo os resultados obtidos na execução.





### Sobre o projeto

## Definição do Projeto


## Técnologias utilizadas

- MySQL

## Status do Projeto

> :construction: Projeto em construção :construction:

---

## Funcionalides da Aplicação

- Instale o MySQL Workbench
---

## Colaboradores do Projeto 

-- Michelle Borges



---

## Github



## Licença




