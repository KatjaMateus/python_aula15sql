CREATE DATABASE cadastro_geral;
USE cadastro_geral;

CREATE TABLE pessoa_fisica(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome_completo VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    genero VARCHAR(50),
    nacionalidade VARCHAR(100) NOT NULL,
    e_mail VARCHAR(100) UNIQUE NOT NULL,
    estado_civil VARCHAR(50),
    nome_pai VARCHAR(255),
    nome_mae VARCHAR(255)
);

INSERT INTO pessoa_fisica (nome_completo, idade, genero, nacionalidade, e_mail, estado_civil, nome_pai, nome_mae) VALUES
("Cristiano Ronaldo", 42, "masculino", "português", "cr-7@gmail.com", "casado", "Eduardo Ronaldo", "Ana Maria Ronaldo"),
("Shakira Mubarak", 47, "feminino", "colombiano", "shakira@gmail.com", "casado", "Eduardo Mubarak", "Maria Mubarak"),
("Kim Kardashian", 43, "feminino", "americana", "kkim@gmail.com", "divorciado", "Ken Kardashian", "Cindy Kardashian")
;

UPDATE pessoa_fisica SET nome_completo = "Diana Duarte", idade = 25, genero = "feminino", nacionalidade = "brasileira", 
e_mail = "diana_duarte@gmail.com", estado_civil = "solteira", nome_pai = "Davi Duarte", nome_mae = "Christina Duarte" WHERE id = 1;

DELETE FROM pessoa_fisica WHERE id = 3;

SELECT * FROM pessoa_fisica;