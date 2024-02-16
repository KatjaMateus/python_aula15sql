CREATE TABLE produto(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    preco INT
);

CREATE TABLE compra(
	id INT AUTO_INCREMENT PRIMARY KEY,
    data_pedido DATE,
    id_produto INT,
    FOREIGN KEY (id_produto) REFERENCES produto(id),
    qtde_itens INT
);

ALTER TABLE produto MODIFY preco FLOAT;
ALTER TABLE produto CHANGE nome descricao VARCHAR(255);
ALTER TABLE produto ADD qtde_estoque INT;
ALTER TABLE compra DROP COLUMN data_pedido;

INSERT INTO produto (descricao, preco) VALUES
("caneta", 1.5),
("estojo", 5),
("lápis", 1),
("borracha", 2),
("apontador", 2.2),
("bloco", 3),
("tesoura", 5),
("livro", 23),
("cola", 2),
("régua", 0.5);

INSERT INTO compra (id_produto, qtde_itens) VALUES
(2, 10),
(10, 5),
(1, 15),
(9, 1);

UPDATE produto SET preco = 6 WHERE id = 3;
DELETE FROM produto WHERE id = 7 OR id = 4;
SELECT * FROM produto;
SELECT descricao WHERE preco > 20;
