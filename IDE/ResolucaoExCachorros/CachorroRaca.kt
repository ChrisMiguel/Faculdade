class CachorroRaca : Cachorro() {

    override fun getFatorDigestao(): Double {
        return 0.5
    }

    override fun getPrecoMedio(): Double {
        return 2000.0
    }

    // não precisamos sobrescrever o correAoVerMoto() pois queremos o mesmo comportamento da super classe
}