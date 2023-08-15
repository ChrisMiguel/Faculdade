#Exercício do erro
a1 = 114.6

a2 = 114,8

round(a1) = 115

round(a2) = 115

round(a2) = erro

round(a1) = erro

# Exercício Bruno
from math import floor, ceil
peso=float(input('Quanto você pesa em Kg?(kg)'))
altura=float(input('Quanto você mede em altura?(m)'))
IMC=peso/(altura**2)
teto_imc = floor(IMC)
print('O seu IMC é de {:.1f}'.format(IMC))

#Exercício da conta enorme
a = ((45/8)**(2+1.5))/(1-(5/7 + 6)/4) + 600
print('O resultado é: {:.4f}'.format(a))
