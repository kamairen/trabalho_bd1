
select * from Jogador

select * from Time

select * from Partida

select * from Registro

select * from Chat


print("Tabela Jogador_Time")
cur.execute("""select * from Jogador_Time""")
result = cur.fetchall()
for i in result:
  print(i)
print("\n")
