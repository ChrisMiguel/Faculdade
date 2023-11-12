open class Funcionario {
    var nome: String = ""
    var idade: Int = 0
    var salario: Double = 0.0

    fun exibirDados():String{
    return """
    Nome: $nome
    Departamento: TI
    Salario: $salario
    """.trimIndent()
}
open fun getDetalheDescricao():String{
return ""
}

}