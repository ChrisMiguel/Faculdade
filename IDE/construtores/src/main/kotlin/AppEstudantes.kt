import javax.swing.JOptionPane

fun main(){
//Aqui criamos um estudante usando seu construtor//
    val estudante1 = Estudantes("Christian", 8.9, 80.0)
    println("E1: Nome: ${estudante1.nome}, Nota: ${estudante1.media}, Frequência: ${estudante1.frequencia} ")

    estudante1.nome = "Christian Miguel"
    println("E1: Nome: ${estudante1.nome}, Nota: ${estudante1.media}, Frequência: ${estudante1.frequencia} ")

//estudante.nome = "Zé Ruela" não funciona//
    //O nome não pode ser reatribuido porque o construtor é uma val//
//Criando uma lista que só aceita estudantes//
//    val estudantes = mutableListOf<Estudantes>()
//
//    for (contador in 0..4){
//        val nome =
//            JOptionPane.showInputDialog("Digite o nome do novo aluno:")
//        val media =
//            JOptionPane.showInputDialog("Digite a média do novo aluno:").toDouble()
//        val frequencia =
//            JOptionPane.showInputDialog("Digite a frequencia do aluno:").toDouble()
//        val NovoEstudante = Estudantes(
//            nome,
//            media,
//            frequencia,
//            )
//        estudantes.add(NovoEstudante)


//percorrendo a lista de estudantes
//    estudante1.forEach{
//        val resultado = if(it.aprovou())"Passou!" else "Não passou!"
//        JOptionPane.showMessageDialog(null, "${it.nome} - Resultado: ${resultado}")
//    }

//val alunoNovo
}
