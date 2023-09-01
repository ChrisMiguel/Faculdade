import javax.swing.JOptionPane

fun main(){
    val Empregado = Empregado1()
    Empregado.nome = "empregado1"
    Empregado.nome = JOptionPane.showInputDialog("Digite seu nome:")
    Empregado.cargo = JOptionPane.showInputDialog("Qual seu cargo:")
    Empregado.salario = JOptionPane.showInputDialog("Insira seu salário:").toDouble()

    JOptionPane.showMessageDialog(null, "Seu nome: ${Empregado.nome} \r\nSeu cargo: ${Empregado.cargo} \r\nSeu salário: ${Empregado.salario}")

//    for(contador){
//        Empregado.opcao()
//        Empregado.opcao = JOptionPane.showInputDialog(" " +
//            "\r\n 1 - Promover \r\n 2 - Dar aumento \r\n 3 - Viagem para long beach (praia grande)" +
//            "\r\n 4 - Sair \r\n Escolha um número de 1 a 4:").toInt()
//    }

while (Empregado.escolha != 4){
    Empregado.opcao()
     Empregado.escolha = JOptionPane.showInputDialog(" " +
          "\r\n 1 - Promover \r\n 2 - Dar aumento \r\n 3 - Viagem para long beach (praia grande)" +
           "\r\n 4 - Sair \r\n Escolha um número de 1 a 4:").toInt()
//    JOptionPane.showMessageDialog(null, Empregado.opcao())
   }
}
