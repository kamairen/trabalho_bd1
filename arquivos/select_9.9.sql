#não existe tabela que seja possivel fazer um selfjoin

#cria uma view para selecionar todos jogadores masculinos
cur.execute("""create view jog_masc as select * from jogador where sexo = 'M'""")

#cria uma view que seleciona o nome de todos os jogadores de cada time, junto com o nome dos times e ordena pelo nome
cur.execute("""create view jog_time as select jg.nome_completo,tm.nome_time from time as tm
inner join jogador_time as jt on (tm.id_time = jt.id_time) inner join jogador as jg
on (jt.id_jogador = jg.id_jogador) order by jg.nome_completo""")

#cria uma view para quantas partidas times proponentes venceram
cur.execute("""create view vitoria_propo as select count(tm.nome_time) as numeroVitorias,tm.nome_time
               from time as tm inner join partida as pt
               on(tm.id_time = pt.id_time) inner join registro as rg on(pt.id_partida = rg.id_partida) where
               rg.placar_Proponente>rg.placar_Convidado group by(tm.nome_time)""")

#cria uma view para quantas partidas times convidados venceram
cur.execute("""create view vitoria_convi as select count(tm.nome_time) as numeroVitorias,tm.nome_time from partida as pt
               inner join registro as rg on(pt.id_partida = rg.id_partida) inner join time as tm
               on(tm.id_time = rg.id_time) where rg.placar_Proponente>rg.placar_Convidado group by(tm.nome_time)""")

#cria uma view para todos os jogadores de cada time
cur.execute("""create view todosJog_time as SELECT tm.nome_time as NomeTime,jg.nome_completo
               as NomeJogador FROM Time as tm INNER JOIN Jogador_Time
               as jt on(tm.id_time = jt.id_time) INNER JOIN jogador as jg ON
               (jt.id_jogador = jg.id_jogador) ORDER BY jg.nome_completo""")

#cria uma view para mostrar o nome de todos os jogadores maiores de 18 anos
cur.execute("""create view jog_maior18 as select nome_completo from jogador
where extract(year from age(current_date,Data_Nascimento)) >= 18""")
