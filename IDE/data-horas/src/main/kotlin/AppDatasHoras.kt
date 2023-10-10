import java.time.LocalDate
import java.time.LocalDateTime
import java.time.Period
import java.time.format.DateTimeFormatter
import java.time.temporal.ChronoUnit

fun main() {
    /*
    LocalDate -> somente data
    LocalDateTime -> data e hora (até o milissegundos)
     */
    val hoje = LocalDate.now() // fornece a data atual
    println(hoje)

    val agora = LocalDateTime.now() // fornece a data e hora atuais
    println(agora)

    val nascimentoTexto = "2000-12-31"

    // convertendo texto em data
    // (se a data já estiver no formato ISO - aaaa-mm-dd)
    val dataNascimento = LocalDate.parse(nascimentoTexto)
    println(dataNascimento)

    // formatando uma LocalDate em String no formato dd/MM/yyyy
    // faríamos isso, por exemplo, ao pegar do banco
    // para exibir na tela
    val hojeBrasil =
            hoje.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"))
    println(hojeBrasil)
    // ex de formato de data que mostra dia da semana e o mês por extenso
    // "EEEE', 'dd' de 'MMMM' de 'yyyy"
    // sexta-feira, 06 de outubro de 2023

    // convertendo texto não ISO em LocalDate
    // faríamos isso, por exemplo, ao pegar do usuário
    // para enviar para o banco
    val dataDoUsuario = "31/12/2000" // poderia ser JOptionPane
    val dataConvertida = LocalDate.parse(
                        dataDoUsuario,
                        DateTimeFormatter.ofPattern("dd/MM/yyyy"))
    println(dataConvertida)

    // operações com datas
    val amanha = hoje.plusDays(1) // adicionando dias
    println(amanha)
    println(hoje) // os objetos de data NÃO se alteram com seus métodos de operação de datas

    val ontem = hoje.minusDays(1) // removendo dias
    println(ontem)

    val ha5anos = hoje.minusYears(5) // removendo anos

    val daquiMeiaHora = agora.plusMinutes(30) // adicionando minutos
    val ha15segundos = agora.minusSeconds(15) // removendo segundos


    // calculando diferenças de anos, dias etc
    val nascimentoUsuario = LocalDate.parse("2003-09-30")
    val anos = ChronoUnit.YEARS.between(nascimentoUsuario, hoje)
    val dias = ChronoUnit.DAYS.between(nascimentoUsuario, hoje)

    println("Idade em anos: $anos")
    println("Idade em dias: $dias")

    // calculando um período inteiro
    // (anos, meses após os anos e dias após os meses)
    val periodo = Period.between(nascimentoUsuario, hoje)
    val periodoAnos = periodo.years
    val periodoMeses = periodo.months
    val periodoDias = periodo.days
    println("""
        Idade: 
        $periodoAnos anos
        $periodoMeses meses
        $periodoDias dias
    """.trimIndent())


}



