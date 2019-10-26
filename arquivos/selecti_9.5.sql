import psycopg2
conn = psycopg2.connect(host = "tuffi.db.elephantsql.com", port = "5432", database = "epiisgzj", user = "epiisgzj", password = "rPcFrCdmPfIHaGYn_j105uSkXOf1Q2up")
cur = conn.cursor()

#Atualiza o nome do time com id 4
cur.execute("""UPDATE Time SET nome_time ='CompetidoresNulos' WHERE Time.id_time = 4 """) 

#Atualiza o nome do jogador com id 5
cur.execute("""UPDATE Jogador SET nome_completo = 'Jociara Maravilhusa' WHERE id_jogador = 5""")

#Deleta todos os dados de Jogador com id 18
cur.execute("""DELETE FROM Jogador WHERE id_jogador = 18""")

#Deleta a partida com id 2
cur.execute("""DELETE FROM Partida WHERE id_partida = 2 """)  

#Atualiza a modalidade de uma partida com id 3
cur.execute("""UPDATE Modalidade SET nome = 'Handball' WHERE id = 3""")

#Deleta o jogador Nando Moura
cur.execute("""DELETE FROM jogador WHERE Nome_completo = '	Juliano Moura Matos'""")
