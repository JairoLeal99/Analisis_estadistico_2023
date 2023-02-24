# ASIGNACIÓN 3: Medidas de tendencia central

# Maestría en Ciencias Forestales UANL
# Alumno: Jairo Alberto Leal Gómez
# Matricula: 1723093

# Objetivo: Encuentre la media y la mediana a partir de diferentes representaciones
# de datos. Desarrolle el sentido numérico con la media y la mediana mediante la creación de 
# diferentes conjuntos de datos con una media o mediana determinada.


# Problema 1 --------------------------------------------------------------

# Considere los siguientes datos de x & y

        xi <- c(6, 4, 1, 3)
        xi
        
        yi <- c(1, 3, 4, 2)
        yi
        
        xiyi <- (xi * yi)
        xiyi
        
        xi2.yi0.5 <- ((xi^2)*(yi^0.5))
        xi2.yi0.5

# Aplicar las siguientes formulas para cada caso: las funciones sum y prod estan disponibles en R

        sum(xi)
        prod(xi)
        prod(xi2.yi0.5)
        
        sum(xiyi)
        prod(xiyi)


# Problema 2 --------------------------------------------------------------

# Se enuncian dos conjunto de datos que contienen la alturas de plántulas (cm) producidas en vivero. 
# El primero conjunto contiene solo 4 alturas y el segundo consta de 15.

        grupo.a <- c(80, 90, 90, 100)
        grupo.b <- c(60, 65, 65, 70, 70, 70, 75, 75, 80, 80, 80, 80, 80, 85, 100)

# a. Sin realizar ningún calculo, cual grupo piensas que tiene una altura media mayor.

## Grupo A tiene una media mayor; a simple vista tiene menos datos y el numero medio es 90, en cuanto al grupo b tiene mas datos y no existe algun valor de 90 

# b. Ahora calcule la media para cada clase (en R). ¿Cuál grupo tiene la media en altura más grande? Coincide con su primera impresión?

        mean(grupo.a)
        mean(grupo.b)

## El grupo A tiene una media de 90, mayor a la del grupo b que es de 75.66


# Problema 3 --------------------------------------------------------------

# José quiere tener un promedio de 80 en sus 4 exámenes. Cada examen se califica en una escala de 0 a 100. 
# Sus primeros tres exámenes son: 87, 72, 85. 
# ¿Qué necesita José para calificar en el4to. examen para tener una media de 80 en los 4 exámenes?

        # 80 = (87+72+85+x) / 4
        87+72+85
        
        # 80 * 4 = x + 244
        80*4
        
        # 320 = x + 244
        
        # 320 - 244 = x
        320-244
        
        # x = 76
        
        jose <- c(87, 72, 85, 76)
        
        mean(jose)

        ## Jose necesita mínimo un 76 para pasar la promediar  sus 4 exámenes a 80


# Problema 4 --------------------------------------------------------------

# El comité escolar de una pequeña ciudad quiere determinar el número promedio de niños por hogar en su ciudad. 
# Hay 50 hogares en la ciudad. Ellos dividen el total número de niños en la ciudad por 50 y determine que el número promedio de niños por hogar es 2.2. 
# ¿Cuál de los siguientes enunciados debe ser verdad?

    ## a) La mitad de los hogares de la ciudad tienen más de 2 hijos.

        ## b) Hay un total de 110 niños en la ciudad. <-- VERDADERO

        110/50

    ## c) El número más común de niños en un hogar es 2.2.
    ## d) Ninguna de las anteriores.

## SOLO EL ENCUNCIADO B ES VERDADERO


# Problema 5 --------------------------------------------------------------

# El número de semillas germinadas (Germinaciones) que se encontraron en las cajas petri se muestran en el siguiente cuadro.

        germinaciones <- c(5, 6 , 7, 8, 9)
        petri <- c(1, 3, 5, 3, 1)
        
        Germinacion <- data.frame(germinaciones, petri)
        Germinacion
        
        
        median(Germinacion$petri)
        median(Germinacion$germinaciones)



