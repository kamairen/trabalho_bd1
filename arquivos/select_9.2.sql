#Seleciona todos os jogadores do sexo masculino
cur.execute("""select * from jogador where sexo = 'M'""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n")
#Seleciona todas as partidas de futebol
cur.execute("""select * from partida where modalidade = 'Futebol'""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n")

#Seleciona todos os registros de partidas que acabaram 0 a 0
cur.execute("""select * from registro where placar_proponente= 0 and placar_convidado=0""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n")

#Selecion todos os Ids de jogadores que são participantes do time com id 5
cur.execute("""select * from jogador_time where id_Time= 5""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n")
