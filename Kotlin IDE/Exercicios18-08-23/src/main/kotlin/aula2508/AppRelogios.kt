package aula2508

import javax.swing.JOptionPane

fun main(){
    val relogio = Relogio1()
    relogio.modelo = "ChrisStyle"
    relogio.preco = 1000
    relogio.horas = 10
    relogio.minutos = 20
    relogio.segundos = 30

    JOptionPane.showMessageDialog(null, "${relogio.verHora()}")
    JOptionPane.showMessageDialog(null, "${relogio.validar()}")


    JOptionPane.showMessageDialog(null, "A hora do relógio ${relogio.verHora()}")

    val relogio2 = Relogio1()

    JOptionPane.showInputDialog(null, "Qual o modelo do relógio? ${relogio2.modelo}")
    JOptionPane.showInputDialog(null, "Qual o preço do relógio ? ${relogio2.preco}")
    JOptionPane.showInputDialog(null, "Que horas são? ${relogio2.horas}")
    JOptionPane.showInputDialog(null, "Quantos minutos são? ${relogio2.minutos}")
    JOptionPane.showInputDialog(null, "Quantos segundos são? ${relogio2.segundos}")
    JOptionPane.showMessageDialog(null, "A hora do 2° relógio: $relogio2.")

}