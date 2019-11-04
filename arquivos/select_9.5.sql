#Atualiza o nome do time com id 4
cur.execute("""UPDATE Time SET nome_time ='CompetidoresNulos' WHERE Time.id_time = 4 """)

#Atualiza o nome do jogador com id 5
cur.execute("""UPDATE Jogador SET nome_completo = 'Jociara Maravilhusa' WHERE id_jogador = 5""")

#Deleta todos os dados de Jogador com id 18
cur.execute("""DELETE FROM Jogador WHERE id_jogador = 18""")

#Deleta a partida com id 2
cur.execute("""DELETE FROM Partida WHERE id_partida = 2 """)

#Atualiza a modalidade de uma partida com id 3
cur.execute("""UPDATE registro SET placar_proponente = 11 WHERE id_partida = 1""")

#Atualiza o jogador Nando Moura
cur.execute("""UPDATE jogador SET Nome_completo = 'Dando Boura' where nome_completo ilike '%Nando Moura%'""")
