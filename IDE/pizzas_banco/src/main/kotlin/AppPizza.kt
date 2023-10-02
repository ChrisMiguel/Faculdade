import javax.swing.JOptionPane

fun main() {
    //criamos um objeto do tipo Conexao e invocamos
    //
    Conexao.criarTabelas()
    val repositorio = PizzaRepositorio()
    repositorio.iniciar()

    while (true) { //loop, a princípio, infinito
        val cadastrar = JOptionPane.showInputDialog(
            "Quer cadastrar uma nova pizza? S para sim ou qualquer coisa para sair"
        )
        if (cadastrar.uppercase() != "S") {
            break //sai do while
        }
        val novaPizza = Pizza()
        novaPizza.sabor = JOptionPane.showInputDialog("Qual sabor?")
        novaPizza.preco = JOptionPane.showInputDialog("Qual preço?").toDouble()
        novaPizza.quantidade = JOptionPane.showInputDialog("Qual a quantidade de pizzas?").toInt()


        repositorio.cadastrar(novaPizza)
    }
    var ultimo = repositorio.getUltimoCodigo()
    var codigo =
        JOptionPane.showInputDialog("Qual pizza você quer vender? Digite de 1 a $ultimo").toInt()

    if (codigo >= 1 && codigo <= ultimo) {
        val vendeu = repositorio.vender(codigo)
        val pizza = repositorio.recuperar(codigo)
        if (vendeu) {
            JOptionPane.showMessageDialog(
                null, "Quantidade de pizza ${pizza.sabor} atualizando para " +
                        "${pizza.quantidade}"
            )
        } else {
            JOptionPane.showMessageDialog(null, "A pizza de Y está zerada no estoque")
        }
    }

    ultimo = repositorio.getUltimoCodigo()
    codigo = JOptionPane.showInputDialog("Qual pizza você quer vender? Digite de 1 a $ultimo").toInt()
val preco2 =
        JOptionPane.showInputDialog("Qual vai ser o preço?").toDouble()
    val atualizou = repositorio.precoNovo(codigo, preco2)
    val pizzaComNovoPreco = repositorio.recuperar(codigo)
    val mensagem = if(atualizou)
        "Preco da pizza ${pizzaComNovoPreco.sabor} atualizando para R$${preco2}"
    else "Pizza não encontrada"
    JOptionPane.showMessageDialog(null, mensagem)
}


