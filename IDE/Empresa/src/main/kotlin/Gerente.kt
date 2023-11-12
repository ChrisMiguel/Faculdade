class Gerente : Funcionario(){
    var departamento: String = ""

//    fun exibirDados():String{
//        return """
//            Nome: $nome
//            Departamento: $departamento
//            Salário: $salario
//            """.trimIndent()
//    }
override fun getDetalheDescricao():String {
return """
Departamento: $departamento
""".trimIndent()
}


}