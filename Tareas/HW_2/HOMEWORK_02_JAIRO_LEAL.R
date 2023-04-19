# ASIGNACIÓN 2: Uso de restricciones y estadísticas descriptivas

# Maestría en Ciencias Forestales UANL 
# Alumno: Jairo Alberto Leal Gómez
# Matricula: 1723093

# OBJETIVO: Selección de conjunto de datos en R mediante restricciones

# Importar datos de trabajo -----------------------------------------------

arboles <- read.csv ("C:/Users/jairo/OneDrive/Escritorio/MCF 2022-2023/PRIMER SEMESTRE/ANALISIS ESTADISTICO/DR. MARCO/HW_2/basedatos.csv", header = TRUE)

# Selección de datos ------------------------------------------------------

# Aplicar la función subset para la variable altura de acuerdo a las siguientes indicaciones:

## Incluir los datos iguales o menores a la media

Altura <- arboles$Altura
Altura

H.media <- subset(Altura, Altura <= mean(Altura))
H.media

mean(Altura)

## Incluir los datos menores a 16.5 metros

H.16 <- subset(Altura, Altura < 16.50)
H.16

# Aplicar la función subset para la variable Vecinos

## Incluir los arboles que tengan un numero de vecinos iguales o menores a 3

Vecinos <- arboles$Vecinos
Vecinos

Vecinos.3 <- subset(Vecinos, Vecinos <= 3)
Vecinos.3

## Incluir los arboles que tengan un numero de vecinos mayores a 4

Vecinos.4 <- subset(Vecinos, Vecinos > 4)
Vecinos.4

# Aplicar la función subset para la variable Diametro

## Incluir los diámetros mayores a la media

Diametro <- arboles$Diametro
Diametro

DBH.media <- subset(Diametro, Diametro < mean(Diametro))
DBH.media

mean(Diametro)

## Incluir los diámetros mayores a 16 

DBH.16 <- subset(Diametro, Diametro > 16)
DBH.16

# Aplicar la funcion subset para la variable Especie

## Incluir la especie CEDRO ROJO

Especie <- arboles$Especie
Especie

Cedro.rojo <- subset(Especie, Especie == "C")
Cedro.rojo

## Incluir la especie Tsuga heterofila (H) y Douglasia verde (F)

Tsuga <- subset(Especie, Especie == "H")
Tsuga

Douglasia <- subset(Especie, Especie == "F")
Douglasia

Tsuga.douglasia <- c(Tsuga, Douglasia)
Tsuga.douglasia

# Determinar cuantas observaciones son menores o iguales a 16.9 cm de Diametro

Diametro16.9 <- subset(Diametro, Diametro <= 16.9)
Diametro16.9 

##### 31 observaciones

# Determinar cuantas observaciones son mayores a 18.5 metros de Altura

Altura18.5 <- subset(Altura, Altura > 18.5)
Altura18.5

##### 2 observaciones

# Visualización de datos --------------------------------------------------

## Altura, H.media y H.16

hist(Altura, main = "Histograma de Alturas",
     xlab = "Altura (metros)",
     ylab = "No. individuos",
     col = (heat.colors(7)),
     las = 1)

hist(H.media, main = "Altura <= a la media",
     xlab = "Altura (metros)",
     ylab = "No. individuos",
     col = "green",
     las = 1)     

hist(H.16, main = "Altura < a 16.5",
     xlab = "Altura (metros)",
     ylab = "No. individuos",
     col = "yellow",
     las = 1)    

## Vecinos, Vecinos.3, Vecinos.4

hist(Vecinos, main = "No. vecinos por arbolado",
     xlab = "No. Vecinos (radio 5m)",
     ylab = "No. Arboles",
     col = c(topo.colors(6)),
     las = 1)    

hist(Vecinos.3, main = "Arbolado <= a 3 vecinos",
     xlab = "No. Vecinos (radio 5m)",
     ylab = "No. Arboles",
     col = "red",
     las = 1)

hist(Vecinos.4, main = "Arbolado > a 4 vecinos",
     xlab = "No. Vecinos (radio 5m)",
     ylab = "No. Arboles",
     col = "brown",
     las = 1)

## Diametro, DBH.media, DBH.16

hist(Diametro, main = "Histograma de Diametros",
     xlab = "Diametro (cm)",
     ylab = "No. Individuos",
     col = c(colours(5)),
     las = 1)

hist(DBH.media, main = "DBH < a la media",
     xlab = "Diametro (cm)",
     ylab = "No. Individuos",
     col = "darkgreen",
     las = 1)

hist(DBH.16, main = "DBH > 16 cm",
     xlab = "Diametro (cm)",
     ylab = "No. Individuos",
     col = "darkred",
     las = 1)


# Estadísticas básicas ----------------------------------------------------

mean(Altura)
sd(Altura)
mean(H.media)
sd(H.media)
mean(H.16)
sd(H.16)

mean(Vecinos)
sd(Vecinos)
mean(Vecinos.3)
sd(Vecinos.3)
mean(Vecinos.4)
sd(Vecinos.4)

mean(Diametro)
sd(Diametro)
mean(DBH.media)
sd(DBH.media)
mean(DBH.16)
sd(DBH.16)

