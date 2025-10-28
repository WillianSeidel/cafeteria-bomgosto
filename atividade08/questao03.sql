SELECT 
    c.codigo,
    c.data,
    c.mesa,
    c.nome_cliente,
    SUM(ic.quantidade * card.preco_unitario) AS valor_total
FROM comanda c
JOIN item_comanda ic ON c.codigo = ic.codigo_comanda
JOIN cardapio card ON ic.codigo_cardapio = card.codigo
GROUP BY c.codigo, c.data, c.mesa, c.nome_cliente
ORDER BY c.data;