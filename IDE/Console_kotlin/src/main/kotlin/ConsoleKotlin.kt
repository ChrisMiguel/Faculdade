import java.util.Scanner
class CadastroUsuario() {
    var nome: String = ""
    var email: String = ""
    var senha: String = ""
}

fun main() {
    println("\n--------------------------SECURITY BANK------------------------------")
    val listaUsuarios = mutableListOf<CadastroUsuario>()

    while (true) {
        println(
            """
            Digite:
            1 - Para fazer cadastro.
            2 - Para fazer Login.
            3 - Para sair.
            """.trimIndent()
        )
        val sn = Scanner(System.`in`)
        val escolha = sn.nextInt()
        println("\n--------------------------------------------------------------------------------------")

        when (escolha) {
            1 -> {
                println("\nVamos realizar seu Cadastro")
                print("Digite seu nome: ")
                val nome = sn.next()
                val usuario = CadastroUsuario()
                usuario.nome = nome

                var emailInvalido = false
                while (!emailInvalido) {
                    print("Digite seu email: ")
                    val email = sn.next()
                    val arroba = email.indexOf('@')
                    val pontoCom = email.indexOf(".com")

                    if (email == null || arroba == -1 || pontoCom == -1 || pontoCom < arroba) {
                        println("Email inválido. Tente novamente.")
                    } else {
                        usuario.email = email
                        println("O seu email Ã©: ${usuario.email}")
                        emailInvalido = true
                    }
                }

                var senhaInvalida = false
                while (!senhaInvalida) {
                    print("Digite sua senha (min 8 caracteres): ")
                    val senha = sn.next()
                    val caracteresEspeciais = setOf('!', '@', '#', '$', '%', '&', '*')
                    if (senha.length < 8 ||
                        !senha.any { it.isUpperCase() } ||
                        !senha.any { it.isLowerCase() } ||
                        !senha.any { it.isDigit() } ||
                        !caracteresEspeciais.any { senha.contains(it) }
                    ) {
                        println("Senha InvÃ¡lida")
                    } else {
                        println("Sua senha Ã© VÃ¡lida")
                        usuario.senha = senha
                        senhaInvalida = true
                    }
                }

                println("\n-------------------------------------------------------------------------------")
                println("Cadastro Realizado com sucesso!")
                println("-------------------------------------------------------------------------------")
                listaUsuarios.add(usuario)
            }

            2 -> {
                println("\nBem-vindo de volta!.")
                print("Digite seu email: ")
                val email = sn.next()
                val usuario = listaUsuarios.find { it.email == email }

                if (usuario != null) {
                    var senhaNregistrado = false
                    println("\nDigite sua Senha: ")
                    while (!senhaNregistrado) {
                        val senha = sn.next()
                        if (senha != usuario.senha) {
                            print("\nSenha invÃ¡lida, tente novamente: ")
                        } else {
                            println("\n-------------------------------------------------------------------------------")
                            println("Seja Bem-vindo ${usuario.nome}")
                            println("-------------------------------------------------------------------------------\n")
                            senhaNregistrado = true
                        }
                    }
                } else {
                    println("E-mail nÃ£o registrado, tente novamente!")
                }
            }

            3 -> {
                println("Saindo do programa.")
                return
            }

            else -> {
                println("OpÃ§Ã£o invÃ¡lida. Tente novamente.")
            }

        }
    }
}

