Vendedor <- c("Ana","Flávia","Pedro","Mariana","Ana","Flávia","Pedro","Mariana")
Dia <- rep(c(1, 2),each=4)
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
hist(Quadro1$Produtos,xlab='Quantidade',ylab='Produto')
Faturamento <- c(145.00, 578.00, 320.00, 195.00, 720.00, 0.0, 720.00, 376.00)
vendasAna = subset(Quadro1, Vendedor == 'Ana')
vendasFlavia = subset(Quadro1, Vendedor == 'Flavia')
vendasPedro = subset(Quadro1, Vendedor == 'Pedro')
vendasMariana = subset(Quadro1, Vendedor == 'Mariana')
hist(Quadro1$Faturamento, xlab='Faturamento', ylab='Vendedor')
AnaFaturamento = sum(vendasAna$Quantidade * vendasAna$PrecoUnit)
PedroFaturamento = sum(vendasPedro$Quantidade * vendasPedro$PrecoUnit)
MarianaFaturamento = sum(vendasMariana$Quantidade * vendasMariana$PrecoUnit)
FlaviaFaturamento = sum(vendasFlavia$Quantidade * vendasFlavia$PrecoUnit)
barplot(Faturamento)