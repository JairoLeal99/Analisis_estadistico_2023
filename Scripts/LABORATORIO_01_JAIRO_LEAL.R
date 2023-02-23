# LABORATORIO 1: Empezar con R y RStudio
# Materia: Analisis Estadisticos

# Alumno: Jairo Alberto Leal Gómez 
# Matricula: 1723093

# PARTE 1 R y RStuido

# Primer contacto con la consola de R

# Situacion: considere las facturas mensuales de un estudiantes universitaria de la MCF: telefono celular $300, transporte $240, comestibles $1527, gimnasio $400, alquiler $1500, otros $1833. Calcule los gastos totales del estudiante.

# Gastos totales

300 + 240 + 1527 + 400 + 1500 + 1833

# Crear un objeto llamado "celular" para los gastos de facturacion de telefonia celular, despues inspeccciona el objeto creado.

celular <- 300
celular

# Crear un objeto para cada gasto del alumno

transporte <- 240
transporte

comestibles <- 1527
comestibles

gimnasio <- 400
gimnasio

alquiler <- 1500
alquiler

otros <- 1833
otros

# Ahora que tiene todas las variables, cree un objeto total con la suma de los gastos

gastos_totales <- celular + transporte + comestibles + gimnasio + alquiler + otros
gastos_totales

# Suponiendo que la estudiante tiene los mismos gastos todos los meses, ¿cuanto gastaria durante un semestre escolar? (suponga que el semestre implica cinco meses)

gastos_semestre <- (gastos_totales*5)
gastos_semestre

# ¿Cuanto gastaria el estudiante durante un año escolar? (suponga que el año academico es de 10 meses)

gastos_año_escolar <- (gastos_semestre*2)
gastos_año_escolar

# Autoevaluacion: Toma los objetos creados de la estudiantes (i.e variables)transporte,comestibles,gimnasio,alquileryotrosy escribamos dentro de la función de combinación c() para crear un vectorllamadogastos:

gastos <- c(celular, transporte, comestibles, gimnasio, alquiler, otros)
gastos

gastos_variables <- c('Otros', 'Comestibles', 'Alquiler', 'Gimnasio', 'Celular', 'Transporte')

barplot(gastos)

sort(gastos, decreasing = TRUE)

barplot(sort(gastos, decreasing = TRUE), names.arg = gastos_variables,
        xlab = "Gastos", ylab = "Costos", col = terrain.colors(6), main = "Gastos de alumno MCF", las = 1)
        
# PARTE 2

# Identifique el tipo de variable (cualitativa o cuantitativa) para la lista de preguntas de una encuestaaplicada a estudiantes universitarios en una clase de estadística:

# Nombre de estudiante <- cualitativa
# Fecha de nacimiento (p. Ej., 21/10/1995). <- cuantitativa
# Edad (en años). <- cuantitativa
# Dirección de casa (por ejemplo, 1234 Ave. Alamo). <- cualitativa
# Número de teléfono (por ejemplo, 510-123-4567). <- cualitativa
# Área principal de estudio. <- cuantitativa 
# Grado de año universitario: primer año, segundo año, tercer año, último año. <- cuantitativa
# Puntaje en la prueba de mitad de período (basado en 100 puntos posibles). <- cuantitativa
# Calificación general: A, B, C, D, F. <- cuantitativa
# Tiempo (en minutos) para completar la prueba final de MCF 2023. <- cuantitativa
# Numero de hermanos. <- cuantitativa


# Problema 2

# Elija un objeto (cualquier objeto, por ejemplo, animales, plantas, países, instituciones, etc.) y ob-tenga una lista de 14 variables: 7 cuantitativas y 7 categóricas.

# Institucion: CONAFOR

# Variables cuantitativas: 1) Número de Gerencias Nacionales, 2) Número de Promotorias estatales en México, 3) Número de Promotorias locales en México, 4) Empleados trabajando oficinas centrales, 5) Vehiculos oficiales operando, 6) Brigadas Oficiales contra Incendios, 7) Apoyos otorgados en 2022
# Variables cualitativas: 1) Grado de satistaccion laboral a nivel nacional, 2) Nivel academico de los empleados en oficinas centrales, 3) Puestos de trabajo, 4) Carreras profesionitas solicitadas para trabajar, 5) Marcas de Vehiculos Oficiales Operando, 6) Areas del sector forestal para solicitar apoyos, 7) Calidad de atencion publica en las Promotorias locales y estatales


# Problema 3:

# Considere una variable con valores numéricos que describen formas electrónicas de expresar opinio-nes personales: 1 = Twitter; 2 = correo electrónico; 3 = mensaje de texto; 4 = Facebook; 5 = blog.¿Es esta una variable cuantitativa o cualitativa? Explique.

# Es una variable cuantitativa, ya que enumera la cantidad de redes sociales que existen para expresar opiniones


# Problema 4:

# Para cada pregunta de investigación, (1) identifique a los individuos de interés (el grupo o grupos quese están estudiando), (2) identifique la (s) variable (s) (la característica sobre la que recopilaríamosdatos) y (3) determine si cada variable es categórico o cuantitativo.

# 1. ¿Cuál es la cantidad promedio de horas que los estudiantes de universidades públicas trabajan cada semana?

## 1) Estudiantes 2) Promedio de horas que trabajan 3) cuantitativo

# 2. ¿Qué proporción de todos los estudiantes universitarios de México están inscritos en una universidad pública?

## 1) Estudiantes inscrtios en una universidad publica, 2) Numero o proporcion de estudiantes, 3) cuantitativo

# 3. En los universidades públicas, ¿las estudiantes femeninas tienen un promedio de CENEVAL más alto que los estudiantes varones?

## 1) Estudiantes ambos sexos 2) Promedio de ceneval, 3) Categorica

# 4. ¿Es más probable que los atletas universitarios reciban asesoramiento académico que los atletas no universitarios?

## 1) Atletas, 2) Asesoramiento academico, 3) Categorico

# 5. Si reuniéramos datos para responder a las preguntas de la investigación anterior, ¿qué datos podrían analizarse mediante un histograma? ¿Cómo lo sabes?.

## En el eje x seria atletas con y sin asesoramiento academico, y en el eje de la y seria la cantidad de atletas.

