import psycopg2
conn = psycopg2.connect(host = "tuffi.db.elephantsql.com", port = "5432", database = "epiisgzj", user = "epiisgzj", password = "rPcFrCdmPfIHaGYn_j105uSkXOf1Q2up")
cur = conn.cursor()

print("1")
#Seleciona todos os times que possuem Capitao com id 5
cur.execute("""select * from time as tm where id_capitao > 5 """)
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n 2")
#Seleciona todas partidas que foram criadas pelo time de id 5 e são de futebol
cur.execute("""select * from partida as pt where id_modalidade = 1 and id_time = 5 """)
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n 3")
#Seleciona toads as partidas que estão localizadas entre -23.097417 e -23.098520 de latitude e possuem longitude de -43.219780 ou que são do time 2
cur.execute("""select * from partida as pt where (latitude < - 23.097417 and latitude >-23.098520) and longitude = -43.219780 or id_time = 2""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n 4")
#Seleciona todas as mensagens do chat com id 21 e que são do jogador com id 5
cur.execute("""select * from mensagem as msg where (id_chat = 21 and id_jogador = 5 )""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n 5")
#Seleciona todos os registros do time convidado com id 5
cur.execute("""select * from registro as rg where id_time = 5""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n 6")
#Seleciona todos os registros dos time convidado com id 2 e que tenham perdido
cur.execute("""select * from registro as rg where id_time = 2 and placar_convidado<placar_proponente""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n 7")
#Seleciona todos os registros do time convidado com id 5 e que tenham vencido
cur.execute("""select * from registro as rg where id_time = 5 and placar_convidado>placar_proponente""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n 8")
#Seleciona todos os registros do time convidado que possuem id 2 e que tenha empatado
cur.execute("""select * from registro as rg where id_time = 2 and placar_convidado=placar_proponente""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n 9")

#Seleciona a média de gols do time convidado com id 5
cur.execute("""select avg(placar_convidado) as MediaDeGols from registro as rg where id_time = 5 GROUP BY rg.id_time""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n 10")
#Seleciona a soma de Gols do time convidado da partida com id 2
cur.execute("""select sum(placar_convidado) as somaDeGols from registro as rg where rg.id_time = 2 GROUP BY rg.id_time""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n 11")

#Seleciona a quantidade de jogadores de cada time proponente de cada partida
cur.execute("""select count(jt.id_jogador) as numJogadores,tm.nome_time as NomeTime,pt.id_partida FROM Time as tm inner join jogador_time as jt on (jt.id_time = tm.id_time) INNER join jogador as jg on(jt.id_jogador = jg.id_jogador) INNER JOIN partida as 
pt on (jt.id_time = pt.id_time) GROUP BY pt.id_partida,tm.nome_time""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n")
