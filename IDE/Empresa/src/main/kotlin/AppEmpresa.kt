import javax.swing.JOptionPane
import javax.swing.JOptionPane.showInputDialog
import javax.swing.JOptionPane.showMessageDialog

fun main() {

    val gerente = Gerente()
    val atendente = Atendente()




    while (true) {
    val cargo: Int = showInputDialog(
"""
Qual sua profissão?
1 - Gerente
2 - Atendente
3 - Sair
"""
    ).toInt()
        if (cargo == 1) {
            gerente.nome =
                showInputDialog("Digite seu nome:")

            gerente.idade =
                showInputDialog("Digite sua idade:").toInt()

            gerente.salario =
                showInputDialog("Digite seu salário:").toDouble()
            return showMessageDialog(null, gerente.exibirDados())
        }
        else if (cargo == 2) {
            atendente.nome =
                showInputDialog("Digite seu nome:")

            atendente.idade =
                showInputDialog("Digite sua idade:").toInt()

            atendente.salario =
                showInputDialog("Digite seu salário:").toDouble()
            return showMessageDialog(null, atendente.exibirDados())
        }
        else {
            gerente.exibirDados()
            atendente.exibirDados()
            return
        }
    }
}