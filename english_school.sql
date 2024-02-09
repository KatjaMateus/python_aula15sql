CREATE DATABASE English_School;
USE English_School;

CREATE TABLE alunos(
	id_matricula INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(55),
    idade INT,
    endereco VARCHAR(55)
    );
CREATE TABLE professores(
	id_matricula INT,
    FOREIGN KEY (id_matricula) REFERENCES alunos(id_matricula),
    nome VARCHAR(55),
    especialidade VARCHAR(55)
);
CREATE TABLE turma(
	id_turma INT PRIMARY KEY AUTO_INCREMENT,
    hora_inicio INT,
    dia VARCHAR(20)
);
CREATE TABLE disciplinas(
	id_disciplina INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    quantidade_aulas INT
);


