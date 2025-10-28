SELECT 
    c.codigo,
    c.data,
    c.mesa,
    c.nome_cliente,
    COUNT(ic.codigo_cardapio) AS tipos_cafe,
    SUM(ic.quantidade * card.preco_unitario) AS valor_total
FROM comanda c
JOIN item_comanda ic ON c.codigo = ic.codigo_comanda
JOIN cardapio card ON ic.codigo_cardapio = card.codigo
GROUP BY c.codigo, c.data, c.mesa, c.nome_cliente
HAVING COUNT(ic.codigo_cardapio) > 1
ORDER BY c.data;