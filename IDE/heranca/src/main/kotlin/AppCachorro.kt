import javax.swing.JOptionPane
import javax.swing.JOptionPane.showInputDialog
import javax.swing.JOptionPane.showMessageDialog

fun main(){
    val dog1 = Cachorro()
    val dog2 = CachorroRaca()
    val dog3 = CachorroViraLata()

 val Cachorros = listOf(dog1, dog2, dog3)

Cachorros.forEachIndexed { contador, cachorro ->
    val ordem = contador + 1
    cachorro.nome = showInputDialog("Nome do cachorro ${ordem}:")
    cachorro.peso = showInputDialog("Peso do cachorro ${ordem}:").toDouble()
    cachorro.idade = showInputDialog("Idade do cachorro ${ordem}:").toInt()
}
Cachorros.forEach {cachorro ->
    showMessageDialog(null, cachorro.getDescricao())
    showMessageDialog(null, cachorro.correAoVerMoto())

}
    Cachorros[0].comer("Ração comum", 200.0)
    Cachorros[1].comer("Ração Premium", 300.0)
    Cachorros[2].comer("Resto do almoço", 100.0)

    Cachorros.forEach { cachorro ->
        showMessageDialog(null, cachorro.getDescricao())
    }
}
