SELECT 
    c.codigo AS codigo_comanda,
    c.data,
    c.mesa,
    c.nome_cliente,
    card.nome AS nome_cafe,
    card.descricao,
    ic.quantidade,
    card.preco_unitario,
    (ic.quantidade * card.preco_unitario) AS preco_total
FROM comanda c
JOIN item_comanda ic ON c.codigo = ic.codigo_comanda
JOIN cardapio card ON ic.codigo_cardapio = card.codigo
ORDER BY c.data, c.codigo, card.nome;