Vendedor <- c("Ana","Flávia","Pedro","Mariana","Ana","Flávia","Pedro","Mariana")
Dia <- rep(c(1,2),each=4)
Vendedor
Dia
Produto <- c("saia", "casaco","vestido","meia","calçaFlaire","calçaSkinny","calçaSkinny","manta")
Quantidade <- c(1,2,1,5,3,0,3,4)
Quadro1 <- data.frame(Vendedor, Dia, Produto, Quantidade, Faturamento)
Quadro1
PrecoUnit <- c(145.00, 289.00,320.00,39.00,240.00,240.00,240.00,69.00)
CustoUnit <- c(89.00, 144.00,160.00,15.00,210.00,210.00,210.0, 39.00)
Quadro1$PrecoUnit<-PrecoUnit
Quadro1$CustoUnit<-CustoUnit
Quadro1$Faturamento<-Faturamento
Quadro1
FaturamentoAna = sum(Quadro1[1,5],Quadro1[5,5])
FaturamentoAna
FaturamentoFlavia = sum(Quadro1[2,5],Quadro1[6,5])
FaturamentoFlavia
FaturamentoPedro = sum(Quadro1[3,5],Quadro1[7,5])
FaturamentoPedro
FaturamentoMariana = sum(Quadro1[4,5],Quadro1[8,5])
FaturamentoMariana
Faturamentos = c(FaturamentoAna,FaturamentoFlavia, FaturamentoMariana, FaturamentoPedro)
barplot(Faturamentos,
        main = "Faturamento final dos funcionários",
        ylab = "Valor (em R$)",
        xlab = "Ana                Flavia               Mariana                   Pedro")
