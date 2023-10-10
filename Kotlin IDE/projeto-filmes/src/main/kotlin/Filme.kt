import org.apache.commons.dbcp2.BasicDataSource
import org.springframework.jdbc.core.JdbcTemplate

/* object -> indica que só existirá 1 e somente 1
objeto do tipo Conexao na execução deste projeto
A isso chamamos de SINGLETON
 */
object Filme {
    // a ? é para podermos atribuir o null
    var  jdbcTemplate:JdbcTemplate? = null
        get(){
            if(field == null){
                val dataSource = BasicDataSource()
                //Drivers
                //Dados da conexão com o banco
                dataSource.driverClassName = "org.h2.Driver"
                //Como chegar ao banco de dados
                //Neste exemplo, usamos o banco de memória
                dataSource.url = "jdbc:h2:mem:sptech"
                //Login por padrão é 'sa'
                dataSource.username = "sa"
                //Senha
                dataSource.password = ""
                val novoJdbcTemplate = JdbcTemplate(dataSource)
                field = novoJdbcTemplate
            }
            return field
        }
    fun criarTabelas(){
        jdbcTemplate!!.execute("""
            create table pizza(
            codigo Int GENERATED BY DEFAULT AS IDENTITY primary key, 
            sabor varchar(30), 
            preco double,
            quantidade Int)
            """)
    }
}
