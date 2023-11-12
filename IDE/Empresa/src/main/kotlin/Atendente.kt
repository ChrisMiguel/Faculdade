class Atendente : Funcionario() {
    var setor:String = ""

//    fun exibirDados():String{
//        return """
//            Nome: $nome
//            Setor: $setor
//            Salário: $salario
//        """.trimIndent()
//    }
     override fun getDetalheDescricao():String {
    return """
Setor $setor"""
}
}