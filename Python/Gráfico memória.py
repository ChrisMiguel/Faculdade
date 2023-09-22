#Exercício 02

from scipy import stats
import numpy as np
import matplotlib.pyplot as plt
import sympy as sp
import statistics as st


velocidade = np.array([45, 42, 41, 36, 34, 36, 37, 40, 35, 32])
brilho = [22, 20, 15, 16, 12, 15, 21, 32, 30, 20]

print("Moda dos valores de brilho: {:.02f}%".format(st.mode(brilho)))
print("Mediana dos valores de brilho: {:.02f}%".format(st.median(brilho)))
print("Decils dos valores de briho: ", st.quantiles(brilho, n=10, method='inclusive'))
print("Variância dos valores de brilho: {:.02f}".format(st.variance(brilho)))
print("Desvio de padrão dos valores de brilho: {:.02f}".format(st.stdev(brilho)))

solucao = stats.linregress(velocidade, brilho)
a_coef_angular, b_coef_linear = solucao.slope, solucao.intercept
print('A equação da reta é: y = {:.04f}x + {:.04f}'.format(a_coef_angular, b_coef_linear))

def formula(a,b,x):
    return a*x + b

def graph(a,b , x_range):
    x = velocidade
    y = formula(a,b,x)
    plt.scatter(velocidade, brilho)
    plt.plot(x,y)
    plt.xticks(np.arange(5, 40, step = 5))
    plt.xlabel('Utilização')
    plt.ylabel('CPU')
    plt.title('Relação da utilização da CPU')
    plt.grid()
    plt.show()
    
graph(a_coef_angular, b_coef_linear, range(5,35))


#print("Quanto maior a velocidade, menor será o brilho da imagem.")
#print("Com base na nossa análise, para obter uma foto com maior índice de brilho, a velocidade do obturador tem que ser menor.")

