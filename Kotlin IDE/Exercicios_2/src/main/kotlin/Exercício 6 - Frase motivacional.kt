import javax.swing.JOptionPane

fun main() {
    val fraseMotivacional = JOptionPane.showInputDialog("Coloque uma frase positiva")
    val qtdRepeticoes = JOptionPane.showInputDialog("Coloque a quantidade de vezes para ela se repetir").toInt()

    var i = 0
    while(i < qtdRepeticoes){
    exibirFrase(fraseMotivacional)
        i++
    }

}
fun exibirFrase(fraseMotivacional: String){
    JOptionPane.showMessageDialog(null, "${fraseMotivacional}")
}