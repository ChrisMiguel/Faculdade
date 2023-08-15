Python 3.11.4 (tags/v3.11.4:d2340ef, Jun  7 2023, 05:45:37) [MSC v.1934 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license()" for more information.
ll
Traceback (most recent call last):
  File "<pyshell#0>", line 1, in <module>
    ll
NameError: name 'll' is not defined. Did you mean: 'all'?
function somar(){
    
SyntaxError: '{' was never closed













cls
Traceback (most recent call last):
  File "<pyshell#15>", line 1, in <module>
    cls
NameError: name 'cls' is not defined
clear
Traceback (most recent call last):
  File "<pyshell#16>", line 1, in <module>
    clear
NameError: name 'clear' is not defined










































form math import pow
SyntaxError: invalid syntax
from math import pow
c = 4
d = 5
c_elevado_ao_quadrado = pow(c,2)
c_elevado_ao_cubo = pow(c,3)
c_elevado_a_quarta = pow(c,4)
c_elevado_a_d = pow(c,d)
print("c elevado ao quadrado =", c_elevado_ao_quadrado)
c elevado ao quadrado = 16.0
print("c elevado a d =", c_elevado_a_d)
c elevado a d = 1024.0
print(c_elevado_a_d)
1024.0
type(print(c_elevado_a_d))
1024.0
<class 'NoneType'>
x = 512
raiz_quadrada_de_x = pow(x,1/2)
raiz_quadrada_de_x = pow(x,1/3)
raiz_quadrada_de_x = pow(x,1/2)
raiz_quadrada_de_x = pow(x,1/2)
raiz_cubica_de_x = pow(x,1/3)
raiz_quarta_de_x = pow(x,1/4)
print("raiz quadrada de x", raiz_quadrada_de_x )
raiz quadrada de x 22.627416997969522
print("raiz cubica de x", raiz_cubica_de_x )
raiz cubica de x 7.999999999999999
print("raiz quarta de x", raiz_quarta_de_x )
raiz quarta de x 4.756828460010884
print("raiz quadrada de x", round(raiz_quadrada_de_x))
raiz quadrada de x 23
print("raiz quadrada de x", math.floor(raiz_quadrada_de_x))
Traceback (most recent call last):
  File "<pyshell#57>", line 1, in <module>
    print("raiz quadrada de x", math.floor(raiz_quadrada_de_x))
NameError: name 'math' is not defined
print("raiz quadrada de x", round(raiz_quadrada_de_x))
raiz quadrada de x 23
round(x,3)
512
round(raiz_cubica_de_x,3)
8.0
from math import floor
math.floor(raiz_cubica_de_x)
Traceback (most recent call last):
  File "<pyshell#62>", line 1, in <module>
    math.floor(raiz_cubica_de_x)
NameError: name 'math' is not defined
floor(raiz_cubica_de_x)
7
ceil(raiz_quadrada_de_x)
Traceback (most recent call last):
  File "<pyshell#64>", line 1, in <module>
    ceil(raiz_quadrada_de_x)
NameError: name 'ceil' is not defined
math.ceil(raiz_)
Traceback (most recent call last):
  File "<pyshell#65>", line 1, in <module>
    math.ceil(raiz_)
NameError: name 'math' is not defined
math.ceil(raiz_quadrada_de_x)
Traceback (most recent call last):
  File "<pyshell#66>", line 1, in <module>
    math.ceil(raiz_quadrada_de_x)
NameError: name 'math' is not defined
from math import ceil
ceil(raiz_quadrada_de_x)
23
from math import sqrt
sqrt(x)
22.627416997969522
i
Traceback (most recent call last):
  File "<pyshell#71>", line 1, in <module>
    i
NameError: name 'i' is not defined. Did you mean: 'id'?
i = 0
i
0
>>> while (i < len(a)):
...     print(a[i])
...     i = i + 1
... 
...     
Traceback (most recent call last):
  File "<pyshell#77>", line 1, in <module>
    while (i < len(a)):
NameError: name 'a' is not defined
>>> a = 1
>>> a [512, 122, 130]
Traceback (most recent call last):
  File "<pyshell#79>", line 1, in <module>
    a [512, 122, 130]
TypeError: 'int' object is not subscriptable
>>> a = [512, 232, 100]
>>> while (i < len(a)):
...     print(a[i])
...     i = i + 1
... 
512
232
100
>>> for (i in a):
...     
SyntaxError: incomplete input
>>> for (i in range (a)):
...     
SyntaxError: incomplete input
>>> print (a)
[512, 232, 100]
>>> print(a[i] for i in range(4))
<generator object <genexpr> at 0x0000016C7043F2A0>
>>> for i in a:
...     print(i)
... 
...     
512
232
100
