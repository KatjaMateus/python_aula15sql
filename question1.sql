CREATE DATABASE questao1;
USE questao1;
CREATE TABLE cliente(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255)
);
ALTER TABLE cliente ADD email VARCHAR(50);
ALTER TABLE cliente MODIFY email VARCHAR(50);
CREATE TABLE pedido(
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id),
    data_pedido DATE
);