#Elian Roberto Izaguirre Garcia
#1805018
#11.03.2020

#Importar datos vivero
setwd("C:/Tareas1/108-Estadistica/Clases")


# IMPORTAR DATOS ----------------------------------------------------------


Vivero <- read.csv("viveros.csv", header = T)

summary(Vivero)


boxplot(Vivero$IE~ Vivero$Tratamiento,col="mediumaquamarine",
        xlab = "Tratamientos", ylab = "IE")




# Pruebas de T ------------------------------------------------------------

t.test(Vivero$IE~ Vivero$Tratamiento, var.equal =T)

        
        