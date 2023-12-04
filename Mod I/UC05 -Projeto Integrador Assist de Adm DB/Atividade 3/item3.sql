USE projetofinal;

DELIMITER //
CREATE PROCEDURE sp_atualizar_diaria(IN p_idquarto INT, IN p_nova_diaria DECIMAL(19,2))
BEGIN
  UPDATE quarto SET diaria = p_nova_diaria WHERE idquarto = p_idquarto;
END //
DELIMITER ;

DELIMITER //
CREATE FUNCTION obter_total_reservas_por_hotel(p_cnpj VARCHAR(14)) RETURNS INT
DETERMINISTIC
BEGIN
   DECLARE total_reservas INT;
   
   SELECT COUNT(*) INTO total_reservas
   FROM reserva r
   JOIN quarto q ON r.idquarto = q.idquarto
   WHERE q.hotel_cnpj = p_cnpj;

   RETURN total_reservas;
END //
DELIMITER ;