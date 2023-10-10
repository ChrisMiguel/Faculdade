import javax.swing.JOptionPane

fun main(){
    val addLivro =
        JOptionPane.showInputDialog("1 - Adicionar livro\r\n2 - Buscar por id").toInt()

    if(addLivro == 1){
        val novoNome =
            JOptionPane.showInputDialog("Digite o nome do livro:").toString()
        val novoAutor =
            JOptionPane.showInputDialog("Digite o autor do livro:").toString()
    }
}