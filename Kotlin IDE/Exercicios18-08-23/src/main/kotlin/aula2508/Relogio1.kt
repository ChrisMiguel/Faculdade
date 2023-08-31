package aula2508

class Relogio1 {

    var modelo: String = ""
    var preco: Int = 0
    var horas: Int = 0
    var minutos: Int = 0
    var segundos: Int = 0

    class Relogio2 {
        var modelo: String = ""
        var preco: Int = 0
        var horas: Int = 0
        var minutos: Int = 0
        var segundos: Int = 0
    }

    fun zerar() {
        horas = 0;
        minutos = 0;
        segundos = 0;
    }

    fun validar():String {
        var ValoresValidos = true
        if (minutos < 0 || minutos > 59) {
            minutos = 0
            ValoresValidos = false
        }
        if (segundos < 0 || segundos > 59) {
            segundos = 0
            ValoresValidos = false

        }
         if (horas < 0 || horas > 23) {
            horas = 0
            ValoresValidos = false
        }
        if(ValoresValidos == false){
            return "Valores inválidos identificados. Ajustando!"
        }

        return "Todos os valores estavam corretos!"
        }



fun verHora():String{
    validar()
 return "${horas.toString().padStart(2, '0')}:${minutos.toString().padStart(2, '0')}:${segundos.toString().padStart(2, '0')}"
}
}