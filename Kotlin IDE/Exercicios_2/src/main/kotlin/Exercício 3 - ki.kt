import javax.swing.JOptionPane

fun main() {
    val ki = JOptionPane.showInputDialog("Qual o KI (força) do seu sayajin?").toInt()

    exibirmensagem( "SSJ: base ${ki * 50}\n SSJ2: base ${ki * 100}\n SSJ3: base ${ki * 200}\n !God: base ${ki * 500}")
}