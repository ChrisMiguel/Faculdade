import java.text.DecimalFormat
import javax.swing.JOptionPane

class Empregado1 {
    var nome: String = ""
    var cargo: String = "Estágiário"
    var salario: Double = 700.00
    var opcao: Int = 0
    var escolha: Int = 0
    var resposta: String = ""
    var decimal = DecimalFormat("0.00")
    fun reajustarSalario() {
        salario = salario * 1.1
    }

    fun aumentarCargo() {
        when (cargo) {
            "Estagiário" -> {
                cargo = "Analista Junior"
                salario = salario * 1.20

            }
            "Analista Junior" -> {
                cargo = "Analista Pleno"
                salario = salario * 1.30

            }
            "Analista Pleno" -> {
                cargo = "Analista Senior"
                salario = salario * 1.40
            }
            "Analista Senior" -> {
                cargo = "Tech Lead"
                salario = salario * 1.50

            }
        }
    }

    fun tirarFerias():Double {
        return salario * 2
    }

    fun opcao():String{
        when (escolha) {
            1 -> {
                aumentarCargo()
                JOptionPane.showMessageDialog(null, "Parabéns, você subiu de cargo e agora o seu salário é R$ ${decimal.format(salario)}")
            }
            2 -> {
                reajustarSalario()
                JOptionPane.showMessageDialog(
                    null,
                    "Parabéns, você recebeu um aumento e agora o seu salário é R$${decimal.format(salario)}"
                )
            }
            3 -> {
                tirarFerias()
                JOptionPane.showMessageDialog(null, "Você tirou férias e tem direito a R$${decimal.format(salario)} de salário mais 13º!")
            }
            4 -> {
                JOptionPane.showMessageDialog(null, "Você saiu!")

            }

        }
        return ""

    }
}




