Vendedor <- c("Ana","Flávia","Pedro","Mariana","Ana","Flávia","Pedro","Mariana")
Dia <- rep(c(1, 2),each=4)
Vendedor
Dia
Produto <- c("saia", "casaco","vestido","meia","calçaFlaire","calçaSkinny","calçaSkinny","manta")
Quantidade <- c(1,2,1,5,3,0,3,4)
Quadro1 <- data.frame(Vendedor, Dia, Produto, Quantidade)
Quadro1
PrecoUnit <- c("R$145,00", "R$289,00","R$320,00","R$39,00","R$240,00","R$240,00","R$240,00","R$69,00")
CustoUnit <- c("R$89,00", "R$144,00","R$160,00","R$15,00","R$210,00","R$210,00","R$210,00", "R$39,00")
Quadro1$PrecoUnit<-PrecoUnit
Quadro1$CustoUnit<-CustoUnit
hist(Quadro1$Produtos,xlab='Quantidade',ylab='Produto')


