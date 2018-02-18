import grakn

client = grakn.Client(uri='http://localhost:4567', keyspace='nucleus')

#print(client.execute("match $x sub entity;get;"))
#print(client.execute("insert has name 'Romania', isa Country;"))
#print(client.execute("insert has name 'UK', isa Country;"))
#print(client.execute("insert has name 'France', isa Country;"))
#print(client.execute("insert has name 'USA', isa Country;"))
#print(client.execute("insert has name 'Germany', isa Country;"))
#print(client.execute("insert has name 'Rusia', isa Country;"))

#print(client.execute("insert has name 'EUR', isa Currency;"))
#print(client.execute("match $cu has name 'EUR', isa Currency; $co has name 'Germany', isa Country; insert (currencyIssuer: $co, currency: $cu) isa countryCurrency;"))
