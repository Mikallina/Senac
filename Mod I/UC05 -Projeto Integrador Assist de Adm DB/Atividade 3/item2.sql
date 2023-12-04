USE projetofinal;

CREATE VIEW vw_reservas AS
SELECT
  r.idreserva,
  r.data_check_in,
  r.data_check_out,
  h.nome_hotel,
  q.nome_quarto,
  r.quantidade_adulto,
  r.quantidade_crianca,
  r.valor_total
FROM reserva r
JOIN quarto q ON r.idquarto = q.idquarto
JOIN hotel h ON q.hotel_cnpj = h.cnpj;

