REVISÃO

CREATE DATABASE escola;
USE escola;

CREATE TABLE turma(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(10),
    horario TIME
);

CREATE TABLE aluno(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    cpf CHAR(11),
    id_turma INT,
    FOREIGN KEY (id_turma) REFERENCES turma(id),
    idade INT
);

CREATE TABLE professor(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    disciplina VARCHAR(45),
    id_turma INT,
    FOREIGN KEY (id_turma) REFERENCES turma (id)
);



MODIFY serve para alterar apenas o TIPO de um campo, você coloca o nome que você quer alterar e o novo tipo
ALTER TABLE turma MODIFY nome VARCHAR(15);

CHANGE serve para mudar o nome de um campo, você coloca primeiro o nome antigo, depois o nome novo e o tipo do nome novo
ALTER TABLE turma CHANGE nome titulo VARCHAR(15);

ADD serve para adicionar um novo campo na tabela, você coloca o nome do novo campo e seu tipo
ALTER TABLE turma ADD qtde_alunos INT;

DROP COLUMN serve para excluir um campo na tabela, você coloca o nome do campo a ser deletado.
ALTER TABLE turma DROP COLUMN qtde_alunos;
