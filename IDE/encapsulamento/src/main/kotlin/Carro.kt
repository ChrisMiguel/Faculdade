class Carro {

    var modelo: String = ""
    var ligando: Boolean = false
    var velocidade: Double = 0.0

    fun ligar(boolean: Boolean) {
        ligando == true
    }

    fun desligar(boolean: Boolean) {
        if (velocidade == 0.0) {
            ligando == false
        }
        fun acelerar(double: Double) {
            val aumento = velocidade * 25 / 100
            if(velocidade == 0.0){
            velocidade == 10.0
            }
            velocidade += aumento
            if (velocidade > 180.00) {
                ligando == false
            }
        }

        fun freiar(double: Double){
            velocidade -= 3.0
            if(velocidade < 0.0){
                velocidade == 0.0
            }
        }
    }
fun getVelocidade(): Double {
    return velocidade
}
}