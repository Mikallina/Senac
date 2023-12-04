CREATE USER 'user_relatorio'@'localhost' IDENTIFIED BY 'senha';
GRANT SELECT ON uc4atividades.* TO 'user_relatorio'@'localhost';

CREATE ROLE 'role_user_relatorio';

GRANT SELECT ON uc4atividades.* TO 'role_user_relatorio';

GRANT 'role_user_relatorio' TO 'user_relatorio'@'localhost';