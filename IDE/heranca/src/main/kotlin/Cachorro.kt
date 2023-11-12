open class Cachorro {
    var nome: String = ""
    var peso: Double = 0.0
    var idade: Int = 0

    fun comer(comida:String, quantidadeGramas:Double):String{
        peso += (quantidadeGramas/1000) * Digestao()
        return "Cahorro comendo $comida"
    }

    open fun correAoVerMoto():Boolean{
        return false
    }

    open fun getPrecoMedio():Double{
        return 100.0
    }

    open fun getDescricao():String{
        return "O cachorro $nome tem $idade anos e pesa ${peso}kg"
    }

    open fun Digestao(): Double {
        return 1.0
    }
}