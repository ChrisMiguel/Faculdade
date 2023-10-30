/*
CarroLuxo : Carro() -> significa que...
CarroLuxo "herda" tudo que é possível herdar de Carro.

Ou seja, CarroLuxo é uma Sub Classe de Carro
Portante, Carro é Super Classe de CarroLuxo

Pode ter "herdeiros", ou seja, subclasse
 */

class CarroLuxo : Carro() {

    /*
    O que não é herdado por esta classe
    Tudo que é private (privado)
    override -> indica que este método SOBRESCREVE o comportamento
    que ele tem na Super Classe
    um método sobrescrito, a assinatura (nome, argumentos e retorno)
    devem ser IDÊNTICOS à de Super Classe

    o corpo do método pode ser totalemnte diferente
     */
    override fun getReacaoPessoas(): String {
        return "Noooooooooooooooooooooooooooooooooooooooooooooooooooossa! Que carrão!"
    }
    override fun getVelocidadeAceleracao(): Double {
        return 25.0
    }

    override fun getVelocidadeMax(): Double {
        return 310.0
    }
}