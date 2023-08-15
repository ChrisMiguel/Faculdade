import javax.swing.JOptionPane

fun main (){
    val nome = JOptionPane.showInputDialog("Qual seu nome?")
    val bairro = JOptionPane.showInputDialog("Bairro onde você mora:")

exibirmensagem("Você se chama ${nome} e mora no bairro ${bairro}")
}

fun exibirmensagem(frase: String){
        JOptionPane.showMessageDialog(null, frase)
    }
