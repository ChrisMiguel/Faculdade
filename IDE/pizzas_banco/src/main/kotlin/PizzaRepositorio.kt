import org.springframework.jdbc.core.BeanPropertyRowMapper
import org.springframework.jdbc.core.JdbcTemplate
import org.springframework.jdbc.core.queryForObject
import java.beans.BeanProperty

/* Esta classe irá abstrair os métodos de acesso á tabela pizza
(insert, select, delete, update)
 */
class PizzaRepositorio {
    lateinit var JdbcTemplate:JdbcTemplate

    fun iniciar(){
        /* aqui usamos !! porque está com ? na Conexão
        isso significa que aceitamos que pode ocorrer um erro
        já que o jdbcTemplate pode estar nulo (null)
         */
        JdbcTemplate = Conexao.jdbcTemplate!!
    }
    fun cadastrar(novaPizza: Pizza){
        JdbcTemplate.update("""
            insert into pizza (sabor, preco, quantidade) values 
('${novaPizza.sabor}', ${novaPizza.preco}, ${novaPizza.quantidade})
""")
    }
    fun getUltimoCodigo():Int{
        /* queryForObject -> usamos quando a consulta retorna 1 e somente 1 linha!
         Int::class.java -> indica que o resultado será convertido num objeto do tipo Int
         ::class.java -> Sempre que mencionamos uma classe, fazemos as
         * */
        val ultimoCodigo =
        JdbcTemplate.queryForObject("""
            select max(codigo) from pizza 
            """, Int::class.java)
        return ultimoCodigo
    }
    fun vender(codigo: Int):Boolean{
val atualizados = JdbcTemplate.update("""
    update pizza set quantidade = quantidade - 1
    where 
    codigo = $codigo 
    and quantidade > 0
    """)
        return atualizados == 1
    }
    fun recuperar(codigo:Int):Pizza{
        val pizza = JdbcTemplate.queryForObject("""
            select * from pizza where codigo = $codigo 
            """,BeanPropertyRowMapper(Pizza::class.java))
        return pizza
    }
    fun precoNovo(codigo: Int, valor:Double):Boolean{
        val atualizados = JdbcTemplate.update("""
    update pizza set preco = $valor
    where 
    codigo = $codigo 
    """)
        return atualizados == 1
    }
}
