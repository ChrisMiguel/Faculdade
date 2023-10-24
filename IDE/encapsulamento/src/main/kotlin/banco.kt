class banco(var nome: String,private var saldo: Double) {
    private var sobrenome: String = ""
        get() = field.uppercase()

    fun depositar(valor: Double): Double {
        if (valor > 0.0) {
            saldo += valor
        }
        return saldo
    }
        fun retirar(valor: Double): Double {
            if(valor <= this.saldo){
            saldo -= valor
            }
            return saldo
        }

        fun getSaldo(): Double {
            return saldo
        }
}