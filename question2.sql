CREATE DATABASE questao2;
USE questao2;
CREATE TABLE produto(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    preco FLOAT,
    CHECK(preco>0)
);