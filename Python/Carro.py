class carro:
        def __init__(self,marca,modelo,ano,ligado):
                self.marca = marca
                self.modelo = modelo
                self.ano = ano
                self.ligado = False
        
        def ligar(self):
                self.ligado = True
                print(f'Carro ligado!!!')
       
        
        def desligar(self):
            self.ligado = False
            print(f'Carro desligado!!!')

        
        def mostrarInfo(self):
            print(f'marca: {self.marca}')
            print(f'modelo: {self.modelo}')
            print(f'ano: {self.ano}')
        
    
    
    
def main():
    carro1= carro('ford','fiesta','2020',False)
    carro1.mostrarInfo()
    print('**********')

    
    carro1.ligar()
    carro1.mostrarInfo()
    print('*********')
    carro1.desligar()

    
    carro1.mostrarInfo()
if __name__=="__main__":
        main()


