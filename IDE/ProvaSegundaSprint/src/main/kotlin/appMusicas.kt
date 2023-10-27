import java.time.LocalDate
import java.time.format.DateTimeFormatter
import javax.swing.JOptionPane

fun main(){
    val repositorio = Repositorio()
    repositorio.criar()
    repositorio.criarTabela()

    while(true){
        val escolha = JOptionPane.showInputDialog("""
            1 - Adicionar nova música
            2 - Buscar por id
            3 - Excluir música por id
            4 - Sair)
        JOptionPane.showInputDialog()
    """
        ).toInt()
        when(escolha){
            1 -> {
                val musica = Musica()
                musica.titulo = JOptionPane.showInputDialog("Digite o titulo da música")
                musica.artista = JOptionPane.showInputDialog("Digite o artista da música")
                musica.dataCriacao = LocalDate.now()
                repositorio.inserir()

            }
            2 -> {
                val idDigitado = JOptionPane.showInputDialog("Digite um id da música").toInt()
                val existePorId = repositorio.existePorId(idDigitado)

                if(existePorId){
                    val musicaEncontrada = repositorio.buscaPorId(idDigitado)
                    JOptionPane.showMessageDialog(null, """
                        Musica com o id: ${musicaEncontrada.id})
                        Título: ${musicaEncontrada.titulo}
                        Artista: ${musicaEncontrada.artista}
                        Data Criação: ${musicaEncontrada.dataCriacao.format(DateTimeFormatter.offPattern)})
                        """.trimIndent())
                }
                3 -> {
                    val idDigitado = JOptionPane.showInputDialog("Digite um id da música").toInt()
                    val existePorId = repositorio.existePorId(idDigitado)
                if (existePorId){
                    val musicaEncontrada = repositorio.deletarPorId(idDigitado)
                    JOptionPane.showMessageDialog(null, "Deletado com sucesso")
                }else{
                    JOptionPane.showMessageDialog(null, "Música não encontrada")
                }
                }
            }
            else -> {
                break
            }
        }
    }
}