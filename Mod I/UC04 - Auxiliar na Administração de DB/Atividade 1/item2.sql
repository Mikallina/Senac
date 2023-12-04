CREATE USER 'user_funcionario'@'localhost' IDENTIFIED BY 'senha';
GRANT SELECT, INSERT, UPDATE, DELETE ON uc4atividades.venda TO 'user_funcionario'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON uc4atividades.cliente TO 'user_funcionario'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON uc4atividades.produto TO 'user_funcionario'@'localhost';

CREATE ROLE 'role_user_funcionario';

GRANT SELECT, INSERT, UPDATE, DELETE ON uc4atividades.venda TO 'role_user_funcionario';
GRANT SELECT, INSERT, UPDATE, DELETE ON uc4atividades.cliente TO 'role_user_funcionario';
GRANT SELECT, INSERT, UPDATE, DELETE ON uc4atividades.produto TO 'role_user_funcionario';

GRANT 'role_user_funcionario' TO 'user_funcionario'@'localhost';

