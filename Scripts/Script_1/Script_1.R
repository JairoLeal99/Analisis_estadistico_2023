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



# Graficas ----------------------------------------------------------------

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



# Datos aleatorios
# para que me genere datos random


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



# Restricciones -----------------------------------------------------------

# Trabajar con datos del objeto if.50

mean(if.50)
fivenum(if.50)
boxplot(if.50)

# mean= media   ;   fivenum= 5 datos del boxplot, rangos, limites de cuartiles y mediana

# SIMBOLOS DE RESTRICCIONES DE DATOS

# igual a ==
# diferente a !=
# igual o mayor >=
# igual o menor <=
# mayor que >
# menor que <

if.50 <= median(if.50)

# dice que datos cumplen la restricción... instruccion lógica

# submuestreo dirigido

dbh.50 <- subset(if.50, if.50 <= median(if.50))

dbh.up50 <- subset(if.50, if.50 >= median(if.50))

dbh.up30 <- subset(if.50, if.50 > 30)
dbh.up30

mean(dbh.up30)
sd(dbh.up30)



# Importar datos ----------------------------------------------------------

fert <- read.csv("vivero.csv", header = TRUE)

# mis datos no se exportaron como un factor, por lo cual no lo toma como grupos diferentes, siguiente comando para hacerlo

fert$Tratamiento <-as.factor(fert$Tratamiento)

# ~ en función de...

boxplot(fert$IE ~ fert$Tratamiento, 
        main = "Vivero Bosque Escuela",
        xlab = "Tratamiento", ylab = "Indice de Esbeltez",
        col = c("red", "blue"),
        las = 1, ylim = c(0.4, 1.2))

