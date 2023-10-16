fumante.n <- rbinom(n, 1, 0.4)
fumante.f <- factor(fumante.n, 
                    levels = c(0,1),
                    labels = c("não", "sim"),
                    ordered = TRUE)
table(fumante.f)
table(escolaridade)
prop.table(table(fumante.f))
mean(fumante.n)
fumante.n
par(mfrow = c(1,2))
barplot(table(escolaridade), ylab = "Número de participantes")
barplot(table(fumante.f), ylab = "Número de participantes")
table(escolaridade, fumante.f)

a = 2
b = 3
a + b


