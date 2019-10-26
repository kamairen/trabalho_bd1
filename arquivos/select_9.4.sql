#Seleciona todos os times que foram fundados hoje
cur.execute("""select * from time where Data_fundacao=current_date""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n")

#Seleciona todos os times que foram tem ou tiveram partida hoje
cur.execute("""select * from partida where Data_partida=current_date""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n")

#Seleciona todos os times que possuem mais de um ano de criação
cur.execute("""select * from time where extract(year from age(Data_fundacao, current_date)) >= 1""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n")

#Seleciona todos os jogadores maiores de 18 anos
cur.execute("""select * from jogador where extract(year from age(Data_Nascimento, current_date)) > 18""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n")

#Seleciona todos os jogadores maiores de 40 anos
cur.execute("""select * from jogador where extract(year from age(Data_Nascimento, current_date)) > 40""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n")

#Busca por jogadores que começam com Ronald em seus nomes
cur.execute("""select * from jogador where Nome_completo like 'Ronald%'""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n")

#Busca por jogadores que começam com Silva em seus nomes
cur.execute("""select * from jogador where Nome_completo like '%Silva%'""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n")

#Busca por jogadores que iniciam com a letra L
cur.execute("""select * from jogador where Nome_completo like 'L%'""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n")

#Busca por times que possuam Fla em seus nomes
cur.execute("""select * from time where Nome_time like '%Fla%'""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n")

#Busca por times que foram fundados no primeiro semestre de 2017
cur.execute("""select * from time where Data_fundacao > '2017-01-01' and Data_fundacao < '2017-07-01'""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n")


#Busca por times que possuam Atlético no nome e foram fundados em 2019 até hoje
cur.execute("""select * from time where Nome_time like '%Atlético%' and Data_fundacao > '2019-01-01' and Data_fundacao < current_date """)
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n")

#Busca por partidas que ocorreram depois das 20h e antes das 00h
cur.execute("""select * from partida where Hora_partida > '20:00' and Hora_partida <= '23:59'""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n")
