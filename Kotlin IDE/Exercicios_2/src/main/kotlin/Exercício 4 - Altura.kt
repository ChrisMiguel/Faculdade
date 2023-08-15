import javax.swing.JOptionPane

fun main() {
    val alt = JOptionPane.showInputDialog("Qual a sua altura?").toDouble()
basquete(alt)
}

fun basquete(alt: Double){
    return if(alt >= 1.8){
        exibirmensagem("Você pode jogar basquete!")
    }
    else{
        exibirmensagem("Você não pode jogar basquete!")
    }
}