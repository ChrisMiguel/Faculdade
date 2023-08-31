import javax.swing.JOptionPane

fun main() {
    val carro3 = Carro2()
    carro3.modelo = "Ford Mustang GT"
    carro3.potencia = 700.0
    carro3.km = 76
    carro3.marcha = 3
    carro3.ligado = true

    JOptionPane.showMessageDialog(null, "O 1* carro é um ${carro3.modelo} e está na marcha ${carro3.marcha}")

    var estado: String = ""
    if (carro3.ligado == true) {
        estado = "ligado"
    } else {
        estado = "desligado"
    }

    JOptionPane.showMessageDialog(null, "o carro está ${estado}")

    carro3.ligar()
    carro3.aumentarMarcha()
    carro3.aumentarMarcha()
    if (carro3.ligado == true) {
        estado = "ligado"
    } else {
        estado = "desligado"
    }
    JOptionPane.showMessageDialog(null, "O 1º carro é um ${carro3.modelo} e está na marcha ${carro3.marcha}")
    JOptionPane.showMessageDialog(null, "o carro está ${estado}")


    val carro2 = Carro2()
    carro2.modelo = JOptionPane.showInputDialog("qual o modelo do carro?").toString()
    carro2.marcha
    carro2.km

    val quilometragem = JOptionPane.showInputDialog("Quantos km vc quer rodar?").toInt()
    JOptionPane.showMessageDialog(null, "O seu carro é um ${carro2.modelo}, está na marcha ${carro2.marcha} e já tem ${carro2.km} de km rodados")

    carro2.ligar()
    carro2.aumentarMarcha()
    carro2.fazerViagem()

    JOptionPane.showMessageDialog(null, "O seu carro é um ${carro2.modelo}, está na marcha ${carro2.marcha} e já tem ${carro2.km} de km rodados")

    carro2.aumentarMarcha()
    carro2.aumentarMarcha()
    carro2.fazerViagem()
    carro2.fazerViagem()
    carro2.reduzirMarcha()
    carro2.fazerViagem()

    JOptionPane.showMessageDialog(null, "Você queria rodar ${quilometragem} km e rodou ${carro2.km} km")
    JOptionPane.showMessageDialog(null, "O seu carro é um ${carro2.modelo}, está na marcha ${carro2.marcha} e já tem ${carro2.km} de km rodados")
}

