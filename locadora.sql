CREATE DATABASE locadora;
USE locadora;

CREATE TABLE filmes(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    genero VARCHAR(255),
    duracao INT
    );
CREATE TABLE jogos(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    categoria VARCHAR(255),
    num_jogadores INT
);
CREATE TABLE series(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    genero VARCHAR(255),
    num_temporadas INT
);
CREATE TABLE aluguel_filme(
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_filme INT,
    FOREIGN KEY (id_filme) REFERENCES filmes(id),
    horario TIME,
    valor FLOAT
);
CREATE TABLE aluguel_jogos(
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_jogo INT,
    FOREIGN KEY (id_jogo) REFERENCES jogos(id),
    horario TIME,
    valor FLOAT
);
CREATE TABLE aluguel_series(
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_serie INT,
    FOREIGN KEY (id_serie) REFERENCES series(id),
    horario TIME,
    valor FLOAT
);
