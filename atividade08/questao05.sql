SELECT 
    c.data,
    SUM(ic.quantidade * card.preco_unitario) AS faturamento_total
FROM comanda c
JOIN item_comanda ic ON c.codigo = ic.codigo_comanda
JOIN cardapio card ON ic.codigo_cardapio = card.codigo
GROUP BY c.data
ORDER BY c.data;