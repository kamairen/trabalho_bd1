#Seleciona nome do time proponente, time convidado e o placar de cada, de todos os jogos em que o time proponente venceu
cur.execute("""select tm.nome_time as proponente,placar_proponente,(select time.nome_time from time where time.id_time = rg.id_time) as convidado ,placar_convidado
               from time as tm inner join partida as pt on(tm.id_time = pt.id_time) inner join registro as
               rg on(pt.id_partida = rg.id_partida) where rg.placar_proponente > rg.placar_convidado""")
result = cur.fetchall()
for i in result:
  print(i)

print("\n")


#Seleciona o nome do jogador que mandou mensagem com xingamento do chat da partida 2
cur.execute("""select jg.nome_completo from mensagem as ms inner join Jogador as jg on(jg.id_jogador = ms.id_jogador) where mensagem like '%caralho$' and (select id_partida from chat where ms.id_chat = chat.idchat)=2""")
result = cur.fetchall()
for i in result:
  print(i)

print("\n")

#Seleciona todos os jogadores com mais de 15 anos do time proponente de cada partida
cur.execute("""select jg.nome_completo, pt.id_partida as id_partida From partida as pt inner join time as tm on(pt.id_time = tm.id_time) Inner join jogador_time as jt on (jt.id_time = tm.id_time) inner join jogador as jg on (jg.id_jogador = jt.id_jogador) where (select date_part('year',age(current_date,jg.data_nascimento)) from jogador as jg where jg.id_jogador = jt.id_jogador)>=15""")
result = cur.fetchall()
for i in result:
  print(i)

print("\n")
