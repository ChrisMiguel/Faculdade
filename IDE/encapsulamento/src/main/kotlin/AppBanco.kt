fun main(){
    val banco = banco("Chris", 1000000.00)
    banco.depositar(2.0)
    println("Saldo: ${banco.getSaldo()}")
    println("Retirando 100 mil")
    val saldoAposRetirada = banco.retirar(1333.00)
    println("Saldo: ${"%2f".format(saldoAposRetirada)}")
}