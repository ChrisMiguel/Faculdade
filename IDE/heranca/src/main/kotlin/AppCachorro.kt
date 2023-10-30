import javax.swing.JOptionPane

fun main(){
    val cachorro1 = Cachorro()
    cachorro1.nome = JOptionPane.showInputDialog("Nome do cachorro")
    cachorro1.peso = JOptionPane.showInputDialog("Peso do cachorro").toDouble()
    cachorro1.idade = JOptionPane.showInputDialog("Nome do cachorro").toInt()
}