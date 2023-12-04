DELIMITER //

CREATE FUNCTION TipoCliente (
     cliente_id INT
)
RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
    DECLARE total_compras DECIMAL(9,2);

    SELECT SUM(v.valor_total)
    INTO total_compras
    FROM uc4atividades.venda v
    WHERE v.cliente_id = cliente_id;

    IF total_compras > 10000 THEN
        RETURN 'PREMIUM';
    ELSE
        RETURN 'REGULAR';
    END IF;
END //

DELIMITER ;

SELECT TipoCliente(1) AS TipoDoCliente;