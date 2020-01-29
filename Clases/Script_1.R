# Elian Roberto Izaguirre García
# Matrícula: 1805018
# 29.01.2020


# Operadores básicos ------------------------------------------------------

2+2
a <- 2
a+5
log(a)


# Descriptivas ------------------------------------------------------------



# Ingresar conjunto de datos

peso <- c(70, 62, 52, 90, 38, 52, 50, 56, 70, 65, 
          76, 70, 72)
peso
# número de observaciones (lenght)

length(peso)

#Calcular la media del peso, sumatoria de las observaciónes 
#y dividirlo entre el número de individuos muestreados


sum(peso)/length(peso)
peso.media <- sum(peso)/length(peso)
mean(peso)
median(peso)
sd(peso)
var(peso)

fivenum(peso)
range(peso)



# Gráficas ----------------------------------------------------------------

boxplot(peso)
boxplot(peso, col = "gold", ylab= "peso(kg)", 
        main="Peso alumnos tomado el 29.01.2019")

