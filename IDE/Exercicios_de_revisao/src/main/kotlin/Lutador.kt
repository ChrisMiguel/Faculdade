class Lutador (
    var nome:String = "",
    var forcaAtaque:Double = 0.0,
    var forcaDefesa:Double = 0.0,
    var vidaAtual:Double = 100.0

) {
    var golpesSofridos = mutableListOf<Int>()

    fun concentrar(): Double {
        val vidaMelhor: Double = vidaAtual * 1.05
        return vidaMelhor

    }

    fun treinarLeve(semanas: Int) {
        forcaAtaque++
    }

    fun treinarForte(semanas: Int) {
        forcaAtaque + 3
    }

    fun apanhar(quemBate: Lutador) {
        if (quemBate.forcaAtaque > forcaDefesa) {
            vidaAtual -= quemBate.forcaAtaque - forcaDefesa
        }
        if (vidaAtual < 0.0) {
            vidaAtual = 0.0
        }
        golpesSofridos.add(quemBate.forcaAtaque.toInt())
    }

    fun descrever(): String {
        return "O Lutador $nome tem $vidaAtual e já recebeu ${golpesSofridos.size} golpes"
    }
}
