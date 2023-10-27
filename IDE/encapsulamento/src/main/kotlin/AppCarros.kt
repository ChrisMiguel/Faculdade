import javax.swing.JOptionPane

fun main() {
  val carro = Carro("Uno com Escada", false, 0.0)

  carro.ligar()

  for(acelerando in 1..3){
    carro.acelerar()
  }

  for(freiando in 1..2){
    carro.freiar()
  }

  JOptionPane.showMessageDialog(null, "Você está a ${"%.2f".format(carro.getVelocidade())} Km/h, acelera mais")

  for(acelerando in 1..15){
    carro.acelerar()
  }

  JOptionPane.showMessageDialog(null, "Você está a ${"%.2f".format(carro.getVelocidade())} Km/h, diminui ai")

  while (carro.getVelocidade() > 0.0){
    carro.freiar()
  }

  carro.desligar()

  JOptionPane.showMessageDialog(null, "Esse é de firma!")
}