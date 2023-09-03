import javax.swing.JOptionPane

fun main(){
    var lutador1 = Lutador("", 0.0, 0.0, 100.0)
    lutador1.nome = JOptionPane.showInputDialog("Vamos começar a Luta!\r\nNome do 1º lutador:")
    lutador1.forcaAtaque = JOptionPane.showInputDialog("Quanto a força de ataque do 1º lutador:").toDouble()
    lutador1.forcaDefesa = JOptionPane.showInputDialog("Quanto de defesa o 1º lutador tem:").toDouble()

    var lutador2 = Lutador("", 0.0, 0.0, 100.0)

    lutador2.nome = JOptionPane.showInputDialog("Nome do 2º lutador:")
    lutador2.forcaAtaque = JOptionPane.showInputDialog("Quanto de força o 2º lutador tem:").toDouble()
    lutador2.forcaDefesa = JOptionPane.showInputDialog("Quanto de defesa o 2º lutador tem:").toDouble()
            JOptionPane.showInputDialog(
                "Escolha uma das opções:\n\r" +
                        "1 - Lutador1 se concentra\r\n" +
                        "2 - Lutador 2 bate no Lutador 1\r\n" +
                        "NDA - Nenhum se concentra")


    for(contador in 0..2) {
        val opcao =
    JOptionPane.showInputDialog("Escolha uma das opções:\n\r" +
            "1 - Lutador1 bate no Lutador2\r\n" +
            "2 - Lutador 2 bate no Lutador 1")
            .toInt()

        when (opcao) {
            1 -> {
                lutador1.apanhar(quemBate = lutador2)
            }

            2 -> {
                lutador2.apanhar(quemBate = lutador1)
            }
        }
    }
JOptionPane.showMessageDialog(null, lutador1.descrever())
JOptionPane.showMessageDialog(null, lutador2.descrever())

}