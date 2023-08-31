class Carro2 {

    var modelo: String = ""
    var potencia: Double = 0.0
    var km: Int = 0
    var marcha: Int = 0
    var ligado: Boolean = false

    fun usarCarro() {
        if (modelo.isNotBlank()) {
            println("O carro $modelo está $ligado na $marcha* marcha a $km km")
        } else {
            println("O carro não existe")
        }

    }

    fun ligar() {
        ligado = true
    }
    fun desligar(){
        ligado = false
    }
    fun reduzirMarcha() {
        marcha - 1
        if (marcha <= 0) {
            marcha = 0
        } else {
            marcha - 1
        }
    }

        fun aumentarMarcha() {
            marcha + 1
            if (marcha >= 7) {
                marcha = 6
            } else {
                marcha + 1
            }
        }

            fun fazerViagem(){
                if (ligado == true) {
                    when (marcha) {
                        in 1..2 -> km += 10
                        in 3..5 -> km+= 20
                        6 -> km += 30
                    }

                }

    }
}