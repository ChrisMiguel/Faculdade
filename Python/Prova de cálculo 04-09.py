import statistics as st
import sympy as at
from scipy import stats
import numpy  as np
import matplotlib.pyplot as plt

TempoUso = [8.00, 8.01, 8.02, 8.03, 8.04, 8.05, 8.06, 8.07, 8.08, 8.09, 8.10, 8.11, 8.12, 8.13, 8.14, 8.15, 8.16, 8.17, 8.18,8.19, 8.20, 8.21, 8.22, 8.23, 8.24, 8.25]

RamUtil = [4.5188, 4.5421, 4.8913, 5.2917, 5.2656, 5.2516, 5.2695,5.4007, 5.2057, 5.1610, 5.4397, 5.3365, 5.3389, 5.2745, 5.2690, 5.3353, 5.3180, 5.2788, 5.3022, 5.3551, 5.4166, 5.4069, 5.4794, 5.4765, 5.4891, 5.5210]

print("A média da RAM é: {}".format(st.mean(RamUtil)))
print("A médiana da RAM é: {}".format(st.median(RamUtil)))
#print("A média dos usuários é: {:.02f}".format(st.stdev(Yield)))
#print("O primeiro Quartil da RAM é: {}".format(st.mean(RamUtil)))
print(st.quantiles(RamUtil, n=1, method='inclusive'))
st.quantiles(RamUtil, n=4, method='inclusive')
#print("O terceiro Quartil da RAM é: {}".format(st.quantiles(n=3)(RamUtil)))
print("A variância da RAM é: {}".format(st.variance(RamUtil)))
print("O desvio padrão da RAM é: {}".format(st.pstdev(RamUtil)))
print("O desvio padrão amostral da RAM é: {}".format(st.stdev(RamUtil)))
print("A variância populacional da RAM é: {}".format(st.pvariance(RamUtil)))


try: 

   list = 5*[0]+5*[10] 
   x = list[9] 
   print('Done!') 
except IndexError: 
   print('Index out of Bond!') 
else: 
   print('Nothing is wrong!') 
finally: 
   print('Finally block!') 
