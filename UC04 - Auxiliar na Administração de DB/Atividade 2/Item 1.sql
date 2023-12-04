DELIMITER //

CREATE PROCEDURE ListaComprasCliente2 (
    IN cliente_id INT,
    IN data_inicio DATETIME,
    IN data_fim DATETIME
)
BEGIN
    SELECT
        c.nome AS nome_cliente,
        v.id AS id_compra,
        v.valor_total AS total,
        p.nome AS nome_produto,
        iv.quantidade
    FROM
        uc4atividades.cliente c
    JOIN uc4atividades.venda v ON c.id = v.cliente_id
    JOIN uc4atividades.item_venda iv ON v.id = iv.venda_id
    JOIN uc4atividades.produto p ON iv.produto_id = p.id
    WHERE
        c.id = cliente_id
        AND v.data BETWEEN data_inicio AND data_fim;
END //

DELIMITER ;

CALL ListaComprasCliente2(1, '2019-01-01', '2019-11-22');