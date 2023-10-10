import org.springframework.jdbc.core.BeanPropertyRowMapper
import org.springframework.jdbc.core.JdbcTemplate
import org.springframework.jdbc.core.queryForObject
import java.beans.BeanProperty

class RepLivro {
    lateinit var JdbcTemplate:JdbcTemplate

    fun iniciar(){
val conexao = Conexao()
        JdbcTemplate = conexao.jdbcTemplate!!
    }
//    fun cadastrar(){
//        JdbcTemplate.update("""
//            insert into Livro (titulo, autor, dataCriacao) values
//('${novaPizza.titulo}', ${novaPizza.autor}, ${novaPizza.dataCriacao})
//""")
//    }
}


