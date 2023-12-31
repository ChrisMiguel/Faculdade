open class Cachorro {
    lateinit var nome:String
    var peso:Double = 0.0
    var idade:Int = 0

    fun comer(comida:String, quantidadeGramas: Double): String {
        peso += (quantidadeGramas/1000) * getFatorDigestao()
        return "Cachorro comendo $comida"
    }

    open fun getFatorDigestao(): Double {
        return 1.0
    }

    open fun correAoVerMoto(): Boolean {
        return false
    }

    open fun getPrecoMedio(): Double {
        return 100.0
    }

    fun getDescricao(): String {
        return "O cachorro $nome tem $idade anos e pesa ${peso}kg"
    }

    fun getAcaoQuandoVeMoto(): String {
        val acao = if (correAoVerMoto()) "corre" else "não corre"
        return "O cachorro $nome $acao atrás de uma moto quando a vê"
    }
}