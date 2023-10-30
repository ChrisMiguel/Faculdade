open class Carro {
    lateinit var fabricante: String
    lateinit var modelo: String
    private var ligado: Boolean = false
    protected var velocidade: Double = 0.0
    //protected permite que sub classes tenham acesso

    fun ligar(){
        ligado = true
    }

    fun desligar(){
        ligado = false
        velocidade = 0.0
    }

    fun getDescricao():String {
        return """
           Fabricante: $fabricante.Modelo: $modelo
            Está ligado? ${if (ligado) "Sim" else "Não"}
            Velocidade atual:  $velocidade km/h
            """.trimIndent()
    }

    open fun getReacaoPessoas():String {
        return "Olha só, um carro $fabricante $modelo"
    }
open fun getVelocidadeAceleracao():Double{
    return 7.5;
}

    open fun getVelocidadeFreada():Double{
        return 10.0
    }
    open fun getVelocidadeMax():Double{
        return 140.0
    }
    fun acelerar(){
        if(!ligado){
            return //isso MATA , ou seja, interompe o método
        }
        velocidade += getVelocidadeAceleracao()
    normalizarVelocidade()
    }

    fun frear(){
        if(!ligado){
            return
        }
        velocidade -= getVelocidadeFreada()
        normalizarVelocidade()
    }

    fun normalizarVelocidade(){
        if(velocidade < 0.0){
            velocidade = 0.0
        }
        if(velocidade > getVelocidadeMax()){// vec máx é 140km/h
            velocidade = getVelocidadeMax()
        }
    }
}