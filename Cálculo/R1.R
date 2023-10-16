alt <- c(3,4,3,2,5,2,3,1,3,2,6,5,4,8,6,3,5,3,7,8)
luminosidade <- rep(c("muita","pouca"),each=10)
dados <- data.frame(alt,luminosidade)
print(dados)
str(dados)
class(alt)
class(luminosidade)
class(data.frame)
fol<-c(19,21,18,18,16,21,23,21,25,22,9,7,6,7,12,9,12,2,9,4)
dados$fol<-fol
print(dados)
names(dados)
names(dados)<-c("altura","luz","folhas")
dados
dados$folhas
head(dados)
tail(dados)
dados[1,]
dados[,1]
subset(dados, luz == 'muita')
subset(dados, altura == '1')
dados(dados$altura > 3 & dados$luz == 'muita')
subset(dados, luz == 'muita')
dados[dados$altura > 3 & dados$luz == 'muita',]
subset(dados,altura>3)
dados[dados$altura > 3,1]<- 10
dados
dados2 <- dados
dados2[dados2$alt>3,]
fol<-scan()
readline(prompt = "")
p <- 20000
n <- 2000
set.seed(15)
