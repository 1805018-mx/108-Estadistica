library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

# Normalidad --------------------------------------------------------------

head(conjunto)

#Aplicacion pruebda Shapiro.test para la variable altura

shapiro.test(conjunto$Altura)
ks.test(conjunto$Diametro,"pnorm", mean= mean(conjunto$Diametro, sd=sd(conjunto$Diametro)))

hist(conjunto$Diametro)


shapiro.test(conjunto$Diametro)      


boxplot(conjunto$Diametro~ conjunto$Especie, col="grey")
boxplot(conjunto$Vecinos~ conjunto$Especie)
boxplot(conjunto$Clase~ conjunto$Especie)


frecu <- table(conjunto$Clase)
prop.table(frecu)
hist(frecu)




# Prueba Homogenidad ------------------------------------------------------

var(conjunto$Diametro)
var(conjunto$Altura)




# Datos Ebanos ------------------------------------------------------------

ebano<- read.csv("Clases/ebanos.csv", header =T)
hist(ebano$diametro)
hist(ebano$altura)

boxplot(ebano)
boxplot(ebano$diametro)
boxplot(ebano$altura)



fivenum(ebano$diametro)
fivenum(ebano$altura)


#¿Cuántos individuos tienen un Diam menor al 1er quartil?

sum(ebano$diametro <= 15.55)

#¿Cuántos individuos tienen un Diam menor al 3er quartil?

sum(ebano$diametro <=34.25)

#¿Cuántos individuos tienen un Diam mayor al 1er quartil
#pero menor o igual a el 2do quartil?

sum(ebano$diametro >=15.55 & ebano$diametro <= 25.90) 
sum(ebano$diametro >=10 & ebano$diametro <=15.55)
