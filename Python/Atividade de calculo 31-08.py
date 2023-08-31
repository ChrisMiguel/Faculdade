import statistics as st
import sympy as at
from scipy import stats
import numpy  as np
import matplotlib.pyplot as plt

TempoVenc = [18,5,11,9,14,6,13,8,22,15,7,20,19,16,21,10,17,12]
Yield = [2.9,4.2,3.2,3.8,4.0,4.5,3.4,3.7,2.1,4.7,4.3,2.7,2.5,4.1,2.3,3.5,3.2,3.6]
#A
print("A média do Yield é: {:.02f}".format(st.mean(Yield)))
print("A médiana do Yield é: {}".format(st.median(Yield)))
print("A média dos usuários é: {:.02f}".format(st.stdev(Yield)))

#B
TempoVenc = np.array([18,5,11,9,14,6,13,8,22,15,7,20,19,16,21,10,17,12])
Yield = np.array([2.9,4.2,3.2,3.8,4.0,4.5,3.4,3.7,2.1,4.7,4.3,2.7,2.5,4.1,2.3,3.5,3.2,3.6])

solucao=stats.linregress(TempoVenc, Yield)

a_coef_angular, b_coef_linear = solucao.slope, solucao.intercept

print('A equação da reta é: y = {:.04f}x + {:.04f}'.format(a_coef_angular, b_coef_linear))
#C
def formula(a,b,x):
    return a*x + b

def graph(a,b , x_range):
    x = TempoVenc 
    y = formula(a,b,x)
    plt.scatter(TempoVenc,Yield)
    plt.plot(x,y)
    plt.xticks(np.arange(5, 40, step = 5))
    plt.xlabel('Tempo de Vencimento')
    plt.ylabel('Yield (%)')
    plt.title('Relações entre os rendimentos desse título')
    plt.grid()
    plt.show()

graph(a_coef_angular, b_coef_linear, range(5,35))
Print("Usar os insights para ter um tempo de vencimento menor")
Print("A recomendação é fazer um investimento de menor tempo para ter um aumento na porcentagem do Yield")

#D
Print("A recomendação é fazer um investimento de menor tempo para ter um aumento na porcentagem do Yield")
