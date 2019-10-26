#Seleciona todos os jogadores do sexo masculino
cur.execute("""select * from jogador where sexo = 'M'""")
result = cur.fetchall()
for i in result:
  print(i)
print("\n")

#Seleciona modalidade futebol
cur.execute("""select * from modalidade where nome = 'Futebol'""")
result = cur.fetchall()
for i in result:
  print(i)  
print("\n")

#Seleciona todos os registros de partidas que acabaram 2 a 2
cur.execute("""select * from registro where placar_proponente= 2 and placar_convidado=2""")
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
