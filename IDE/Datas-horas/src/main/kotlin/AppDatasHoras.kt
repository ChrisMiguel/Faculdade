import java.time.LocalDate
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

fun main(){
    //LocalDate -. somente data
    //Localdatetime -> data e hora (até milissegundos)
 val hoje = LocalDate.now() //fornece a data atual
    println(hoje)

    val agora = LocalDateTime.now() //fornece a data e hora atuais
    println(agora)

    val nascimentoTexto = "2004-07-10"
   //convertendo texto em data
   //(se a data já estiver no formato ISO - aaaa/mm/dd)

    val dataNascimento = LocalDate.parse(nascimentoTexto)
println(dataNascimento)

   //formatando uma LocalDate em String no formato
   val hojeBrasil =
      hoje.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"))
   println(hojeBrasil)
//ex de formato de data que mostra dia da semana e o mês por exemplo
   // 'EEEE', 'dd',
   val dataDoUsuario =
      "31/12/2000" // poderia ser JOptionPane
   val dataConvertida =
      LocalDate.parse(dataDoUsuario, DateTimeFormatter.ofPattern("dd/MM/yyyy"))
   println(dataConvertida)

   //operações com datas
   val amanha = hoje.plusDays(1)
   println(amanha)
   println(hoje) // os objetos de data não se alteram com seus métodos

   val ontem = hoje.minusDays(1)
   println(ontem)

   val ha5anos = hoje.minusYears(5)
   println(ha5anos)
   val daquiMeiaHora = agora.plusMinutes(36)
   println(daquiMeiaHora)
   val ha15segundos = agora.minusSeconds(15)
   println(ha15segundos)

   //Crie um novo arquivo Kotlin  "AppNascimento"
   //a) Solicite ao usuário sua data de nascimento no formato dia/mês/ano (dd/MM/yyyy) numa janela
   //b) Exiba numa janela "Você tem X anos de vida" (pesquise como achar esse "X")
   //c) Exiba numa janela "Você tem Y dias de vida" (pesquise como achar esse "Y")
}