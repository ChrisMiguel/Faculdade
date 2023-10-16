p <- 20000
n <- 2000
set.seed(15)
pop.carros <- rep(c(0,1,2,3),p)
summary(pop.carros)
table(pop.carros)
prop.table(table(pop.carros))
carros <- sample(pop.carros, n)
table(carros)
pop.escolaridade <- rep(c(0,1,2,3,4,5,6),p)
set.seed(1234)
escolaridade.temp<- sample(pop.escolaridade,n)
escolaridade<-factor(escolaridade.temp,
                     levels=c(0,1,2,3,4,5,6),
                     labels=c("Analfabeto", "1°Grau", "2°Grau", "3°Grau",
                              "Mestrado", "Doutorado", "PósDoc"),
                     ordered=TRUE
                     )
str(escolaridade)
table(escolaridade)
plot(table(escolaridade))
