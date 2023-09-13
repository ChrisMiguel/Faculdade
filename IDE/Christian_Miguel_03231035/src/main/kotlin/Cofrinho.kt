//a)
class Cofrinho(
  //b)
    var objetivo:String = "",
    var saldo:Double = 0.0,
    var meta:Double = 0.0,
    var depositos: Int = 0
    ) {

    //c.1)
    fun depositar(valorDeposito:Double){
        if(valorDeposito > 0){
            saldo -= valorDeposito
        }
    }
    //c.2)
fun retirar(valorRetirada:Double){
    if(valorRetirada > 0){
        saldo -= valorRetirada
    }
}
    //c.3)
fun porcentagemAteMeta():Double{
    return saldo/(meta * 100)
}
    //c.4)
fun descrever(cofre3:MutableList<Cofrinho>): String {
    return if (meta > saldo) {
        return "O cofrinho de objetivo $objetivo está com R$$saldo de saldo, estando a ${porcentagemAteMeta()} da meta de R$$meta"
    } else {
        "O cofrinho de objetivo $objetivo está com R$$saldo de saldo. Já chegou na meta, estando em ${porcentagemAteMeta()} dela!"
    }
    }


    }

