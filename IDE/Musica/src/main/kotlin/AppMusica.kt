import java.time.LocalDate
import java.util.Date
import javax.swing.JOptionPane

fun main(){
//    ConexaoBd.Tabela()
    val repositorio1 = Repositorio()
    repositorio1.iniciar()
    while(true){
        val escolha =
            JOptionPane.showInputDialog("1 - Adicionar nova música\n" +
                    "2 - Buscar por id\n" +
                    "3 - Excluir música por id\n" +
                    "4 - Sair").toInt()
    if(escolha == 1){
        val novaMusica = Musica()
      val musica1 =
          JOptionPane.showInputDialog("Digite o titulo da música:")
      val artista1=
          JOptionPane.showInputDialog("Digite o artista da música:")
        val newData = "2023-10-18"
        val dataNova = LocalDate.parse(newData)
        JOptionPane.showMessageDialog(null, dataNova)
        repositorio1.cadastrar(novaMusica)

    }
    if(escolha == 2){
        JOptionPane.showMessageDialog(null, "Música com o id: ${0}\n" +
                "Título: ${0}\n" +
                "Artista: ${0}\n" +
                "Data da criação: ${0}")
    }
    if(escolha == 3){
var ultimo = Repositorio.getUltimoCodigo()
        var codigo = JOptionPane.showInputDialog("Qual música você quer excluir? Digite de 1 a $ultimo").toInt()
        JOptionPane.showMessageDialog(null, "Você excluiu a música com id $codigo")
    }
if(escolha == 4) {
    break
}
    }
}
