QUESTÃO-01-Cardápio ordenado por nome

codigo | nome | descricao | preco_unitario
--------+---------------+---------------------------------------------------------------+----------------
6 | Americano | Café expresso diluído em água quente | 6.00
2 | Cappuccino | Café expresso com leite vaporizado e espuma cremosa | 8.50
1 | Expresso | Café puro e intenso, preparado com grãos selecionados | 5.00
7 | Irish Coffee | Café com whisky irlandês, açúcar e creme chantilly | 18.00
3 | Latte | Café expresso com leite vaporizado e uma suave camada de espuma | 9.00
5 | Macchiato | Café expresso com uma pequena quantidade de leite vaporizado | 6.50
4 | Mocha | Café expresso com chocolate, leite vaporizado e chantilly | 12.00

QUESTÃO-02-Comandas com itens detalhados

codigo_comanda | data | mesa | nome_cliente | nome_cafe | descricao | quantidade | preco_unitario | preco_total
----------------+------------+------+---------------+---------------+---------------------------------------------------------------+------------+----------------+-------------
1 | 2025-10-28 | 1 | Willian Seidel | Cappuccino | Café expresso com leite vaporizado e espuma cremosa | 1 | 8.50 | 8.50
1 | 2025-10-28 | 1 | Willian Seidel | Expresso | Café puro e intenso, preparado com grãos selecionados | 2 | 5.00 | 10.00
2 | 2025-10-28 | 2 | Maria Santos | Latte | Café expresso com leite vaporizado e uma suave camada de espuma | 1 | 9.00 | 9.00
2 | 2025-10-28 | 2 | Maria Santos | Mocha | Café expresso com chocolate, leite vaporizado e chantilly | 1 | 12.00 | 12.00
3 | 2025-10-28 | 3 | Pedro Oliveira| Americano | Café expresso diluído em água quente | 1 | 6.00 | 6.00
3 | 2025-10-28 | 3 | Pedro Oliveira| Expresso | Café puro e intenso, preparado com grãos selecionados | 1 | 5.00 | 5.00
3 | 2025-10-28 | 3 | Pedro Oliveira| Macchiato | Café expresso com uma pequena quantidade de leite vaporizado | 1 | 6.50 | 6.50
4 | 2025-10-28 | 1 | Ana Costa | Cappuccino | Café expresso com leite vaporizado e espuma cremosa | 2 | 8.50 | 17.00
5 | 2025-10-28 | 2 | Carlos Lima | Irish Coffee | Café com whisky irlandês, açúcar e creme chantilly | 1 | 18.00 | 18.00
6 | 2025-10-28 | 4 | Fernanda Rocha| Latte | Café expresso com leite vaporizado e uma suave camada de espuma | 1 | 9.00 | 9.00
6 | 2025-10-28 | 4 | Fernanda Rocha| Mocha | Café expresso com chocolate, leite vaporizado e chantilly | 1 | 12.00 | 12.00

QUESTÃO-03-Comandas com valor total

codigo | data | mesa | nome_cliente | valor_total
--------+------------+------+---------------+-------------
1 | 2025-10-28 | 1 | Willian Seidel | 18.50
2 | 2025-10-28 | 2 | Maria Santos | 21.00
3 | 2025-10-28 | 3 | Pedro Oliveira| 17.50
4 | 2025-10-28 | 1 | Ana Costa | 17.00
5 | 2025-10-28 | 2 | Carlos Lima | 18.00
6 | 2025-10-28 | 4 | Fernanda Rocha| 21.00

QUESTÃO-04-Comandas com mais de um tipo de café

codigo | data | mesa | nome_cliente | tipos_cafe | valor_total
--------+------------+------+---------------+------------+-------------
1 | 2025-10-28 | 1 | Willian Seidel | 2 | 18.50
2 | 2025-10-28 | 2 | Maria Santos | 2 | 21.00
3 | 2025-10-28 | 3 | Pedro Oliveira| 3 | 17.50
6 | 2025-10-28 | 4 | Fernanda Rocha| 2 | 21.00

QUESTÃO 5: Faturamento por data

    data    | faturamento_total

------------+------------------
2025-10-28 | 108.00
