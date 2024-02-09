CREATE DATABASE escola;
USE escola;
CREATE TABLE alunos(
	id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(55),
    idade INT
    );
CREATE TABLE cursos(
	id_curso INT PRIMARY KEY AUTO_INCREMENT,
    nome_curso VARCHAR(55),
    carga_horaria INT
    );
CREATE TABLE matriculas(
	id_matricula INT PRIMARY KEY AUTO_INCREMENT,
	id_aluno INT,
    id_curso INT,
    data_matricula VARCHAR(10),
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
    );


