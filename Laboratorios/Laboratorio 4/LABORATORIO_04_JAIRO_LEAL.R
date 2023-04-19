# Laboratorio 4: Resumir datos gráficamente

# Maestria en Ciencias Forestales UANL
# Alumno: Jairo Alberto Leal Gómez
# Matricula: 1723093

# Objetivos de la práctica: Visualización de variables cuantitativas y Conozca la función hist().


# Importar datos csv ------------------------------------------------------

# Para este laboratorio vamos a considerar los datos del inventario con diferentes especies y posición de los individuos dentro de un rodal.

esp.url <- paste0("https://raw.githubusercontent.com/mgtagle/","PrincipiosEstadistica2021/main/cuadro1.csv")
inventario <- read.csv(esp.url)
head(inventario)

# El objetoinventarioes un conjunto de datos. Por lo general, después de importar un grupo dedatos en R, es posible que desee utilizar algunas funciones para inspeccionar sus propiedades y funciones y estructura básica:

# Mostrar la estructura general de los datos
str(inventario)

# Dimensiones (num filas y columnas)
dim(inventario)

# Nombre de las primeras cinco columnas
names(inventario[ , 1:5])

# Resumen estadistico basico de las columnas 3 a 5
summary(inventario[ , 3:5])

is.factor(inventario$Posicion)

inventario$Posicion <- factor(inventario$Posicion)
is.factor(inventario$Posicion)

summary(inventario[ , 3:5])

# Tablas de frecuencia ----------------------------------------------------

# Como mencionamos antes, una consideración importante tiene que ver con identificar el tipo devariables:cuantitativas vs cualitativas.
# Un ejemplo de variable cualitativa es “posición”. Esta variable contiene la posición de cada árboldentro del rodal. 
# Cuando se inspecciona una variable cualitativa, normalmente se incia calculandounatabla de frecuencia. 
# Una tabla de frecuencias muestra los recuentos de cada categoría. En R,tenemos la funcióntable()para obtener este tipo de tablas.

freq_position <- table(inventario$Posicion)
freq_position

# A menudo, es conveniente expresar las frecuencias como proporciones o porcentajes, también conocido como frecuencias relativas.

prop_position <- freq_position / sum(freq_position)
prop_position

# Si desea expresar las proporciones como porcentajes, multiplique prop_positionpor 100:

perc_position = 100 * prop_position
perc_position


# Gráficas barplot y pie --------------------------------------------------

#Habiendo obtenido las frecuencias y / o proporciones de las categorías de un variable cualitativa,podemos continuar nuestra exploración con algunas representaciones visuales. Hay dos gráficos más comunes que se utilizan para visualizar frecuencias:

    # Gráficas de barras (barplot)
    # Gráficas de pastel (pie)

# Para crear un gráfico de barras en R puede usar la funciónbarplot(). Esta función requiere unvector numérico o una tabla de frecuencias:

barplot(freq_position, las = 1, border = NA, cex.names = 0.7)

# El uso debarplot ()incluye los argumentoslas,borderycex.names:

    # las = 1: muestra las frecuencias perpendiculares al eje-y.
    # border = NA: elimina el borde negro alrededor de las barras.
    # cex.names = 0.7: reduce los tamaños de las etiquetas de categoría (para que todas que panen el gráfico).

# Gráfico circular o pie. El otro tipo común de gráfico para ver frecuencias es un gráfico circular. R proporciona la función pie()para producir estos gráficos:
 
pie(freq_position, col=topo.colors(4))

    # topo.colors es una paleta de colores pre establecidas en R y
    # el paréntesis indica el # de colores a usar


# Auto estudio -------------------------------------------------------------

# EJERCICIO: Completar una tabla de frecuencia y su representación gráfica (barplot y pie) para la variable Especie del conjunto de datosinventario

summary(inventario[3])

is.factor(inventario$Especie)

inventario$Especie <- factor(inventario$Especie)
is.factor(inventario$Especie)

summary(inventario[3])

freq_especie <- table(inventario$Especie)
freq_especie

barplot(freq_especie, las = 1, border = NA, cex.names = 0.7, col=rainbow(3))
pie(freq_especie, col = c("blue", "green3", "red2"))

# Representación de variables cuantitativas La mayoría de las variables del conjunto de datos Inventario son de naturaleza cuantitativa. Una posibilidad de inspeccionar visualmente esas variables es categorizarlas y luego usar un gráfico de barras o un gráfico circular. Otra posibilidad es utilizar gráficos específicamente para variables cuantitativas:
    # histogramas
    # boxplots o gráfica de cajas


# Histogramas -------------------------------------------------------------

# Un histograma es un tipo de gráfico que muestra la distribución de datos numéricos.

# Para producir histogramas, R proporciona la función hist(). La acción predeterminada de hist ()es para trazar un histograma, pero también puede almacenar su salida en un objeto R. Inspeccionar tal objeto le permitirá ver las diferentes componentes utilizados para trazar el histograma.

# Vamos a aplicar las función hist para la variable Diámetros del conjunto invenatrio y guardar la salida en un objeto llamada diam_hist.

diam_hist <- hist(inventario$Diametros, las = 1, col ='#ffe0b3')

# En un histograma, las barras son adyacentes (sin espacios entre barras). Es más, las barras no se pueden reorganizar en un orden diferente. A diferencia de los gráficos de barras, lo que importa en un histograma no es la longitud de las barras sino sus áreas. El área de una barra en un histograma debe ser igual a la proporción del intervalo de clase.
# Debido a que almacenamos la salida producida porhist()en el objeto diam_hist, podemos escribir este objeto para ver qué salida contiene:

diam_hist

    # breaks: puntos de ruptura (corte) de los intervalos de clase
    # counts: número de observaciones en cada categoría
    # density: densidad
    # mids: punto central del intervalo
    # xname: nombre del objeto (variable) que se esta graficando
    # equidist: ¿Los categorías tienen el mismo ancho?
    # attr: Tipo de clase

# La función hist()produce un histograma usando configuraciones predefinidas. Por defecto, la función podrá determinar el número de bins o intervalos de clase automáticamente. Como la myoríade los histogramas producidos por un software estadístico, los intervalos predeterminados son de igual tamaño. Además, los intervalos de clase están cerrados a la derecha (es decir, se incluye el punto final derecho). En el ejemplo anterior, esto significa que los intervalos son:

diam_hist$breaks

# Como siguiente ejemplo vamos a personalizar la gráfica, definiendo los valores centrales de cada categoría : 7, 9, 11, 13, 15, 17, 19, 21, 23. Estos valores se encuentran en los atributos del objeto que guardamos anteriormente diam_hist$mids, o para el ejemplo de abajo es h1$mids

h1 <-  hist(inventario$Diametros, xaxt = "n",
            breaks = c(6, 8, 10, 12, 14, 16, 18, 20, 22, 24),
            col = "#00cc99", 
            xlab="Diámetros (cm)",ylab= "Frecuencias",
            main = "Diametros (cm)",
            las = 1,
            ylim = c(0,14))

axis(1, h1$mids)


# Autoestudio 2 -----------------------------------------------------------

# Realizar el mismo procedimiento para la variable Altura.

alt_hist <- hist(inventario$Altura, las = 1, col = "yellow2")
alt_hist

alt_hist$breaks

alt1 <-  hist(inventario$Altura, xaxt = "n",
            breaks = c(6, 8, 10, 12, 14, 16, 18, 20, 22, 24),
            col = "blue", 
            xlab="Alturas (m)",ylab= "Frecuencias",
            main = "Alturas (m)",
            las = 1,
            ylim = c(0,12))

axis(1, alt1$mids)

