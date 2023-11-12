import javax.swing.JOptionPane

fun main() {
    val dog1 = Cachorro()
    val dog2 = CachorroRaca()
    val dog3 = CachorroViraLata()

    val cachorros = listOf(dog1, dog2, dog3)

    cachorros.forEachIndexed { contador, cachorro ->
        val ordem = contador + 1
        cachorro.nome = JOptionPane.showInputDialog("Qual o nome do ${ordem}º cachorro?")
        cachorro.peso = JOptionPane.showInputDialog("Qual o peso do ${ordem}º cachorro?").toDouble()
        cachorro.idade = JOptionPane.showInputDialog("Qual a idade do ${ordem}º cachorro?").toInt()
    }

    cachorros.forEach { cachorro ->
        JOptionPane.showMessageDialog(null, cachorro.getDescricao())
        JOptionPane.showMessageDialog(null, cachorro.getAcaoQuandoVeMoto())
    }

    cachorros[0].comer("Ração comum", 200.0)
    cachorros[1].comer("Ração Premium", 300.0)
    cachorros[2].comer("Resto do almoço", 100.0)

    cachorros.forEach { cachorro ->
        JOptionPane.showMessageDialog(null, cachorro.getDescricao())
    }

    }