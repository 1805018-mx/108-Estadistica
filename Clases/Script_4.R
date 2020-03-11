#Elian Roberto Izaguirre Garcia
#1805018
#27.02.2020


# Importar datos de Cedro Rojo --------------------------------------------
setwd("C:/Tareas1/108-Estadistica/Clases")
CR <- read.csv("cedro_rojo.csv", header = TRUE)
#Medida teorica de la variable Diametro establecida por CONAFOR para el cedro rojo es igual a 13
#Comparar la medida observada de la variable diametro para las plantulas producidas en vivero 12.524

#"mu" debe ser igual a la variable teorica
#el valor de alfa establecido es 0.05

t.test(CR$diametro, mu=13)
#Se acepta la alternativa

t.test(CR$diametro, mu=12.7)
#Se acepta la nula

t.test(CR$altura, mu=20)
#Se acepta la hipotesis alternativa

t.test(CR$altura, mu=19)
#Se acepta la hipotesis nula
