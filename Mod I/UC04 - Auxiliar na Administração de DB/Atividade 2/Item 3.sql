DELIMITER //

CREATE TRIGGER BeforeInsertUsuario
BEFORE INSERT ON uc4atividades.usuario
FOR EACH ROW
BEGIN
    SET NEW.senha = MD5(NEW.senha);
END //

DELIMITER ;