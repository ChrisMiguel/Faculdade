Elite = {'Bradesco', 'BB Seguridade', 'Banrisul', 'Engie', 'Itaúsa', 'Sanepar', 'Taesa', 'CTEEP', 'Telefônica Brasil', 'Vale'}
Genial = {'CPFL', 'Minerva', 'Cyrela', 'Randon', 'CTEEP'}
NovaFutura = {'B3', 'Cyrela', 'Gerdau', 'Vivo', 'CTEEP'}
Ágora = {'Itaúsa', 'Ecorodovias', 'Taesa', 'B3', 'Vale'}
Ativa = {'Telefônica Brasil', 'CTEEP', 'Bradesco', 'BB Seguridade','BR Distribuidora', 'Taesa', 'B3', 'Vale'}
EasyNest = {'Copel', 'Brasil Agro', 'Taesa', 'B3', 'Vale', 'Ambev', 'Itaúsa', 'Coca-cola'}
Guide = {'CPFL', 'Cyrela', 'Banco do Brasil', 'Alupar', 'Vale', 'Klabin', 'Porto Seguro', 'Tim'}
Órama = {'Engie', 'CESP', 'Minerva', 'Bradesco', 'Banco ABC'}

conjAtiva = set(Ativa)
conjEasyNest = set(EasyNest)
conjGuide = set(Guide)
conjÓrama = set(Órama)

conjElite = set(Elite)
conjGenial = set(Genial)
conjNovaFutura = set(NovaFutura)
conjÁgora = set(Ágora)

conjAll = conjElite &  conjÁgora & conjGenial & conjNovaFutura
conjAll2 = conjEasyNest &  conjÁgora & conjAtiva & conjNovaFutura


print(conjElite.issubset(conjGenial))
print(conjElite.issubset(conjNovaFutura))
print(conjElite.issubset(conjÁgora))

print(conjGenial.issubset(conjElite))
print(conjGenial.issubset(conjNovaFutura))
print(conjGenial.issubset(conjÁgora))

print(conjNovaFutura.issubset(conjÁgora))
print(conjNovaFutura.issubset(conjElite))
print(conjNovaFutura.issubset(conjGenial))

print(conjÁgora.issubset(conjNovaFutura))
print(conjÁgora.issubset(conjGenial))
print(conjÁgora.issubset(conjElite))
