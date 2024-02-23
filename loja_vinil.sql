CREATE DATABASE mundo_vinil;
USE mundo_vinil;

CREATE TABLE cliente(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255)
    
);
CREATE TABLE pedido(
	id INT AUTO_INCREMENT PRIMARY KEY,
    produto VARCHAR(255),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);


INSERT INTO cliente (nome) VALUES
("João"),
("Maria"),
("José"),
("Ana"),
("Pedro"),
("Patricia"),
("Carlos"),
("Rebeca");

INSERT INTO pedido (produto, id_cliente) VALUES
("Rolling Stones",1),
("Cult",1),
("Hanoi Rocks",2),
("The Doors",3),
("Red Hot Chili Peppers",4),
("Blondie",4),
("Black Sabbath",5),
("Deep Purpe",8);

SELECT cliente.nome AS nome_cliente, pedido.id AS id_cliente, pedido.produto AS nome_produto
FROM cliente LEFT JOIN pedido ON cliente.id = pedido.id_cliente