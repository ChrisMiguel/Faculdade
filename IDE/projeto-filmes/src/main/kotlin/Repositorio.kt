import org.springframework.jdbc.core.JdbcTemplate

class Repositorio {
    lateinit var JdbcTemplate: JdbcTemplate

    fun iniciar(){
        /* aqui usamos !! porque está com ? na Conexão
        isso significa que aceitamos que pode ocorrer um erro
        já que o jdbcTemplate pode estar nulo (null)
         */
        JdbcTemplate = Conexao.JdbcTemplate!!
    }
    fun cadastrar(Conexao: Filme){
        JdbcTemplate.update("""
            insert into Filme (nome, diretor, indicadoOscar, custoProducao) values 
('${Filme.nome}', ${Filme.diretor}, ${Filme.indicadoOscar}, ${Filme.custoProducao})
""")

    }
}