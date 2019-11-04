#seleciona qual a modalidade de cada time cadastrado
cur.execute("""select id_time,modalidade.nome from partida right outer join modalidade on (partida.Id_Modalidade=modalidade.id)""")
result = cur.fetchall()
for i in result:
  print(i)
print("\n")

#seleciona todos os jogadores e seus times, inclusive jogadores sem times
cur.execute("""select time.Nome_time, jogador.Nome_completo from jogador left outer join Jogador_time on (jogador.Id_jogador = Jogador_Time.Id_Jogador)
left outer join time on (Jogador_Time.Id_Time = time.Id_Time) order by time.nome_time""")
result = cur.fetchall()
for i in result:
  print(i)
print("\n")

#seleciona todos os placares e a respectiva modalidade
cur.execute("""select registro.placar_proponente,registro.placar_convidado,modalidade.nome from partida
left outer join registro on (registro.Id_partida = partida.id_partida) right outer join modalidade
on (partida.id_modalidade = modalidade.id)""")
result = cur.fetchall()
for i in result:
  print(i)
print("\n")

#seleciona o email dos jogadores e os locais que eles já jogaram
cur.execute("""select jogador.email, partida.endereco from jogador left outer join Jogador_time
on (jogador.Id_jogador = Jogador_Time.Id_Jogador) left outer join time on (jogador_time.Id_time = time.Id_time)
left outer join partida on (Time.Id_Time = partida.Id_Time) group by (jogador.email, partida.endereco) order by jogador.email""")
result = cur.fetchall()
for i in result:
  print(i)
print("\n")
