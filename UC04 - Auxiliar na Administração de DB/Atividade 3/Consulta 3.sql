-- EXPLAIN
EXPLAIN SELECT c.nome AS cliente, p.nome AS produto, SUM(iv.subtotal) AS total_venda, SUM(iv.quantidade) AS quantidade_total
FROM produto p
JOIN item_venda iv ON p.id = iv.produto_id
JOIN venda v ON v.id = iv.venda_id
JOIN cliente c ON c.id = v.cliente_id
GROUP BY c.nome, p.nome;

-- Índices
CREATE INDEX idx_produto_nome ON produto (nome);
CREATE INDEX idx_cliente_nome ON cliente (nome);
CREATE INDEX idx_item_venda_produto_venda_cliente ON item_venda (produto_id, venda_id, cliente_id);

-- EXPLAIN após otimizações
EXPLAIN SELECT c.nome AS cliente, p.nome AS produto, SUM(iv.subtotal) AS total_venda, SUM(iv.quantidade) AS quantidade_total
FROM produto p
JOIN item_venda iv ON p.id = iv.produto_id
JOIN venda v ON v.id = iv.venda_id
JOIN cliente c ON c.id = v.cliente_id
GROUP BY c.nome, p.nome;

-- VIEW
CREATE VIEW relatorio_vendas_cliente AS
SELECT c.nome AS cliente, p.nome AS produto, SUM(iv.subtotal) AS total_venda, SUM(iv.quantidade) AS quantidade_total
FROM produto p
JOIN item_venda iv ON p.id = iv.produto_id
JOIN venda v ON v.id = iv.venda_id
JOIN cliente c ON c.id = v.cliente_id
GROUP BY c.nome, p.nome;