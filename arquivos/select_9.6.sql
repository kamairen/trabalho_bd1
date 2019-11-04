#Seleciona nome de cada time proponente e cada time convidado de cada partida
cur.execute("""select tm.nome_time as proponente,(select time.nome_time from time where time.id_time = rg.id_time) as convidado
               from time as tm inner join partida as pt on(tm.id_time = pt.id_time) inner join registro as
               rg on(pt.id_partida = rg.id_partida) where rg.placar_proponente = rg.placar_convidado""")
result = cur.fetchall()
for i in result:
  print(i)

print("\n")

#Seleciona o nome de todos os jogadores de cada time, junto com o nome dos times
cur.execute("""select jg.nome_completo,tm.nome_time from time as tm inner join jogador_time as jt on
               (tm.id_time = jt.id_time) inner join jogador as jg on (jt.id_jogador = jg.id_jogador) """)
result = cur.fetchall()
for i in result:
  print(i)

print("\n")
#Quantas partidas times proponentes venceram
cur.execute("""select count(tm.nome_time) as numeroVitorias,tm.nome_time from time as tm inner join partida as pt
               on(tm.id_time = pt.id_time) inner join registro as rg on(pt.id_partida = rg.id_partida) where
               rg.placar_Proponente>rg.placar_Convidado group by(tm.nome_time)""")
result = cur.fetchall()
for i in result:
  print(i)

print("\n")
#Quantas partidas times convidados venceram
cur.execute("""select count(tm.nome_time) as numeroVitorias,tm.nome_time from partida as pt
               inner join registro as rg on(pt.id_partida = rg.id_partida) inner join time as tm
               on(tm.id_time = rg.id_time) where rg.placar_Proponente>rg.placar_Convidado group by(tm.nome_time)""")
result = cur.fetchall()
for i in result:
  print(i)

print("\n")
#Quantas partidas cada time criou como proponente
cur.execute("""select count(pt.id_partida) as qtd_partidas,tm.nome_time from partida as pt inner join time as tm
               on(tm.id_time = pt.id_time) group by tm.id_time order by count(pt.id_partida) desc""")
result = cur.fetchall()
for i in result:
  print(i)

print("\n")
#Quantas partidas cada time aceitou como convidado
cur.execute("""select count(rg.id_registro) as qtd_partidas,tm.nome_time from registro as rg inner join
               time as tm on(tm.id_time = rg.id_time) group by tm.id_time order by count(rg.id_registro)""")
result = cur.fetchall()
for i in result:
  print(i)

print("\n")
#Todos os jogadores de cada time
cur.execute("""SELECT tm.nome_time as NomeTime,jg.nome_completo as NomeJogador FROM Time as tm INNER JOIN Jogador_Time
               as jt on(tm.id_time = jt.id_time) INNER JOIN jogador as jg ON
               (jt.id_jogador = jg.id_jogador) ORDER BY jg.nome_completo""")
result = cur.fetchall()
for i in result:
  print(i)

print("\n")
