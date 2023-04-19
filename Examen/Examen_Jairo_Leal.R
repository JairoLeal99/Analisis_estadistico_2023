# EXAMEN PRACTICO MFC

# Análisis estadístico

# Alumno: Jairo Alberto Leal Gómez
# Matricula 1723093
# Fecha 31/03/2023

library(repmis)

suelo <- source_data("www.dropbox.com/s/3pi3huovq6qce42/obs.csv?dl=1")
suelo

suelo$zone <- as.factor(suelo$zone)
suelo$wrb1 <- as.factor(suelo$wrb1)


# Actividad 1 -------------------------------------------------------------

# Aplique la función summary a la variable de contenido de arcilla (clay) para los tres perfiles y conteste lo siguiente:

summary(suelo$Clay1)
summary(suelo$Clay2)
summary(suelo$Clay5)

# P1 ¿Cual es la tendencia del contenido promedio de arcilla (clay) con respecto a la profundidad?

    # RESPUESTA: La tendencia es que a mayor profundidad, mayor contenido promedio de arcilla.


# Actividad 2 -------------------------------------------------------------

# Gráficar la distribución del primer perfil Clay1 con la función de stem-and-leaf

stem(suelo$Clay1)

# P2 ¿Los datos de contenido de arcilla siguen una distribución simétrica o con sesgo?

    # RESPUESTA: tienen una distribución con sesgo hacia la derecha, existen mayor datos a la izquierda y menos a la derecha


# Actividad 3 -------------------------------------------------------------

# Gráficar mediante un boxplot para el primer perfil Clay1 de arcilla

boxplot(suelo$Clay1, main= "Suelo (0-10 cm)",
        ylab= "Profundidad", las = 1, col = "red")

# P3 ¿Existe evidencia de outliers?

    # RESPUESTA: Si existe evidencia de outliers

# En caso de existir

# P4 ¿Puede identificar cuales observaciones son mediante una simple restricción de datos

suelo1 <- subset(suelo, suelo$Clay1 <= "63")

boxplot(suelo1$Clay1, main= "Suelo (0-10 cm)",
        ylab= "Profundidad", las = 1, col = "red")

    # RESPUIESTA: Si, abriendo la base de datos y ordenando de mayor a menor la variable, se puede observar que el valor de 67 en delante son valores anormales u outliers


# Actividad 4 -------------------------------------------------------------

# Determine la media de la variable Clay1

mean(suelo$Clay1)

# P5 ¿Estime si el contenido de Arcilla promedio en los suelos tropicales de 30% es significativamente diferente a la media observada en el campo experimental?

t.test(suelo$Clay1, mu=30)

    # RESPUESTA: De acuerdo con el valor de p, que es mayor a 0.05, nos indica que NO hay diferencias significativas entre la media observada y la teórica



# Actividad 5 -------------------------------------------------------------

# La primera pregunta del investigador es saber si existe una relación entre el contenido de arcilla en los tres perfiles.

# P6 ¿Existe una relación positiva, negativa o para nada relacionado, entre los perfiles superior e inferior con el contenido de arcilla?

cor.test(suelo$Clay1, suelo$Clay2)
cor.test(suelo$Clay1, suelo$Clay5)
cor.test(suelo$Clay2, suelo$Clay5)

    # RESPUESTA: de acuerdo con el valor de correlación existe una correlación positiva entre los tres perfiles (cercano al valor de 1)

# P7 ¿La correlación es estadisticamente significativa?

    # RESPUESTA: SI, las correlaciones entre los perfiles son estadisticamente significativas


# Actividad 6 -------------------------------------------------------------

# Después de cada análisis de correlación surge la siguiente pregunta:

# P8 ¿Es posible determinar una ecuación significativa para predecir el comportamiento del contenido de arcilla en el perfil inferior Clay5?

    # RESPUESTA: De acuerdo con la correlacion del problema anterior, que nos indico que hay correlación positiva y significativa entre clay1 2 y 5, por lo que si se puede determinar una ecuación significativa

# P9 ¿Cual es la ecuación final para predecir el comportamiento del contenido de arcilla en el perfil mas profundo (30-50 cm)?

plot(suelo$Clay5 ~ suelo$Clay1)

lm(suelo$Clay5 ~ suelo$Clay1)
regresion1 <- lm(suelo$Clay5 ~ suelo$Clay1)
regresion1

plot(suelo$Clay5 ~ suelo$Clay2)

lm(suelo$Clay5 ~ suelo$Clay2)
regresion2 <- lm(suelo$Clay5 ~ suelo$Clay2)
regresion2

    # RESPUESTA: la ecuación para el perfil 1 y 5 es y = 18.75856 + 0.82891(x)
    # RESPUESTA: la ecuación para el perfil 2 y 5 es y = 14.02520 + 0.83419(x)         

# P10 ¿Son ambos parámetros alfa y beca significativos?

summary(regresion1)
summary(regresion2)

    # RESPUESTA: los valores son estadisticamente significativos

# P11 ¿Cual es el porcentaje de varianza explicado por el método aplicado?

anova(regresion1)
summary(regresion1)
summary(regresion2)

    # RESPUESTA: cuando el valor de r cuadrada ajustada se refiere a que entre mas cercano sea a 1 el modelo es bueno para predecir datos.
    # RESPUESTA: en este caso, ambas regresiones indican porcentajes de varianza de 80.47 y 89.84 % de confiabilidad de los modelos, por lo cual los modelos son altamente confiables



# Actividad 7 -------------------------------------------------------------

# Con la base de datos se puede predecir que tan variable es el contenido de arcilla en la capa mas profunda entre las cuatro zonas identificadas (zone)

# P12 ¿Existe una forma de identificar la variación entre las cuatro zonas que se encuentra en el estudio?

    # RESPUESTA: si existe, con un análisis de varianza (ANOVA)

# P13 Realice una inspección visual del contenido de Clay5 y las cuatro zonas. ¿Existen indicios de que las cuatro zonas son diferentes en cuanto a contenido de arcilla?

boxplot(suelo$Clay5 ~ suelo$zone)

    # RESPUESTA: a simple vista, se puede interpretar que a excepecion de la zona 1 y 2, las demas zonas presentan diferencias entre si

# P14 ¿Observa alguna tendencia en los datos en las diferente zonas?

by(suelo$Clay5, suelo$zone, summary)

    # RESPUESTA: la tendencia observada es que a conforme va cambiando de zona, del 1 al 4, va disminuyendo el porcentaje de arcilla.



# Actividad 8 -------------------------------------------------------------

# Determine mediante un análisis de varianza con la variable de contenido de arcilla del perfil 30-50 y el factor o tratamiento de zonas

anova <- aov(suelo$Clay5 ~ suelo$zone)
summary(anova)

TukeyHSD(anova)

# P15 ¿Existen diferencias significativas entre el contenido de arcilla del perfil 30-50 cm y las zonas de estudio?

    # RESPUESTA: De acuerdo a la prueba de Tukey, nos indica que existen diferencias entre la comparación de las zonas, a excepción de una, la zona 1 y 2 no son estadisticamente diferentes.

# P16 En caso de existir diferencias ¿cuales zonas son diferentes estadisticamente entre si en el contenido de arcilla?

    # RESPUESTA: la zona 1 es diferente a la 3 y 4; la zona 2 es diferente a la 3 y 4; la zona 3 es diferente a la 4



