# Script 3 de clase

# Maestría en Ciencias Forestales UANL
# Almuno: Jairo Alberto Leal Gómez
# Matricula: 1723093

library(repmis)

conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
head(conjunto)

# int = número integral
# chr = carácter
# num = numero

# Para sobrescribir la variable a factor (número)
conjunto$Especie <- as.factor(conjunto$Especie)
conjunto$Clase <- as.factor(conjunto$Clase)

# Boxplot de diametro
boxplot(conjunto$Diametro, 
        col = "red3",
        ylab = "Diametro")

# Boxplot diametro en función de la ESPECIE
boxplot(conjunto$Diametro ~ conjunto$Especie)

# Boxplot altura en función de la ESPECIE
boxplot(conjunto$Altura ~ conjunto$Especie)

# Boxplot diametro en función de la CLASE
boxplot(conjunto$Diametro ~ conjunto$Clase)

# Boxplot altura en función de la CLASE
boxplot(conjunto$Altura ~ conjunto$Clase)

# Correlacion
cor.test(conjunto$Diametro, conjunto$Altura) # <-- Correlacion baja, pero signficativa
plot(conjunto$Diametro, conjunto$Altura, col = "blue", pch = 15)


# No importa el orden de las variables

# Prueba de t para comparar dos muestras
# Análisis de varianza, ANOVA para comparar mas de 2 muestras
# Las diferencias o semejanzas tiene que ver cuanto se traslapa el rango intercuantil (Q1-Q3) entre muestras




