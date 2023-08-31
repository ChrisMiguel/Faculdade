import sympy as sp
import statistics as st

#Separando em conjuntos
hora_dia = ["9:00","9:00","10:00","11:00","12:00","13:00","14:00","15:00","16:00","17:00","18:00"]
usuarios_ativos = {10,12,15,25,22,18,15,20,28,30}
uso_cpu = {20.0,25.2,30.0,45.1,42.7,33.6,31.5,45.0,53.1,60.2}

print(hora_dia)
print(usuarios_ativos)
print(uso_cpu)

#Capturando a média dos usuários
print("A média dos usuários é: {}".format(st.mean(usuarios_ativos)))

#Capturando a mediana dos usuários
print("A mediana dos usuários é: {}".format(st.median(usuarios_ativos)))

#Capturando a média da CPU
print("A média da CPU é: {}".format(st.mean(uso_cpu)))


#Capturando a mediana da CPU
print("A mediana da CPU é: {:.02f}".format(st.median(uso_cpu)))
