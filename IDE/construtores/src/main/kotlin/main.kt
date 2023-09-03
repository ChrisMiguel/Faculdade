fun main(){
//    Aqui criamos um estudante usando seu construtor//
    val estudante1 = Estudantes("Christian", 8.9, 80.0)
    println("E1: Nome: ${estudante1.nome}, Nota: ${estudante1.media}, Frequência: ${estudante1.frequencia} ")

    estudante1.nome = "Christian Miguel"
}