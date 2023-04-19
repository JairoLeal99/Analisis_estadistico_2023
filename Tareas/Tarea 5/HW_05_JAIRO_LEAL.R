# Asignación 5: Correlación 

# Maestría en Ciencias Forestales UANL
# Alumno: Jairo Alberto Leal Gómez
# Matricula: 1723093

# Ejercicio 1 -------------------------------------------------------------

# El cuadro 1 muestra los datos recopilados sobre efímeras de un arroyo y para cada muestra medimos la velocidad del arroyo y el número de efímeras.

speed <- c(2, 3, 5, 9, 14, 24, 29, 34)
abundance <- c(6, 3, 5, 23, 16, 12, 48, 43)

plot(abundance ~ speed)
plot(x = speed, y = abundance, pch=20, col ="blue", las = 1)

# y = abundance; x = speed

# Parece que puede haber una relación entre la velocidad y la abundancia, pero hay varias inconsistencias, no es una correlación perfecta. Contestar las siguientes interrogantes: 

# ¿Es estadísticamente significativa la correlación?

# Comenzamos con una hipótesis para probar. En este caso, esperamos una mayor abundancia de efímeras a medida que aumenta la velocidad del arroyo. Escribiríamos esto formalmente (nuestrahipótesis alternativa H1) como:

# H1 (alternativa): “Existe una correlación positiva entre la velocidad de los arroyos y la abundancia de efímeras (Ecdyonurus dispar)”.
# H0 (nula: “No existe una correlación entre la velocidad del arroyo y la abundancia de efímeras”.

cor(abundance, speed, method= 'pearson')

cor.test(abundance, speed)

    # r = 0.8441408 
    # Grados libertad = 6
    # p-value = 0.008393
    
    0.8441408^2 # <--- R2

# ¿Es estadísticamente significativa la correlación?
    # Si es estadisticamente significativa, se acepta la hipotesis alternativa
    
    
# Ejercicio 2 -------------------------------------------------------------

# Conjunto de datos: 
# Composiciones del suelo, características físicas y químicas. Descripción: Las características del suelo se midieron en muestras de tres áreas diferentes (cima,pendiente y depresión) y a cuatro profundidades (0-10 cm, 10-30 cm, 30-60 cm y 60-90 cm). El área se dividió en 4 bloques, en un diseño de bloques al azar (Cuadro 2).
    
# Cargar base de datos
suelo <- read.csv("C:/Users/jairo/OneDrive/Escritorio/MCF 2022-2023/PRIMER SEMESTRE/ANALISIS ESTADISTICO/DR. MARCO/HW_5/suelo.csv")
head(suelo)

# Realizar un análisis de correlación para las variables y reportar en un cuadro los valores de coeficientede correlación y su valor de significancia (p-value):

# Base de datos con solo las columnas que se necesita hacer correlacion
suelo.1 <- suelo[ , 7:15]
suelo.1

# Correlacion de variables para obtener el p value
cor(suelo.1)

cor.test(suelo.1$pH, suelo.1$N)
cor.test(suelo.1$pH, suelo.1$Dens)
cor.test(suelo.1$pH, suelo.1$P)
cor.test(suelo.1$pH, suelo.1$Ca)
cor.test(suelo.1$pH, suelo.1$Mg)
cor.test(suelo.1$pH, suelo.1$K)
cor.test(suelo.1$pH, suelo.1$Na)
cor.test(suelo.1$pH, suelo.1$Conduc)

# Correlación múltiple entre variables
suelo.cor <- round(cor(suelo.1), digits=4)
suelo.cor

# Creación de tabla con valores de correlacion y pvalue
Conjunto <- c("ph-N", "ph-Dens", "ph-P", "ph-Ca", "ph-Mg", "ph-K", "ph-Na", "ph-conduc")
pH <- c(0.6367, -0.5890,  0.5910,  0.8086, -0.3958,  0.5796, -0.6933, -0.7648)
P.value <- c(1.149e-06, 1.062e-05, 9.74e-06, 3.614e-12, 0.005361, 1.585e-05, 4.724e-08, 2.484e-10)

Tabla.1 <- c(Conjunto, pH, P.value)
Tabla.1 <- data.frame(Conjunto, pH, P.value)
Tabla.1
is.factor(Tabla.1)

# Grafico de correlación

library(corrplot)

corrplot(suelo.cor, tl.col = "black", bg = "white", tl.srt = 35, 
         title = "Correlacion suelos",
         addCoef.col = "black", type = "upper")

