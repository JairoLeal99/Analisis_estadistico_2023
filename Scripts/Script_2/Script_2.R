# Script 2

# Maestria en Ciencias Forestales UANL 
# Alumno: Jairo Alberto Leal Gómez
# Matricula: 1723093

# Aclaraciones de dudas


# PROFEPA -----------------------------------------------------------------

# Comando encoding = "latin1" para leer variables con acentos

prof_url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"
profepa <- read.csv(prof_url, header = TRUE, encoding = "latin1")
head(profepa)

# Listado de estados con mas de 16 inspecciones

fivenum(profepa$Inspección)

insp.16 <- subset(profepa, profepa$Inspección >= 16)
insp.16

insp.mayor <- subset(profepa, profepa$Inspección >= 2)
insp.mayor

# Listado de estados con mas operativos

fivenum(profepa$Operativo)

operativo.2 <- subset(profepa, profepa$Operativo >= 2)
operativo.2


# DATAFRAME ---------------------------------------------------------------

germinaciones <- c(5, 6 , 7, 8, 9)
petri <- c(1, 3, 5, 3, 1)

Germinacion <- data.frame(germinaciones, petri)
Germinacion

sum(Germinacion$germinaciones)
sum(Germinacion$petri)

germ.2 <- c(5, 6, 6, 6, 7, 7, 7, 7, 7, 8, 8, 8, 9)
c.petri <- c(1:13)

Germinacion.2 <- data.frame(c.petri, germ.2)
Germinacion.2

mean(Germinacion.2$germ.2)
