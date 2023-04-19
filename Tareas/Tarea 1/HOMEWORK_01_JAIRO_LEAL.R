# Asignación 1: Primer análisis en R

# Alumno: Jairo Alberto Leal Gómez 
# Matricula: 1723093

# Parte 2

# Problema 1: Un investigador realiza un inventario de la superficie reforestada por especie en la región centro me-diante los reporte emitidos por CONAFOR. El investigador encuentra que la superficie reforestadacon diferentes especies son las siguientes: la especie Pinus con 3140 has, Mezquite con 1453 has, Encinos con 450 has,Teka con 1200 has,Juiperos con 720 has.

# Toma los objetos creados del inventario (i.e variables)Pinus,Mexquite,Encinos,TekayJu-niperosy escribamos dentro de la función de combinación c() para crear un vector llamado superficie:

Pinus <- 3140
Pinus

Mezquite <- 1453
Mezquite

Encino <- 450
Encino

Teka <- 1200
Teka

Juniperus <- 720
Juniperus

superficie <- c(Pinus, Mezquite, Encino, Teka, Juniperus)
superficie

# Ahora, use la función gráfica barplot() para producir un diagrama de barras de la superficie por especie:

barplot(superficie)

# Descubra cómo utilizar sort() para ordenar los elementos en la variable superficie, con el finde organizar elementos en gastos en orden creciente.

sort(superficie, decreasing = TRUE)

# Descubra cómo utilizar sort() y barplot() para producir un gráfico de barras con barras enorden decreciente.
# Opcional: Mostrar los nombres de las variables debajo de cada una de las barras.

variables_superficie <- c('Pinus', 'Mezquite','Teka','Juniperus', 'Encino')

barplot(sort(superficie, decreasing = TRUE),
        names.arg = (variables_superficie), 
        main = "Superficie reforestada por especie (CONAFOR)",
        xlab = "Especie", ylab = "Has reforestadas", col = c(topo.colors(5) ) )

# Determine la media de la variable superficie

mean(superficie)

# Problema 2

# Un técnico examina 30 cajas de Petri en las que se colocaron para germinar seis semillas y despuésde cierto tiempo cuenta el número de semillas germinadas en cada una de ellas. Los valores de las30 observaciones son los siguientes:

## xi = 4, 1, 6, 2, 4, 2, 4, 2, 4, 6, 3, 5, 3, 2, 5, 4, 0, 5, 4, 2, 4, 5, 3, 5, 3, 5, 4, 3, 6, 2

# Ingresar los datos en una variable llamada germinación.

germinacion <- c(4, 1, 6, 2, 4, 2, 4, 2, 4, 6, 3, 5, 3, 2, 5, 4, 0, 5, 4, 2, 4, 5, 3, 5, 3, 5, 4, 3, 6, 2)
germinacion

# Determinar la media de germinación de las 30 cajas Petri.

mean(germinacion)

# Averigue como determinar la desviasión estándar standar deviationusando la función help (enla modalidad que desee).

sd(germinacion)

# Problema 3

# Un viverista mide la altura alcanzada por 25 plantas de Prosopisde un año de edad, obteniendolos siguientes valores:

# xi = 38, 14, 44, 11, 9, 21, 39, 28, 41, 4, 35, 24, 36, 12, 20, 31, 24, 25, 10, 21, 11, 36, 37, 20, 26

# Ingresar los datos en una variable llamada altura.

altura <- c(38, 14, 44, 11, 9, 21, 39, 28, 41, 4, 35, 24, 36, 12, 20, 31, 24, 25, 10, 21, 11, 36, 37, 20, 26)
altura

# Determinar la media de altura de las plántulas de Prosopis.

mean(altura)

# Determinar la desviación estánda de la variable altura.

sd(altura)


# Referencia 

#Marco Aurelio González Tagle. (2021, February). Cuadernillo de Ejercicios Principios de estadísticaIngeniero Forestal (Version 1). Zenodo. http://doi.org/10.5281/zenodo.4544150