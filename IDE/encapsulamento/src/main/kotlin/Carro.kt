class Carro(val modelo: String, private var ligado: Boolean, private var velocidade: Double) {
    fun ligar() {
        ligado = true
    }

    fun desligar() {
        if (velocidade == 0.0) {
            ligado = false
        }
    }

    fun freiar(): Double {
        if (ligado) {
            velocidade -= 3.0
            if (velocidade < 3.0) {
                velocidade = 0.0
                return velocidade
            }
            return velocidade
        } else {
            return velocidade
        }
    }
    fun acelerar(): Double {
        return if (ligado) {
            if (velocidade == 0.0) {
                velocidade = 10.00
                velocidade
            } else {
                velocidade += velocidade * 0.25
                if (velocidade >= 180.00) {
                    velocidade = 180.00
                }
                velocidade
            }
        } else {
            velocidade
        }
    }


    fun getVelocidade(): Double{
        return velocidade
    }
}