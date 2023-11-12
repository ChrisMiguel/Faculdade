import javax.swing.JOptionPane
import javax.swing.JOptionPane.showMessageDialog

fun main(){
val autor = Autor()
    val livro = Livro()

    showMessageDialog(null,"""
        Título do livro: ${livro.nome} 
        Ano: ${livro.AnoPublicacao}
         Nome do autor: ${livro.autor}""".trimIndent())
}