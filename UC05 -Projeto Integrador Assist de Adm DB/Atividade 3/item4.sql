USE projetofinal;
CREATE INDEX idx_reserva_quarto_data_checkin ON reserva (idquarto, data_check_in);
