# Jairo Alberto Leal Gómez
# 09/02/2023
# Características descriptivas


# Primera sesión ----------------------------------------------------------

dbh <- 15
h <- 8

# Multiplicación y operaciones

dbh * h

dbh^2

log(dbh)

dbh_2 <- c(12, 8, 7, 5, 11, 13, 16, 21, 8, 16) 

dbh_2 * h

h_2 <- c(5, 3, 2.4, 3, 4.7, 5.8, 7, 11, 2.4, 7.2)

dbh_2 * h_2

# Medidas de tendencia central
# Media, moda

# Medidas de dispersión
# Varianza, desviación estandar, etc.

# Representación gráfica de los datos
# Histogramas, distribución de un solo grupo en un rango
# Gráfica de barras, grupos 
# Dispersión
# Boxplot, gráfica de cajas

boxplot(dbh_2, col= 'blue', main = 'Boxplot DBH')

# Limites mínimo y máximo, centro representa la mediana, 50% de los datos en la caja, y cada uno es un cuartil (25, 50, 75, 100)

boxplot(h_2, col= 'green', main = 'Boxplot h')

plot(dbh_2, h_2, col= "red")

# Correlación: asociación positiva

hist(dbh_2)
hist(h_2)

# Ejercicio

# Datos aleatorios
# para que me genere datos random
?norm  

# algorito para que siempre me genere los mismos números, el numero en (  ) puede ser cualquiera
set.seed(13)
obs.50 <- rnorm(50, mean= 3)
hist(obs.50)

set.seed(13)
if.50 <- runif(50, min = 10, max = 40)
hist(if.50)

set.seed(13)
if.100 <- runif(100, min = 10, max = 40)
hist(if.100)

if.500 <- runif(500, min = 10, max = 40)
hist(if.500)

if.1000 <- runif(1000, min = 10, max = 40)
hist(if.1000)


set.seed(1)
stem(if.50)
hist(if.50)
