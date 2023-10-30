open class Cachorro {
    var nome: String = ""
    var peso: Double = 0.0
    val idade: Int = 0

    open fun comer(comida:String, quantidadeGramas:Double):String{
        val quantidadeCerta = quantidadeGramas * 100
        peso += quantidadeCerta
        return "Cahorro comendo $comida"
    }

    open fun correAoVerMoto():Boolean{
        return false
    }

    open fun getPrecoMedio():Double{
        return 100.0
    }

    fun getDescricao():String{
        return "O cachorro $nome tem $idade anos e pesa $peso"
    }
}