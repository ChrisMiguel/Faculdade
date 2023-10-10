import java.lang.System.console
import java.time.LocalDate
import java.time.Period
import java.time.format.DateTimeFormatter
import java.time.temporal.ChronoUnit
import java.util.Date
import javax.swing.JOptionPane


fun main(){

    val nascimentoUsuario = LocalDate.parse("2022-10-05")
    val nascimento:Int =
        JOptionPane.showInputDialog("Qual a data do seu nascimento/n (dd/MM/yyyy)").toInt()
    val hoje = LocalDate.now()
    val hojeBrasil = hoje.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"))
val anos = ChronoUnit.YEARS.between(nascimentoUsuario, hoje)
val dias = ChronoUnit.YEARS.between(nascimentoUsuario, hoje)

    println("Idade em anos: $anos")
    println("Idade em anos: $dias")

    val periodo = Period.between(nascimentoUsuario, hoje)
val periodoAnos = periodo.years
val periodoMeses = periodo.months
val periodoDias = periodo.days

    println("Idade: $periodoAnos anos $periodoMeses meses $periodoDias dias")
}