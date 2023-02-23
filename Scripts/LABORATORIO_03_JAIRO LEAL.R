# Laboratorio 3: Importar datos a R

# Maestría en Ciencias Forestales UANL 
# Alumno: Jairo Alberto Leal Gómez
# Matricula: 1723093

# Objetivos de la práctica

## Iniciar una sesión en Rstudio
## Realizar una descripción estadística de un conjunto de datos.
## Comprender el diseño del panel de RStudio.
## Conozca la sintaxis markdown


# Parte 1: Importar datos -------------------------------------------------

# Importar desde archivos csv

trees <- read.csv("C:/Users/jairo/OneDrive/Escritorio/MCF 2022-2023/PRIMER SEMESTRE/ANALISIS ESTADISTICO/DR. MARCO/HW_2/DBH_1.csv", header = TRUE)
head(trees)

# Ingresar datos directo en la consola

dbh <- c(16.5, 25.3, 22.1, 17.2, 16.1, 8.1, 34.3, 5.4, 5.7, 11.2, 24.1,
         14.5, 7.7, 15.6, 15.9, 10, 17.5, 20.5, 7.8, 27.3,
         9.7, 6.5, 23.4, 8.2, 28.5, 10.4, 11.5, 14.3, 17.2, 16.8)
head(dbh)
dbh

# Accesar datos de Internet

prof_url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"
profepa <- read.csv(prof_url, header = TRUE, encoding = "latin1")
head(profepa)

prof_url_2 <- paste0("http://www.profepa.gob.mx/innovaportal/","file/7635/1/accionesInspeccionfoanp.csv")
profepa2 <- read.csv(prof_url_2, header = TRUE, encoding = "latin1")
head(profepa2)

# Datos de URL seguras: Dropbox y Github

# link https://mran.microsoft.com/snapshot/2014-12-26/web/packages/repmis/repmis.pdf

#Dropbox

library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
conjunto

# Github

library(readr)
file <- paste0("https://raw.githubusercontent.com/mgtagle/",
               "202_Analisis_Estadistico_2020/master/cuadro1.csv")
inventario <- read.csv(file)
inventario


# Parte 2: Operaciones con la base de datos -------------------------------

mean(trees$dbh)
sd(trees$dbh)

# Selección mediante restricciones

# ¿Cuántosindividuos tiene un diámetro menor (<) a 10 cm?
# Indica la sumatoria de los individuos en el objeto tree con un dbh < a 10

sum(trees$dbh < 10)

# También es interesante saber cuales son los individuos que son inferiores al diámetro (dbh< 10 cm)
# Para esto, hacemos uso de la función which que no regresara cuales individuos son los que posen tal restricción

which(trees$dbh < 10)

# Excluir los diámetros que se encuentran en la parcela 2. El objeto resultante se puede grabar como trees.13. 
# El símbolo ! indica NO.

trees.13 <- trees[!(trees$parcela=="2"),]
trees.13

# Seleccion de una submuestra

# Una submuestra se puede obtener de cualquier base de datos que este disponible en R mediante la función subset[Crawley, 2007]. 
# Por ejemplo queremos obtener solo los diámetros iguales o menor esa 10 cm y deseamos guardarla en un objeto que se denominará trees.1.

trees.1 <- subset(trees, dbh <= 10)
head(trees.1)

mean(trees$dbh)
mean(trees.1$dbh)

# Parte 3. Representación gráfica -----------------------------------------

# Histogramas

# Representación parcial de los datos de mamíferos y su comportamiento durante el sueño.
# Datos tomados de la fuente OpenIntro: t.ly/Yr5I.

mamiferos <- read.csv("https://www.openintro.org/data/csv/mammals.csv")
head(mamiferos)

hist(mamiferos$total_sleep)
hist(mamiferos$total_sleep,
     xlim = c(0,20), ylim = c(0,14),
     main = "Total de horas suelo de las 39 especies",
     xlab = "Horas de sueño",
     ylab = "Frecuencia",
     las = 1,
     col = "blue")

# Barplot o grafico de barras

data("chickwts")
head(chickwts[c(1:2,42:43, 62:64), ])
  
# Primeramente tendremos que acomodar los datos en columnas (los datos originales estan acomodados
# en dos columnas (weight, feed, Peso y tipo de alimentación de los pollos.)
  
feeds <- table(chickwts$feed)
feeds 

# Los datos fueron acomodados en una tabla de frecuencias (Tipo de alimentación y la cantidad depollos alimentados por cada tipo).

barplot(feeds)

# Para ordenar de forma decreciente las barras podemos personalizar como sigue

barplot(feeds[order(feeds, decreasing = TRUE)])

barplot(feeds[order(feeds, decreasing = FALSE)],
        main = "Frecuencias por tipos de alimentacion",
        xlab = "Número de pollos",
        col = colorRampPalette(c('yellow', 'yellow4'))(6),
        horiz = 1,
        las = 1)

