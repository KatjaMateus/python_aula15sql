import mysql.connector

def consultar_banco(query):
    conexao = mysql.connector.connect(**db_config)   #** desmembrar objetos dentro de um objeto / biblioteca
    cursor = conexao.cursor()
    cursor.execute(query)
    lista = cursor.fetchall()
    cursor.close()
    conexao.close()
    return lista

def bulir_no_banco(query):
    conexao = mysql.connector.connect(**db_config)   
    cursor = conexao.cursor()
    cursor.execute(query)
    conexao.commit()
    cursor.close()
    conexao.close()
    return "Banco alterado com sucesso"

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





todos_os_filmes = consultar_banco("SELECT * FROM filmes")
filmes_pos_2000 = consultar_banco("SELECT nome FROM filmes WHERE ano_lanc > 2000")

while True:
    menu = int(input("""
    Escolha um número
    1 - Adicionar Filme
    2 - Ver todos os Filmes
    3 - Editar filme
    4 - Deletar filme
    0 - Sair
    """))
    match menu:
        case 1:
            titulo_filme = str(input("Digite o título do filme: "))
            genero_filme = str(input("Digite o gênero do filme: "))
            ano_filme = int(input("Digite o ano de lançamento do filme: "))

            query = f"""
            INSERT INTO filmes
            (titulo, genero, ano_lanc)
            VALUES
            ('{titulo_filme}', '{genero_filme}', {ano_filme})
            """
            print(bulir_no_banco(query))
        case 2:
            print(consultar_banco("SELECT * FROM filmes"))
        case 3:
            id_filme_alterado = int(input("Digite o ID do filme que você quer alterar: "))
            novo_titulo_filme = str(input("Digite o novo título do filme: "))
            novo_genero_filme = str(input("Digite o novo gênero do filme: "))
            novo_ano_filme = int(input("Digite o novo ano de lançamento do filme: "))
            query = f"""
            UPDATE filmes 
            SET 
            titulo = '{novo_titulo_filme}',
            genero = '{novo_genero_filme}',
            ano_lanc = {novo_ano_filme}
            WHERE id = {id_filme_alterado}
            """
            print(bulir_no_banco(query))
        case 4:
            id_filme_deletado = int(input("Digite o ID do filme que você quer deletar: "))
            query = f"DELETE FROM filme WHERE id = {id_filme_deletado}"
            print(bulir_no_banco(query))
        case 0:
            print("Fim do programa")
            break
        case _:
            print("Opção inválida")
