#1
Elite = {'Bradesco', 'BB Seguridade', 'Banrisul', 'Engie', 'Itaúsa', 'Sanepar', 'Taesa', 'CTEEP', 'Telefônica Brasil', 'Vale'}
Genial = {'CPFL', 'Minerva', 'Cyrela', 'Randon', 'CTEEP'}
NovaFutura = {'B3', 'Cyrela', 'Gerdau', 'Vivo', 'CTEEP'}
Ágora = {'Itaúsa', 'Ecorodovias', 'Taesa', 'B3', 'Vale'}
Ativa = {'Telefônica Brasil', 'CTEEP', 'Bradesco', 'BB Seguridade','BR Distribuidora', 'Taesa', 'B3', 'Vale'}
EasyNest = {'Copel', 'Brasil Agro', 'Taesa', 'B3', 'Vale', 'Ambev', 'Itaúsa', 'Coca-cola'}
Guide = {'CPFL', 'Cyrela', 'Banco do Brasil', 'Alupar', 'Vale', 'Klabin', 'Porto Seguro', 'Tim'}
Órama = {'Engie', 'CESP', 'Minerva', 'Bradesco', 'Banco ABC'}

#2
conjAtiva = set(Ativa)
conjEasyNest = set(EasyNest)
conjGuide = set(Guide)
conjÓrama = set(Órama)


conjElite = set(Elite)
conjGenial = set(Genial)
conjNovaFutura = set(NovaFutura)
conjÁgora = set(Ágora)

#3
conjAll3 = conjElite &  conjÁgora & conjGenial & conjNovaFutura & conjEasyNest &  conjÁgora & conjAtiva & conjNovaFutura
print('Comum entre todas corretoras',conjAll3)

#4A
conjAll = conjElite &  conjÁgora & conjGenial & conjNovaFutura
conjAll2 = conjEasyNest &  conjÁgora & conjAtiva & conjNovaFutura
print('É comum nas 4 corretoras',conjAll)

#B
acoes_unicas = conjElite != conjÁgora != conjGenial != conjNovaFutura
print('Ações únicas das corretoras',acoes_unicas)

#C 
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

#D
acoes_exclusivas = conjElite - conjÁgora - conjGenial - conjNovaFutura
print('É comum nas 4 corretoras',acoes_exclusivas)
