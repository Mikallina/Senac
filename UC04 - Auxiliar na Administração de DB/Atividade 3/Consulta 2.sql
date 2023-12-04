-- EXPLAIN
EXPLAIN SELECT p.nome AS produto, iv.quantidade, v.data
FROM produto p
JOIN item_venda iv ON p.id = iv.produto_id
JOIN venda v ON v.id = iv.venda_id
WHERE p.fabricante LIKE '%lar%'
ORDER BY p.nome;

-- Índices
CREATE INDEX idx_produto_fabricante ON produto (fabricante);
CREATE INDEX idx_item_venda_produto_venda ON item_venda (produto_id, venda_id);

-- EXPLAIN após otimizações
EXPLAIN SELECT p.nome AS produto, iv.quantidade, v.data
FROM produto p
JOIN item_venda iv ON p.id = iv.produto_id
JOIN venda v ON v.id = iv.venda_id
WHERE p.fabricante LIKE '%lar%'
ORDER BY p.nome;

-- VIEW
CREATE VIEW vendas_por_fabricante AS
SELECT p.nome AS produto, iv.quantidade, v.data
FROM produto p
JOIN item_venda iv ON p.id = iv.produto_id
JOIN venda v ON v.id = iv.venda_id
WHERE p.fabricante LIKE '%lar%'
ORDER BY p.nome;
