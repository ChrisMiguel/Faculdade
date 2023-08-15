import javax.swing.JOptionPane

fun main(){
    val linha = JOptionPane.showInputDialog("Qual linha de ônibus o/a sr/a usa?")
    val tempoMaior = JOptionPane.showInputDialog("Qual o maior tempo de volta?").toInt()
    val tempoMenor = JOptionPane.showInputDialog("Qual o menor tempo de volta?").toInt()

    exibirmensagem("A linha ${linha} leva em média ${media(tempoMaior, tempoMenor)} minutos/volta")
}

fun media(tempoMaior: Int, tempoMenor: Int) : Int{
return ((tempoMenor + tempoMaior)/2)
}