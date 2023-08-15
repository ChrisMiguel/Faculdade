import javax.swing.JOptionPane

fun main() {
    var gols = JOptionPane.showInputDialog("Quantos gols o atacante fez:").toInt()
    if (gols == 0) {
        mensagem("Sem pontaria")
    };if (gols < 3) {
        mensagem("Pontaria meia boca")
    };if (gols <= 5) {
        mensagem("Dá para o gasto")
    } else {
        mensagem("Artilheiro")
    }
}
fun mensagem(frase: String){
    JOptionPane.showMessageDialog(null, frase)
}