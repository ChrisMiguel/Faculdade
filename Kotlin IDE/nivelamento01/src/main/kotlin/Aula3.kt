fun main(){
    var xícara = "Tea";

    println("You have a cuo with $xícara")
    println(entregarParaAlguem(xícara))
}

fun entregarParaAlguem(xícara : String) : String {
    println("You give your $xícara to Cris figueredo esquentar e ele levou para o microondas")
return esquentar(xícara)
}

fun esquentar(xícara: String) : String {
    println("Esquentando xícara com $xícara ...")
    println("Vrumm Vrumm Vrumm")
return "$xícara está quente!"
}


