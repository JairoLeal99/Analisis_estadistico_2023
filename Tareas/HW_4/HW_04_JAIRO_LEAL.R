# ASIGNACIÓN 4: Boxplot e Histogramas

# Maestría en Ciencias Forestales UANL
# Alumno: Jairo Alberto Leal Gómez
# Matricula: 1723093


# Histogramas -------------------------------------------------------------


# Problema 1 --------------------------------------------------------------

# Considere el siguiente conjunto de datosx2con 1000 números al azar.

set.seed(9875)
size <- 1000
x2 <- round(runif(n = size, min = 0, max = 10), 2)
head(x2)

# Realiza dos histogramas con las siguientes características:

# 1.Incluir los siguientes intervalos de clase y personalizas con los puntos medios de cada intervalo de clase mids:

x <- hist(x2, breaks= c(0, 2, 4, 6, 8, 10), main = "Histograma", col = "blue",
     xlab = "Intervalo de clases", ylab = "Frecuencia", las =1,  ylim = c(0,250))

text(x$mids, x$counts, labels = x$counts, adj= c(0.5, -0.5))

# 2.Incluir los siguientes intervalos de clase y personalizas con los puntos medios de cada intervalo de clase mids.

c <- hist(x2, breaks= c(0, 1, 2, 4, 7, 10), freq = TRUE, main = "Histograma", col = "red4",
          xlab = "Intervalo de clases", ylab = "Frecuencia", las =1,  ylim = c(0,350))

text(c$mids, c$counts, labels = c$counts, adj= c(0.5, -0.5))


# Problema 2 --------------------------------------------------------------

# La siguiente figura 1 presenta cuatro histogramas (A, B, C, D).

#  a. ¿Cuál distribución parece estar sesgada a la derecha?

    #  Gráfica A

#  b. ¿Cuál distribución parece estar sesgada a la izquierda?

    #  Gráfica D

#  c. ¿Cuál distribución parece ser simétrica o en forma de “campana”?

    #  Gráfica C

#  d. ¿Cuál distribución parece ser bimodal?

    #  Gráfica B

#  e. ¿Cuál distribución parece mostrar una falta de intervalos?

    #  Gráfica D


# Problema 3 --------------------------------------------------------------

# En R puede importar los datos ya pre cargados en el Software siguiendo el comandodata(quakes).
# Los datos proporcionan la localidad, estaciones que detectaron el terremoto, profundidad en km y la escala de Richter (mag) para 1000 terremotos registrados en la isla de Fiji desde el año de 1964.

data(quakes)
head(quakes)

mags <-  hist(quakes$mag, xaxt = "n", 
              col = "#e6ac00", 
              xlab="Magnitud de los terremotos",
              ylab= "Frecuencias",
              main = "Terremotos en la isla Fiji 1964-actualidad",
              las = 1,
              ylim = c(0,250))

axis(1, mags$mids)

# Puede tomar en cuenta los siguientes datos que se almacenaron en el objeto mags. para determinarlas siguientes preguntas:

#  a. ¿Cómo describiría la forma de esta distribución de las magnitudes de los terremotos?

    #  La forma de la distribución esta sesgada hacia la derecha, lo cual indica que han ocurrido mas terremotos de menores magnitudes que fuertes

#  b. Mencione un intervalo donde ocurren tipicamente las magnitudes.

    #  El intervalo de 4.0 a 4.9 
    
        fivenum(quakes$mag)

#  c. Determine el rango de las magnitudes (Range = Max - Min).

        range(quakes$mag)

#  d. ¿Qué porcentaje de los terremotos ocurren con magnitud en la clase 5.3 (5.1 : 5.4)?
        
        clase1 <- subset(quakes, quakes$mag >= 5.1)
        clase2 <- subset(clase1, clase1$mag <= 5.4)
        head(clase2) # 113 observaciones
        
        (113*100)/1000
        
        # 11.3 % 
        
#  e. ¿Qué porcentaje de los terremotos tiene una magnitud igual o mayor a 5.0?

        clase3 <- subset(quakes, quakes$mag >=5.0)
        head(clase3) # 198 observaciones
        
        (198*100)/1000
        
        # 19.8 %

#  f. ¿Qué porcentaje de los terremotos tienen una magnitud menor o igual a 4.6?

        clase4 <- subset(quakes, quakes$mag <= 4.6)
        head(clase4) # 585 observaciones
        
        (585*100)/1000
        
        # 58.5 %

# Boxplots ----------------------------------------------------------------


# Problema 4 --------------------------------------------------------------

# ¿Qué porcentaje de las observaciones en una distribución se encuentran entre el primer y el tercercuartil?

        # b. 50%

# Problema 5 --------------------------------------------------------------

# La siguiente figura presenta tres gráficas para los diámetros de tres especies diferentes (C, F y H).
        
# a. ¿Cuál especie tiene el diámetro más pequeño?
          
        # La especie C
        
# b. ¿Cuál especie tiene el diámetro más grande?
          
        # La especie F  
          
# c. ¿Cuál especie tiene el diámetro mínimo más alto?
          
        # La especie F  
          
# d. ¿Cuál especie tiene la mediana de diámetro más pequeña?
          
        # La especie C  
          
# e. ¿Cuál especie tiene la mediana de diámetro mas grande?
          
        # Especie H  
          
# f. ¿Cuál especie tiene el menor rango de diámetro?
          
        # Especie F  
          
# g. ¿Cuál especie tiene el rango intercuantil (Q3-Q1) mas grande?
          
        # Especie C
          
# h. ¿Cuál especie tiene el rango intercuantil (Q3-Q1) mas pequeño?
          
        # Especie F
          
# i. ¿Cuál especie tiene una distribución simétrica?
          
        # Especie H
          
# j. ¿Cuál especie tiene el sesgo positivo (ver Fig. 2) más marcado ?
          
        # Especie F
        

# Problema 6 --------------------------------------------------------------

# Los siguientes datos muestran el número de incendios forestales ocurridos en cada semana en nuestros bosques de México. 
# Los datos son del 01. de enero al 04 de marzo del 2021 de acuerdo con el reporte de CONAFOR.
        
fires <- c(78, 44, 47, 105, 126, 181, 277, 210, 155)
head(fires)

#Determine lo siguiente

# 1. Valor mínimo
min(fires)

# 2. Valor máximo
max(fires)

# 3. Rango
range(fires)

# 4. Q1 (25 %)
quantile(fires, c(.25))

# 5. Q2 (50 %)
quantile(fires, c(.50))

# 6. Q3 (75 %)
quantile(fires, c(.75))

# 7. Media
mean(fires)

# 8. Varianza
var(fires)

# 9. Desviación estándar
sd(fires)

# 10. Realice un boxplot personalizado con los datos de los incendios.
boxplot(fires, main = "Incendios forestales en México
01 de enero a 04 de marzo de 2021",
xlab = "Número de incendios", las = 1, col = "firebrick", horizontal = TRUE)
        