# a) ¿Qué tipo de gráfico podrías usar para visualizar estos datos?

        # Los datos se pueden visualizar en un gráfico de cajas o Boxplot 

        boxplot(Germinacion$germinaciones)

# b) ¿Cuál es la media? Muestre su trabajo o código, o explique cómo obtuvo su respuesta.

        # La media de Germinacion$petri es de 2.6 y la de Germinacion$germinaciones es de 7

        mean(Germinacion$petri)
        mean(Germinacion$germinaciones)

# c)¿Cuál es la mediana? Muestre su trabajo o código, o explique cómo obtuvo su respuesta.

        # La mediana para Germinacion$petri es de 3, y para Germinacion$germinaciones es de 7
        
        median(Germinacion$petri)
        median(Germinacion$germinaciones)

## Datos trabajados en clase
        
        germ.2 <- c(5, 6, 6, 6, 7, 7, 7, 7, 7, 8, 8, 8, 9)
        c.petri <- c(1:13)
        
        Germinacion.2 <- data.frame(c.petri, germ.2)
        Germinacion.2
        
        mean(Germinacion.2$germ.2)
        sum(Germinacion.2$germ.2)
        median(Germinacion.2$germ.2)
        
        boxplot(Germinacion.2$germ.2)

# Problema 6 --------------------------------------------------------------

# En este problema, exploramos el efecto sobre la media, la mediana y la moda de: 
# 1) sumar el mismo número a cada valor de datos, y 
# 2) de multiplicar cada valor de datos por el mismo número.

# Use el siguiente conjunto de datos

        set <- c(2, 2, 3, 6, 10)

# a) Calcule la moda, la mediana y la media.

        library(modeest)
        
        mfv(set)
        median(set)
        mean(set)

# b) Suma 5 a cada uno de los valores de los datos. Calcule la moda, la mediana y la media.

        set.5 <- (set+5)
        set.5
        
        mfv(set.5)
        median(set.5)
        mean(set.5)

# c) Compare los resultados de las partes (a) y (b). 
        
# En general, ¿cómo crees que la moda, la mediana y la media se ven afectadas cuando se agrega la misma constante a cada valor de datos en un conjunto?

        # Al comparar la estadística de la base set y set.5, se observa que estos valores aumentaron el valor de la constante de 5, por lo cual el comportameinto sigue siendo el mismo, solo que un valor mas alto

# d) Multiplique cada valor de los datos por 5. Calcule la moda, la mediana y la media.

        set.por5 <- (set*5)
        set.por5
        
        mfv(set.por5)
        median(set.por5)
        mean(set.por5)

# e)Compare los resultados de las partes (a) y (d). En general, ¿cómo crees que la moda,La mediana y la media se ven afectadas cuando cada valor de datos en un conjunto se multiplica por la misma constante?

        # Los valores se siguen comportando de la misma manera, pero en este caso hay un incremento de manera exponencial en los valores.



# Problema 7 --------------------------------------------------------------

# Para este problema, use los dígitos 0, 1, 2, 3, 4, 5, 6, 7, 8, 9.

# a) Enumere cinco dígitos que tengan una mediana de 7 y una media de 7 (se permiten repeticiones). 

        siete <- c(5, 6, 7, 8, 9)
        siete
        
        median(siete)
        mean(siete)

#### Encontrar un conjunto diferente de 5 dígitos que también funcionen.

        dos <- c(0, 1, 2, 3, 4)
        mean(dos)
        median(dos)

# b) Enumere cinco dígitos que tengan una mediana de 7 y una media inferior a 7 (se permiten repeticiones). 

        siete.2 <- c(1, 2, 7, 8, 9)
        mean(siete.2)
        median(siete.2)

#### Da la media de tus 5 dígitos. Encuentra un conjunto diferente de 5 dígitos que funcione.

        dos.2 <- c(0.2, 1.1, 2, 3, 3)
        mean(dos.2)
        median(dos.2)
