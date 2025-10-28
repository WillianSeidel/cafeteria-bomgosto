-- Conectar ao postgres e criar o banco
\c postgres;

CREATE DATABASE cafeteria_bomgosto;

-- Conectar ao novo banco
\c cafeteria_bomgosto;

-- Criar as tabelas
CREATE TABLE cardapio (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(100) UNIQUE NOT NULL,
    descricao TEXT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL
);

CREATE TABLE comanda (
    codigo SERIAL PRIMARY KEY,
    data DATE NOT NULL DEFAULT CURRENT_DATE,
    mesa INTEGER NOT NULL,
    nome_cliente VARCHAR(100) NOT NULL
);

CREATE TABLE item_comanda (
    codigo_comanda INTEGER NOT NULL,
    codigo_cardapio INTEGER NOT NULL,
    quantidade INTEGER NOT NULL CHECK (quantidade > 0),
    PRIMARY KEY (codigo_comanda, codigo_cardapio),
    FOREIGN KEY (codigo_comanda) REFERENCES comanda(codigo) ON DELETE CASCADE,
    FOREIGN KEY (codigo_cardapio) REFERENCES cardapio(codigo) ON DELETE CASCADE
);

-- Inserir dados no cardápio
INSERT INTO cardapio (nome, descricao, preco_unitario) VALUES
('Expresso', 'Café puro e intenso, preparado com grãos selecionados', 5.00),
('Cappuccino', 'Café expresso com leite vaporizado e espuma cremosa', 8.50),
('Latte', 'Café expresso com leite vaporizado e uma suave camada de espuma', 9.00),
('Mocha', 'Café expresso com chocolate, leite vaporizado e chantilly', 12.00),
('Macchiato', 'Café expresso com uma pequena quantidade de leite vaporizado', 6.50),
('Americano', 'Café expresso diluído em água quente', 6.00),
('Irish Coffee', 'Café com whisky irlandês, açúcar e creme chantilly', 18.00);

-- Inserir comandas
INSERT INTO comanda (data, mesa, nome_cliente) VALUES
('2025-10-28', 1, 'Willian Seidel'),
('2025-10-28', 2, 'Maria Santos'),
('2025-10-28', 3, 'Pedro Oliveira'),
('2025-10-28', 1, 'Ana Costa'),
('2025-10-28', 2, 'Carlos Lima'),
('2025-10-28', 4, 'Fernanda Rocha');

-- Inserir itens das comandas
INSERT INTO item_comanda (codigo_comanda, codigo_cardapio, quantidade) VALUES
(1, 1, 2), (1, 2, 1),
(2, 3, 1), (2, 4, 1),
(3, 1, 1), (3, 5, 1), (3, 6, 1),
(4, 2, 2),
(5, 7, 1),
(6, 3, 1), (6, 4, 1);