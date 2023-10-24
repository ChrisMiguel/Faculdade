import org.springframework.jdbc.core.JdbcTemplate

class Repositorio {
    lateinit var JdbcTemplate: JdbcTemplate
        val conexao = ConexaoBd()

    fun iniciar(){
        JdbcTemplate = conexao.jdbcTemplate!!
    }

    fun cadastrar(novaMusica: Musica) {
        JdbcTemplate.update(
            """
            insert into Musica (id, titulo, artista, dataCriacao) values
('${Musica.id}', ${Musica.titulo}, ${Musica.artista}, ${Musica.dataCriacao})
"""
        )
        fun getUltimoCodigo() {
            val ultimoCodigo = JdbcTemplate.queryForObject(
                """
        select max(id) from Musica    
        """, Int::class.java
            )
        }
    }}
