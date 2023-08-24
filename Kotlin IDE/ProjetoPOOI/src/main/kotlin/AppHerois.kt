fun main() {

//Estamos criando ou instanciando um objeto do tipo herói "faça-se um Herói! Seu nome em memória será 'heroi1'
    val heroi1 = Heroi()

    println(heroi1.nome)
    println(heroi1.aposentado)
    println(heroi1.poderes)
    println(heroi1.vida)

    heroi1.nome = "Cássio"
    heroi1.poderes = "ser o melhor goleiro do mundo"
    heroi1.vida = 1000000.0

    println(heroi1.vida)
    println(heroi1.nome)
    println(heroi1.aposentado)
    println(heroi1.poderes)

    heroi1.usarPoder()

    val heroiB = Heroi()
    println(heroiB.nome)
    println(heroiB.poderes)
    heroiB.usarPoder()

    heroi1.aposentar()
    println("O herói1 está aposentado? ${heroi1.aposentado}")

    println("Quanto de vida o B tem? ${heroiB.vida}")
    heroiB.apanhar(5.0)
    println("Quanto de vida o B tem? ${heroiB.vida}")
    heroiB.apanhar(15.0)
    println("Quanto de vida o B tem? ${heroiB.vida}")
    heroiB.apanhar(33.0)
    println("Quanto de vida o B tem? ${heroiB.vida}")
    heroiB.apanhar(90.0)
    println("Quanto de vida o B tem? ${heroiB.vida}")


    println("Quanto de vida o 1 tem? ${heroi1.vida}")


}