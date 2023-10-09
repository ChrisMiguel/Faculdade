import org.apache.commons.dbcp2.BasicDataSource
import org.springframework.jdbc.core.JdbcTemplate

class Conexao {
    var  jdbcTemplate: JdbcTemplate? = null
        get(){
            if(field == null){
                val dataSource = BasicDataSource()
                dataSource.driverClassName = "org.h2.Driver"
                dataSource.url = "jdbc:h2:mem:sptech"
                dataSource.username = "sa"
                dataSource.password = ""
                val novoJdbcTemplate = JdbcTemplate(dataSource)
                field = novoJdbcTemplate
            }
            return field
        }
    fun criarTabelas(){
        jdbcTemplate!!.execute("""
            create table Livro(
            titulo Int GENERATED BY DEFAULT AS IDENTITY primary key, 
            autor varchar(30), 
            dataCriacao date)
            """)
    }
}

