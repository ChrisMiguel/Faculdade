import java.util.concurrent.atomic.AtomicLongFieldUpdater
import java.util.function.DoubleToLongFunction
import javax.swing.JOptionPane

fun main(){
var altura = JOptionPane.showInputDialog("Informe sua altura em metros").toDouble()
var peso = JOptionPane.showInputDialog("Informe seu peso em KG").toInt()

    //exibirmensagem("Seu IMC é de: ${descobrirImc(peso, altura)}")
    exibirmensagem("Seu IMC é ${"%.2f".format(descobrirImc(peso,altura))}")
}

fun exibirmensagem(frase : String){
    JOptionPane.showMessageDialog(null, frase)

}
fun descobrirImc(peso: Int, altura: Double) : Double{
    return peso / Math.pow(altura,2.0)
}