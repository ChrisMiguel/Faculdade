import math

a = 2
#Exercício 1
print("2 elevado a 3 =", pow(a,3))

#Exercício 2
print("-2 elevado a 3 =", pow(-a, 3))

#Exercício 3
b = 1
print("1 elevado a 0 =", pow(b,0))

#Exercício 4
print("-1 elevado a 0 =", pow(b,0))

#Exercício 5
print("2 elevado a 0 =", pow(a,0))

#Exercício 6
print("2 sobre 5 elevado a 3 =", round(pow(a/5,3)))

#Exercício 7
c = 3
print("3 elevado a -2 =", round(pow(c,-2)))

#Exercício 8
print("1 sobre 2 elevado a -3 =", pow(b/2,-3))

#Exercício 9
print("-1 elevado a 3 elevado a 4 =", pow(-b,12))

#Exercício 10
d = 1/2
print("0,5 elevado a 3 elevado =", pow(d,3))

#Exercício 11
e = 1/3
print("0,25 elevado a 4 =", round(pow(e,4)))

#Exercício 12
f = 0
print("0 elevado a 4 =", pow(f,4))

#Exercício 13
g = pow(0.41,2)
h = g + b
print("1 mais 0,41 elevado a 2 =", round(h))

#Exercício 14
j = pow(5,2)
print("1 sobre 4 mais 5 ao cubo menos 2 elevado a -4 =", round(pow(b/4+j-2,-4), 4))

#Exercício 15
k = pow(b,-3)
z = 4
l = pow(-z,-5)
print("2 elevado a menos 3 mais 4 negativo elevado a 5 negativo =", round(k+l))

#Exercício 16
p = 4/5
o = 1/2
b = 1
v = pow(3,2)
n = pow(4-5,2)
print("4 sobre 5 menos 1/2 mais 1 tudo elevado a 2 mais 1 sobre 1 mais 3 ao quadrado menos 4 menos 5 elevado a menos 2 =", round(pow(p-o+b,-2)+(b/(b+v-n))))
