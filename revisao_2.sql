CREATE DATABASE escola;
USE escola;
CREATE TABLE professores(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    disciplina VARCHAR(255)
);
CREATE TABLE turma(
	id INT AUTO_INCREMENT PRIMARY KEY,
    horario TIME,
    id_professor INT,
    FOREIGN KEY (id_professor) REFERENCES professores(id)
);
CREATE TABLE alunos(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    cpf CHAR(11) UNIQUE NOT NULL,
    endereco VARCHAR(255),
    id_turma INT,
    FOREIGN KEY (id_turma) REFERENCES turma(id)
    );
    
INSERT INTO professores (nome, disciplina) VALUES
("Gabriel", "matemática"),
("Samuel", "geografia")
;

INSERT INTO turma (horario, id_professor) VALUES
("15:30:00",2),
("18:00:00",1)
;

INSERT INTO alunos (nome, cpf, endereco, id_turma) VALUES 
("Maria", "5555552221", "Rua Rei I", 1),
("João", "44556677889", "Rua Rainha I", 1),
("Chris", "32344543545", "Rua Rei I", 2),
("Tite", "34565434565", "Rua Rei II", 2),
("Daniel", "34321345678", "Rua Rainha I", 2)
;

UPDATE alunos SET nome = "Christofer" WHERE id = 3;
DELETE FROM alunos WHERE id = 4;
SELECT * FROM alunos;
UPDATE alunos SET cpf = "55555522211" WHERE id = 1;
SELECT * FROM alunos;


