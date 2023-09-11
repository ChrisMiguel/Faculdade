import javax.swing.JOptionPane
//d)
fun main() {
    val Cofrinho1 = Cofrinho()
    val contador: Int = 0
    val cofre1 = mutableListOf<Cofrinho>()
    val cofre2 = mutableListOf<Cofrinho>()
    val cofre3 = mutableListOf<Cofrinho>()

//e)
    for (contador in 0..3) {
        val frases =
            JOptionPane.showInputDialog("Qual seu objetivo?")
        JOptionPane.showInputDialog("Qual o valor da meta?")
        cofre1.add(Cofrinho())
        cofre2.add(Cofrinho())
        cofre3.add(Cofrinho())
    }

    //f)
    for (contador in 0..5) {
        //f.1)
        val frases2 =
            JOptionPane.showInputDialog("Em qual cofre quer mexer?\r\n1,2 ou 3?\r\nNenhum deles para encerrar o app").toString()

        cofre1.add(Cofrinho())
        cofre2.add(Cofrinho())
        cofre3.add(Cofrinho())

        if (frases2 == "") {
            for(contador in 0..1) {
                JOptionPane.showMessageDialog(null, Cofrinho1.descrever(cofre1))
                JOptionPane.showMessageDialog(null, Cofrinho1.descrever(cofre2))
                JOptionPane.showMessageDialog(null, Cofrinho1.descrever(cofre3))
            }

        }
        //f.2)
        val dinheiroDep = JOptionPane.showInputDialog("Informe quanto vai depositar do cofre $frases2 ")

        Cofrinho1.depositos
        Cofrinho1.depositar(0.0)

        //f.3)
        val dinheiroRet = JOptionPane.showInputDialog("Informe quanto vai retirar do cofre $frases2 ")

        Cofrinho1.retirar(0.0)

    }
    Cofrinho1.descrever(cofre3)
   //g)
    for(contador in 0..1) {
        JOptionPane.showMessageDialog(null, "${Cofrinho1.descrever(cofre3)}")
        JOptionPane.showMessageDialog(null, "${Cofrinho1.descrever(cofre3)}")
        JOptionPane.showMessageDialog(null, "${Cofrinho1.descrever(cofre3)}")
    }
    }