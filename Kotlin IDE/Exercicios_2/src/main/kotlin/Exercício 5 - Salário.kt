import javax.swing.JOptionPane

fun main() {
    val salario = JOptionPane.showInputDialog("Qual seu salário?").toDouble()



if(salario < 0){
    exibirmensagem("Salário inválido")
}

  when(salario){
      in 0.0..1000.0 -> exibirmensagem("Classe C")
        in 1000.01..2000.0 -> exibirmensagem("Classe B")
        in 2000.01..5000.0 -> exibirmensagem("Classe A")
        else -> exibirmensagem("Classe AA")
    }
}
