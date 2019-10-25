import psycopg2
conn = psycopg2.connect(host = "tuffi.db.elephantsql.com", port = "5432", database = "epiisgzj", user = "epiisgzj", password = "rPcFrCdmPfIHaGYn_j105uSkXOf1Q2up")
cur = conn.cursor()

print("Tabela Jogador")
cur.execute("""select * from Jogador""")
result = cur.fetchall()
for i in result:
  print(i)
  
print("\n")
print("Tabela Time")

cur.execute("""select * from Time""")
result = cur.fetchall()
for i in result:
  print(i)
print("\n")

print("Tabela Partida")
cur.execute("""select * from Partida""")
result = cur.fetchall()
for i in result:
  print(i)
print("\n")

print("Tabela Registro")
cur.execute("""select * from Registro""")
result = cur.fetchall()
for i in result:
  print(i)
print("\n")

print("Tabela Chat")
cur.execute("""select * from Chat""")
result = cur.fetchall()
for i in result:
  print(i)
print("\n")

print("Tabela Jogador_Time")
cur.execute("""select * from Jogador_Time""")
result = cur.fetchall()
for i in result:
  print(i)
print("\n")
