class CarroPobre:Carro() {
    override fun getReacaoPessoas(): String {
        return "Nossa, esse $fabricante $modelo é mó paia!"
    }
    override fun getVelocidadeAceleracao(): Double {
        return 2.3
    }

    override fun getVelocidadeFreada(): Double {
        return 7.5
    }
    override fun getVelocidadeMax():Double {
        return 105.0
    }
}