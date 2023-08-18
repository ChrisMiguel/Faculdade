import javax.swing.JOptionPane

fun main(){
    val uber = JOptionPane.showInputDialog("Qual o valor por km no uber?").toDouble()
    val km = JOptionPane.showInputDialog("Quantos KM's a próxima corrida?").toDouble()
    val chamadas = JOptionPane.showInputDialog("Qual volume de solicitações").toInt()

if(chamadas >= 0 && chamadas <= 2 ){
    println("O valor vai ficar ${somarValores(uber, km)}")
}else if(chamadas >= 3 && chamadas <= 7){
    println("O valor vai ficar ${somarValores(uber, km) * 1.3}")
}else if (chamadas >= 8 && chamadas <= 10){
    println("O valor vai ficar ${somarValores(uber, km) * 1.8}")
}
}

fun somarValores(uber: Double, km: Double): Double{
    return uber * km
}
