import kotlin.math.pow

fun main() {
    println("É nois no kotlin!")
    println()
    println("É!")
    println("\nIsso\n")
    println("Vamos")
    println("Vamos ali \npor favor")
    println("\r\nVamos \r\npor favor")
var bairro = "Bela Vista"
// Variável String (texto)

var populacao = 50000
// Variável int (número inteiro)

var ligado = false
// Variável booleana (boolean)

var altura = 1.88
// Variável double (número real)


// Interpolação com aspas duplas e com ${} o sem {}
// Com $ premite apenas usar só o valor, já ${} podemos invocar funcções e executar códigos

println("No bairro ${bairro} moram ${populacao} pessoas")
println("No bairro $bairro moram $populacao pessoas")

println("No bairro ${bairro.uppercase()} moram ${20000+30} pessoas")

// Operações matemáticas básicas

val soma = 5 + 4
    val multi = 3 * 3
    val divisao = 90 / 2
    val subtracao = 8 - 3
    val potencia = Math.pow(2.0, 3.0)
    val potencia2 = 2.0.pow(3)

    println("potencia 1: $potencia")
    println("potencia 2: $potencia2")

    var endereco = "rua loka, 10"
    endereco = "rua daora, 90"

    val cpf = "1234567812"
    //cpf = "3234567812"

     // A variável 'var' pode ser alterado porém o 'val' nunca. Uma variável imutável.

var idade = 18
 // As estruturas if; if-else e if-else-if funcionam como no jvscript
    if (idade >= 18){ // Todos os operadores de comparação numérica são os mesmos de js
        println("Maior de idade")
    }else {
        println("Vai jogar PS!")
    }

    var contador = 0
    // O while funciona semelhante ao js

    while (contador < 4) {
        println("100 querer 20 buscar")
        contador++  // Funciona semelhante ao Js, sempre adicionando + 1
    }
    idade = 14
    when (idade){
        in 0..6 -> println("bebê")
        in 6..10 -> println("criançinha")
        14 -> { println("adolescente") // para executar + 1 linha, abra chaves
                println("Don´t do that")}
        22 -> println("adulto")
        65 -> println("melhor idade")
        in 130..Int.MAX_VALUE -> println("Matusalém")
        else -> println("Idade inválida!")
    }
    var salario = 2500
    var classeSocial = when (salario) {
        in 0..500 -> "D"
        in 501..1500 -> "C"
        in 1501..5000 -> "B"
        in 5001..50000 -> "A"
        else -> "Inválida" // Else é obrigatório p/ when com atribuição
    }
    println(classeSocial)

}