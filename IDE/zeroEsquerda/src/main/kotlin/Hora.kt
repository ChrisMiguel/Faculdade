import java.math.BigDecimal

fun main (){

    val minuto: Int = 9
    val hora: Int = 9

    print("${hora.toString().padStart(2, '0')}:$minuto")

    var minutoFormatado: String

    //Double - 32 bytes - 200000 - (20_000_000-20.E28)
    //val preco2: BigDecimal =
    //BigDecimal - 128 bytes - decimal(20, 7)


    val preco: BigDecimal = BigDecimal(20000.00)



}
