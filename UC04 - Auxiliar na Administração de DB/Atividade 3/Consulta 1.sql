-- EXPLAIN
EXPLAIN SELECT v.data, v.valor_total, p.nome AS produto, iv.quantidade, iv.valor_unitario, c.nome AS cliente, c.cpf, c.telefone
FROM venda v
JOIN item_venda iv ON v.id = iv.venda_id
JOIN produto p ON p.id = iv.produto_id
JOIN cliente c ON c.id = v.cliente_id
JOIN funcionario f ON f.id = v.funcionario_id
WHERE v.tipo_pagamento = 'D'
ORDER BY v.data DESC;



-- Índices
CREATE INDEX idx_venda_data ON venda (data);
CREATE INDEX idx_venda_tipo_pagamento ON venda (tipo_pagamento);
CREATE INDEX idx_item_venda_venda_produto ON item_venda (venda_id, produto_id);

-- EXPLAIN após otimizações
EXPLAIN SELECT v.data, v.valor_total, p.nome AS produto, iv.quantidade, iv.valor_unitario, c.nome AS cliente, c.cpf, c.telefone
FROM venda v
JOIN item_venda iv ON v.id = iv.venda_id
JOIN produto p ON p.id = iv.produto_id
JOIN cliente c ON c.id = v.cliente_id
JOIN funcionario f ON f.id = v.funcionario_id
WHERE v.tipo_pagamento = 'D'
ORDER BY v.data DESC;


-- VIEW
CREATE VIEW relatorio_vendas_dinheiro AS
SELECT v.data, v.valor_total, p.nome AS produto, iv.quantidade, iv.valor_unitario, c.nome AS cliente, c.cpf, c.telefone
FROM venda v
JOIN item_venda iv ON v.id = iv.venda_id
JOIN produto p ON p.id = iv.produto_id
JOIN cliente c ON c.id = v.cliente_id
JOIN funcionario f ON f.id = v.funcionario_id
WHERE v.tipo_pagamento = 'D'
ORDER BY v.data DESC;
