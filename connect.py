import mysql.connector

db_config = {
    "host": "localhost",
    "user": "root",
    "password": "Mysql102030",
    "database": "locadora"
}



conexao = mysql.connector.connect(**db_config)   #** desmembrar objetos destro de um objeto / biblioteca
cursor = conexao.cursor()
titulo_filme = str(input("Digite o título do filme: "))
genero_filme = str(input("Digite o gênero do filme: "))
ano_filme = int(input("Digite o ano de lançamento do filme: "))

cursor.execute(f"""
INSERT INTO 
filmes (titulo, genero, ano_lanc) 
VALUES 
('{titulo_filme}', '{genero_filme}',{ano_filme})""")
conexao.commit()
cursor.close()
conexao.close()





conexao = mysql.connector.connect(**db_config)   #** desmembrar objetos dentro de um objeto / biblioteca
cursor = conexao.cursor()
cursor.execute("SELECT * FROM filmes")
lista_de_filmes = cursor.fetchall()
cursor.close()
conexao.close()

print(lista_de_filmes)