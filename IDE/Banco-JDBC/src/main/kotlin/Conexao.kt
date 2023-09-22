import org.apache.commons.dbcp2.BasicDataSource
import org.springframework.jdbc.core.JdbcTemplate

fun main(){
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

    val jdbcTemplate = JdbcTemplate(dataSource)

    jdbcTemplate.execute("" +
            "create table musica(" +
            "id int primary key," +
            "nome varchar(20) not null" +
            ")")
}