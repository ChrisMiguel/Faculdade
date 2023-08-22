fun main() {
//listOf()
    //Cria uma lista imutável (ou somente leitura), nenhum elemento pode entrar ou sair dela!


    var herois =
        listOf("Batman", "Mulher Maravilha", "Thor")

    println(herois)

    println("Primeiro: ${herois[0]}")
    println("Terceiro: ${herois[2]}")
    println("Último: ${herois[herois.size - 1]}")

    println("Primeiro: ${herois.first()}")
    println("Primeiro: ${herois.last()}")


// Cria uma lista mutável ou seja, podemos incluir ou retirar elementos
    val paises = mutableListOf("Brasil", "México", "Chile")
    paises.add("África")// adiciona um elemento
    println(paises)

    paises.remove("México")// remove pelo VALOR
    paises.removeAt(1)//remove pela posição (índice)
    println(paises)

    //incluindo mais de um elemento por vez
    paises.addAll(listOf("EUA", "Argentina", "Argentina"))
    println(paises)

    // as listas permitem elementos repetidos
    //caso existam repetições
    //apenas o primeiro é excluído
    paises.remove("Argentina")
    println(paises)

    //Inserindo em determinada posição
    paises.add(2, "Cuba")
    println(paises)

    //Alterando o valor em determinada posição
    paises.set(3, "Peru")
//paises[3] = "EUA"
    println(paises)

//isEmpty() -> true se a lista não tiver nada
    //isNotEmpty() -> true se a lista ter pelo menos um item
    println("Os países estão vazios ${paises.isEmpty()}")
    println("Há países? ${paises.isNotEmpty()}")

    // sort() -. ordena a lista usando uma ordem "natural" (alfabética, numérica, data etc)
    paises.sort()
    println(paises)


    val numeros = mutableListOf(22, 88, 9, 1, 4, 6, 12, -2)
    numeros.sort()
    println(numeros)

    //Reverse() -> Ele inverte a lista
    //O primeiro vira o último
    //O antepenúltimo vira o segundo
    numeros.reverse()
    println(numeros)

    //sortDescending() -> ordena "ao contrário" do que o
    val oi = mutableListOf(1, 6, 3, 4, 0, 9)
    oi.sortDescending()
    println(oi)

//sorted() -> Cria e devolve uma CÓPIA da lista original ordenada, mas não altera em nada a lista original
    val bichos = listOf("gato", "cachorro", "rato")
    println(bichos.sorted())

//forEach {} - Abre um bloco de código que será executado para cada elemento da lista.
    //Por padrão, cada elemento da lista recebe o nome de "it"
    paises.forEach {
        println("Já fui no país $it")
    }

    /*    paises.forEach { país ->
            println("Já fui no país $país")
        }
    Usando forEach nomeado com o que eu acharia melhor
     */

    paises.forEachIndexed { indice, pais ->
        println("o país na posição $indice é $pais")
    }

//paises.subList(0,3).forEach{
//
//}

    val paisesFiltrados =
        paises.filter { it.contains('r') }

    println(paisesFiltrados)
    println(paises)


    /*
Criem uma lista que contenha todos os países com menos de 6 letras no nome
#Ficadica:
.length -> retorna o número de letras de um texto
 */

}
fun extras() {

}