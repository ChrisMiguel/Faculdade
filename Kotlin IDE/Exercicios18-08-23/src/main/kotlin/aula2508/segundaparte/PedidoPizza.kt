package aula2508.segundaparte

class PedidoPizza {
    var sabor: String = ""
    var preco: Double = 0.0
    var qtdAmigo: Int = 0

    fun descrever(): String {
        return "Pedido de pizza de X, que custa R$"
    }

    fun validarCupom(){
        println("cupom")

    }

}