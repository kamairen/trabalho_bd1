#mostra cada jogador e o número de times que ele faz parte
cur.execute("""select jg.nome_completo, count(jg.nome_completo) from time as tm inner join jogador_time as jt on
                (tm.id_time = jt.id_time) inner join jogador as jg on (jt.id_jogador = jg.id_jogador)
                group by jg.nome_completo order by count(jg.nome_completo) desc""")
result = cur.fetchall()
for i in result:
  print(i)

print("\n")

#mostra a média e o desvio padrão do placar do time proponente
cur.execute("""select avg(rg.placar_Proponente), stddev(rg.placar_Proponente) as numeroVitorias,tm.nome_time from time as tm inner join partida as pt
               on(tm.id_time = pt.id_time) inner join registro as rg on(pt.id_partida = rg.id_partida) where
               rg.placar_Proponente>rg.placar_Convidado group by(tm.nome_time)""")
result = cur.fetchall()
for i in result:
  print(i)

print("\n")

#mostra a média e o desvio padrão do placar do time convidado
cur.execute("""select avg(rg.placar_convidado), stddev(rg.placar_convidado) as numeroVitorias,tm.nome_time from time as tm inner join partida as pt
               on(tm.id_time = pt.id_time) inner join registro as rg on(pt.id_partida = rg.id_partida) where
               rg.placar_Proponente<rg.placar_Convidado group by(tm.nome_time)""")
result = cur.fetchall()
for i in result:
  print(i)

print("\n")

#mostra as 10 idades mais frequentes dos jogadores
cur.execute("""select extract(year from age(current_date, Data_Nascimento)), count(extract(year from age(current_date, Data_Nascimento)))
from jogador group by extract(year from age(current_date, Data_Nascimento))
order by count(extract(year from age(current_date, Data_Nascimento))) desc limit 10""")
result = cur.fetchall()
for i in result:
  print(i)

print("\n")

#Exibe as três modalidades mais jogadas
cur.execute("""select modalidade.nome, count(modalidade.nome) from modalidade inner join
partida on modalidade.id = partida.id_modalidade group by modalidade.nome order by count(modalidade.nome) desc limit 3""")
result = cur.fetchall()
for i in result:
  print(i)

print("\n")
#Seleciona a media de idade dos jogadores de cada time
cur.execute("""SELECT tm.nome_time,avg(extract(year from age(current_date,jg.data_nascimento))) as media_idade from
                time as tm inner join jogador_time as jt on(tm.id_time = jt.id_time)
                inner join jogador as jg on(jt.id_jogador = jg.id_jogador) GROUP BY tm.nome_time ORDER BY tm.nome_time""")
result = cur.fetchall()
for i in result:
  print(i)

print("\n")
