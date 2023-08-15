import java.util.*
import javax.swing.JOptionPane

fun main() {
// Como captar inputs do usuário da forma "roots"
//    val sn = Scanner(System.`in`)
//    println("Digite seu nome:")
//    val texto = sn.next()
//
//    println("\nO seu nome é $texto")
    val nomeUsuario =
        JOptionPane.showInputDialog("Digite seu nome!")

//    println("Seu nome é: $nomeUsuario")

JOptionPane.showMessageDialog(null, "O seu nome é $nomeUsuario")
}