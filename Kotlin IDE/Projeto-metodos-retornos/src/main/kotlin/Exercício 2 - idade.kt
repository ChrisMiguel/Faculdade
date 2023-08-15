import javax.swing.JOptionPane

fun main() {
    val idade = JOptionPane.showInputDialog("Informe sua idade:").toInt()

    if (idade >= 16) {
        MostrarMensagem("Você já pode votar")
    }else {
        MostrarMensagem("Ainda não pode votar")
    }
}
fun MostrarMensagem(frase: String){
    JOptionPane.showMessageDialog(null, frase)
}
