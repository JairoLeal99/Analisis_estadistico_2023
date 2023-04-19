# Laboratorio 5: Correlación 

# Maestría en Ciencias Forestales UANL
# Alumno: Jairo Alberto Leal Gómez
# Matricula: 1723093

# Ejercicio 1: El cuarteto de Anscombe

# El cuarteto de Anscombe comprende cuatro conjuntos de datos que tienen estadísticas descriptivas simples casi idénticas (Cuadro 4), pero tienen distribuciones muy diferentes y parecen muy diferentes cuando se grafica

anscombe

op = par(mfrow = c(2, 2), mar = c(4.5, 4, 1, 1))

plot(anscombe$x1, anscombe$y1, pch = 20)
plot(anscombe$x2, anscombe$y2, pch = 20)
plot(anscombe$x3, anscombe$y3, pch = 20)
plot(anscombe$x4, anscombe$y4, pch = 20)

par(op)

cor.test(anscombe$x1, anscombe$y1)
cor.test(anscombe$x2, anscombe$y2)
cor.test(anscombe$x3, anscombe$y3)
cor.test(anscombe$x4, anscombe$y4)

# ¿Alguna sorpresa? Como puedes ver, los cuatro pares de las variables xy tienen básicamente la misma correlación de0.816. Pero no todos tienen diagramas de dispersión en los que los puntos se agrupan alrededor de una línea.
