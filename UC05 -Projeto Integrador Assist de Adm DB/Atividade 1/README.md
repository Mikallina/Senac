# Documento de Software - Sistema de Gerenciamento Hoteleiro

## 1. Apresentação:
Bem-vindo ao sistema de gerenciamento de hotéis, um projeto desenvolvido para otimizar a administração de hotéis, desde o cadastro de estabelecimentos, quartos, hóspedes, funcionários, até a gestão de reservas e pagamentos. Este sistema visa proporcionar eficiência e facilidade nas operações cotidianas de estabelecimentos hoteleiros.

## 2. Descrição do Projeto:
O sistema de gerenciamento de hotéis é uma aplicação web desenvolvida para facilitar a administração e operação de estabelecimentos hoteleiros. Ele oferece funcionalidades abrangentes, como cadastro de hotéis, quartos, hóspedes, funcionários, reservas e gestão de pagamentos.

## 3. Descrição dos Usuários:
- Administrador do Sistema: Responsável por gerenciar todas as informações no sistema, desde a adição de novos hotéis até a gestão de funcionários e relatórios.
- Recepcionista: Encarregado de registrar novas reservas, atualizar informações sobre hóspedes e atribuir quartos.
- Hóspede: Pode acessar informações sobre reservas, efetuar novas reservas e visualizar histórico de estadias.
## 4. Necessidades Observadas e Regras de Negócio:
**Necessidades:**
- Gerenciamento eficiente de quartos, incluindo informações sobre capacidade, diárias e disponibilidade.
- Cadastro de Hotéis: Os hotéis precisam ser registrados com informações detalhadas, incluindo CNPJ, endereço e nome.
- Cadastro de Quartos: Cada quarto deve ser associado a um hotel específico, com informações como capacidade, diária e número.
 - Reservas: Os hóspedes podem efetuar reservas, indicando datas de check-in e check-out, número de adultos e crianças, e escolhendo o quarto desejado.
- Controle de funcionários, com dados como CPF, cargo, datas de admissão e demissão.
- Pagamentos: As reservas devem permitir o registro de informações de pagamento, como forma de pagamento e valor total.
**Regras do Negócio:**
- Quartos só podem ser reservados se estiverem disponíveis.
- Reservas devem ter datas de check-in anteriores à data de check-out.
- Apenas funcionários autorizados podem acessar informações sensíveis no sistema.ianças, e valor total.
- Controle de funcionários, com dados como CPF, cargo, datas de admissão e demissão.
## 5. Requisitos Funcionais:
**Gestão de Quartos:**
- Adicionar, editar e excluir informações de quartos.
 - Visualizar a disponibilidade de quartos em determinadas datas.

**Reservas:**
- Realizar uma nova reserva.
- Visualizar histórico de reservas.
- Calcular automaticamente o valor total com base nas informações fornecidas.

**Gestão de Funcionários:**
- Adicionar novos funcionários.
- Registrar datas de admissão e demissão.
- Associar funcionários a cargos específicos.

## 6. Requisitos Não Funcionais:
**Segurança:**
- As senhas devem ser armazenadas de forma segura.
- Acesso controlado por níveis de permissão.
**Desempenho:**
- Respostas rápidas para consultas e atualizações de dados.
- Garantir que o sistema seja responsivo mesmo com grandes volumes de dados.
**Usabilidade:**
- Interface intuitiva e amigável para facilitar a navegação.

## 7. Tecnologias Previstas:
- Garantir que o sistema seja responsivo mesmo com grandes volumes de dados.
- Banco de Dados: MySQL
- Backend: Java
- Frontend: React

### Conclusão:

O sistema de gerenciamento de hotéis é uma solução abrangente para otimizar a administração de estabelecimentos hoteleiros, oferecendo funcionalidades essenciais para a gestão eficiente de informações. A implementação destas funcionalidades proporcionará uma experiência aprimorada para administradores, recepcionistas e hóspedes, contribuindo para a eficiência operacional do negócio.

