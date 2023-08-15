import javax.swing.JOptionPane
fun main(){
var i = 0
    while(i < 7){
        Message("Eu S2 mamão")
        i++
    }
}fun Message(frase : String){
        JOptionPane.showMessageDialog(null, frase)

}
//fun repetircomFor(){
//    for(i in 1..7){
//        Message("Eu S2 mamão")
//    }
//}