class Estado {
    var nome: String = ""
        get() {
            return if (field.isBlank()) "(não informado)"
            else field
        }

            //quando um get exige mais código, usamos {}
            //e um return ao final
            // o reurn indica qual o valor será entregue para quem pediu

            var uf: String = ""
            get() = field.uppercase()

            //get() = -> indica o valor que será retornado quando alguém solicitar o uf de um estado
            //'field1 -> valor original do campo
//OBS: o get não altera o valor original do campo!

            var populacao: Int = 0
            set(value) {
                if (value >= 0) {
                    field = value

            }
        }

//O set () define uam lógica para ALTERAÇÃO de um atributo (campo)
//o argumento 'value' é o
}