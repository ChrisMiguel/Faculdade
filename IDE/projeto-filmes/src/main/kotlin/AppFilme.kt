import javax.swing.JOptionPane

fun main(){
    Conexao.criarTabelas()
    val repositorio = Repositorio()
    repositorio.iniciar()

    while(true){
        val filme:Int = JOptionPane.showInputDialog("Escolha uma das alternativas abaixo:/n 1 - Adicionar Filme/n 2 - Consultar Filme/n 3 - Exluir filme/n 4 - Sair").toInt()
if(filme == 1) {
    val novoFilme = repositorio()
    novoFilme.nome = JOptionPane.showInputDialog("Qual o nome do filme?").toString()
    novoFilme.diretor = JOptionPane.showInputDialog("Qual é o diretor do filme?").toString()
    novoFilme.indicadoOscar = JOptionPane.showInputDialog("Foi indicado ao Oscar?").toBoolean()
    novoFilme.custoProducao = JOptionPane.showInputDialog("Quanto foi o custo de produção?").toDouble()

}
        if(filme == 2){
            Conexao.Filme(id)
        }
        if(filme == 3){
"?"
    }
        break
}
}