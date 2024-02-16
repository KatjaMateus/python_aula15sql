INSERT, UPDATE, DELETE E CONSTRAINTS


CREATE DATABASE locadora;
USE locadora;

CREATE TABLE filmes(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) UNIQUE,
    genero VARCHAR(45),
	preco FLOAT
);


INSERT INTO filmes VALUES (DEFAULT, "As Branquelas", "Comédia", 3.5);
INSERT INTO filmes (nome, preco, genero) VALUES("Senhor dos Anéis", 5, "Fantasia");


SELECT * FROM filmes;
SELECT nome FROM filmes;
SELECT nome, preco FROM filmes;
SELECT nome FROM filmes WHERE preco > 4;

UPDATE filmes SET nome = "O Senhor dos Aneis o Retorno do Rei" WHERE id = 2;

DELETE FROM filmes WHERE id = 1;





CREATE TABLE clientes(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    idade INT,
    CHECK(idade>=18)
);

INSERT INTO clientes (nome, idade) VALUES("Abel", 28);
INSERT INTO clientes (nome, idade) VALUES("Maria", 28);
INSERT INTO clientes (nome, idade, cpf) VALUES("Pedro", 20, "12345678900");
SELECT * FROM clientes;
