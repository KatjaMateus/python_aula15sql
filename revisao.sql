CREATE DATABASE escola;
USE escola;
CREATE TABLE turma(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200),
    horario TIME
)
CREATE TABLE alunos(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(55),
    cpf CHAR(11),
    turma INT,
    idade INT,
    
    FOREIGN KEY (turma) REFERENCES turma(id)
)
CREATE TABLE professores(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(55),
    disciplina VARCHAR(200),
    turma INT,
    
    FOREIGN KEY (turma) REFERENCES turma(id)
)
ALTER TABLE alunos MODIFY cpf CHAR(10);
ALTER TABLE turma CHANGE nome titulo VARCHAR(15);
ALTER TABLE turma ADD qtde_alunos INT;
ALTER TABLE turma DROP COLUMN qtde_alunos;