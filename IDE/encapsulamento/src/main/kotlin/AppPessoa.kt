fun main(){
    val pessoa1 = Pessoa("Chris", 19)

    pessoa1.nome = "Chris"
    println("Seu nome é ${pessoa1.nome} e você tem ${pessoa1.getIdade()}")

    pessoa1.fazerAniversario()

    println("Seu nome é ${pessoa1.nome} e você tem ${pessoa1.getIdade()}")

}