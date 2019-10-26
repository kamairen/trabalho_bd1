import psycopg2
conn = psycopg2.connect(host = "tuffi.db.elephantsql.com", port = "5432", database = "epiisgzj", user = "epiisgzj", password = "rPcFrCdmPfIHaGYn_j105uSkXOf1Q2up")
cur = conn.cursor()

print("1")
#Seleciona todos os times que foram fundados hoje
cur.execute("""select * from time where Data_fundacao=current_date""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n 2")

#Seleciona todos os times que foram tem ou tiveram partida hoje
cur.execute("""select * from partida where Data_partida=current_date""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n 3")

#Seleciona todos os times que possuem mais de 4 meses de criação
cur.execute("""select * from time where extract(month from age(current_date,Data_fundacao)) >= 4""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n 4")

#Seleciona todos os jogadores maiores de 18 anos
cur.execute("""select * from jogador where extract(year from age(current_date,Data_Nascimento)) >= 18""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n 5")

#Seleciona todos os jogadores com mais de 40 anos
cur.execute("""select * from jogador where extract(year from age(current_date,Data_Nascimento)) > 40""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n 6")

#Busca por jogadores que começam com Ronald em seus nomes
cur.execute("""select * from jogador where Nome_completo like 'Ronald%'""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n 7")

#Busca por jogadores que começam com Silva em seus nomes
cur.execute("""select * from jogador where Nome_completo like '%Silva%'""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n 8")

#Busca por jogadores que iniciam com a letra N
cur.execute("""select * from jogador where Nome_completo like 'N%'""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n 9")

#Busca por times que possuam Mak em seus nomes
cur.execute("""select * from time where Nome_time like '%Mak%'""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n 10")

#Busca por times que foram fundados no primeiro semestre de 2017
cur.execute("""select * from time where Data_fundacao > '2017-01-01' and Data_fundacao < '2017-07-01'""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n 11")


#Busca por times que possuam maozinhas no nome e foram fundados em 2019 até hoje
cur.execute("""select * from time where Nome_time like '%maozinhas%' and Data_fundacao > '2019-01-01' and Data_fundacao < current_date """)
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n 12")

#Busca por partidas que ocorreram depois das 20h e antes das 00h
cur.execute("""select * from partida where Hora_agendamento > '20:00' and Hora_agendamento <= '23:59'""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n")
