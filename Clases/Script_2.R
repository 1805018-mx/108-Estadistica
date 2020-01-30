# Elian Roberto Izaguirre García
# Matrícula: 1805018
# 30.01.2020


# Importar datos ----------------------------------------------------------

BD.ebanos <- read.csv("Clases/ebanos.csv", header = TRUE)
head(BD.ebanos)
summary(BD.ebanos)

mean(BD.ebanos$diametro)
mean(BD.ebanos$altura)
sd(BD.ebanos$diametro)
sd(BD.ebanos$altura)

boxplot(BD.ebanos$diametro, ylab="Diametro (cm)",
        col ="gold", main= "Diámetro de plantulas")
boxplot(BD.ebanos$altura, ylab="Altura (cm)", col= "green",
         main= "Altura de plantulas")
stem(BD.ebanos$diametro)
stem(BD.ebanos$altura)


hist(BD.ebanos$diametro, col ="red",
     xlab = "Diámetro (cm)", ylab = "Frecuencia",
     main = "Histrograma de Diámetro")


# Condicionantes ----------------------------------------------------------

# ¿Cuántos individuos tienen un diámetro menos que la media?

sum(BD.ebanos$diametro < mean(BD.ebanos$diametro))

sum(BD.ebanos$diametro < 25.97)

## ¿Cuántos individuos tienen un diámetro menos que la media?

sum(BD.ebanos$diametro > mean(BD.ebanos$diametro))

sum(BD.ebanos$diametro > 30)

#¿Existirá una observación igual a la media?

sum(BD.ebanos$diametro == mean(BD.ebanos$diametro))

# Subconjunto de datos subset

ebanos.30<-subset(BD.ebanos, BD.ebanos$diametro > 30)
