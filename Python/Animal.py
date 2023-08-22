class Animal:
    def __init__(self,nome,tipo,som):
        self.nome = nome
        self.tipo = tipo
        self.som = som

    def setNome(self,nome):
        self.nome = nome
        
    def setTipo(self,tipo):
        self.tipo = tipo
    
    def setSom(self,som):
        self.som = som

    def getNome(self):
        return self.tipo
    
    def getTipo(self):
        return self.tipo
    
    def getSom(self):
        return self.som
    
    def fazerSom(self):
        print(f"{self.som} faz o som {self.som}")
    
    
    def alimentar():
        pass
    
    def dormir():
        pass

    def mostrarInfo(self):
        print(f'Nome: {self.nome}')
        print(f'tipo: {self.tipo}')
        print(f'Som: {self.som}') 

def main():

    animal1 = Animal("caio","cao","latir")
    animal2 = Animal("raul","gato","miar")
    animal3 = Animal("rodrigo","boi","mugido")


    animal1.mostrarInfo()
    animal2.mostrarInfo()
    animal3.mostrarInfo()
    print("**********")
    animal1.setSom("miar")
    animal2.getTipo()
    animal3.fazerSom()
    print("**********")



