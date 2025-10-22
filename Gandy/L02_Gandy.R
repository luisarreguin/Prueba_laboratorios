# Laboratorio 02: Generación de vectores
# Curso: Procesamiento y Visualización de Datos Espaciales en R
# Alumna: Gandy Kerlin Dolores Maldonado
# Fecha: 17 de septiembre de 2025
# Objetivo: Consolidar habilidades básicas para generar y manipular vectores en R


# -------------------------------
# 1) Generación de vectores
# -------------------------------

# A. Vector nombre – nombres simples (sin apellidos)
nombre <- c("Ana", "Luis", "Carlos", "Sara", "Miguel", "Lucía", "Jorge", "Rosa", "Pablo", "Elena", "Diego", "Laura", "José", "María", "Iván", "Andrea", "Raúl", "Valeria", "Tomás", "Carmen")

# B. Vector edad – años cumplidos (usa sample())
set.seed(123)  # Para reproducibilidad
edad <- sample(18:65, 20, replace = TRUE)
#Fijar la semilla es como poner una receta específica para mezclar al azar. Si uso la misma receta (semilla), siempre obtengo la misma mezcla. El número 123 no afecta directamente los valores generados, solo fija un punto de inicio en el algoritmo de aleatorización.

# C. Vector peso – kilogramos con 1 decimal (runif() y round())
peso <- round(runif(20, min = 50, max = 100), 1)
# runif, genera n números aleatorios reales (decimales) entre un mínimo y un máximo usando una distribución uniforme. Se usa cuando queremos datos aleatorios continuos (no enteros), por ejemplo: peso, altura, temperatura, etc.
# round, redondea un número o vector a la cantidad de dígitos que indiques.

# D. Vector altura – metros con 2 decimales
altura <- round(runif(20, min = 1.50, max = 2.00), 2)

# E. Vector sexo – H (hombre) o M (mujer)
sexo <- sample(c("H", "M"), 20, replace = TRUE)

# F. Vector edo_civ – estado civil como enteros (1L, 2L, 3L)
edo_civ <- sample(c(1L, 2L, 3L), 20, replace = TRUE)
# replace=TRUE indica si puede repetir elementos.
# En R, los números pueden ser enteros (integer) o dobles (double). Si escribo 1, R lo interpreta como numeric (es decir, double). Si escribo 1L, le estoy diciendo: “esto es un entero exacto”.

# G. Vector edo_nac – estados de nacimiento (Tlaxcala, Puebla, Chiapas)
edo_nac <- sample(c("Tlaxcala", "Puebla", "Chiapas"), 20, replace = TRUE)

# H. Vector imc – cálculo de Índice de Masa Corporal
imc <- round(peso / (altura^2), 1)
head(imc)  # Para verificar y ver los primeros 6


# --------------------------------------------
# 2) Vectores con datos geográficos de la CDMX
# --------------------------------------------

# Clave de la demarcación (como texto)
cve_geo <- c("002", "003", "004", "005", "006", "007", "008", "009", "010", "011", "012", "013", "014", "015", "016", "017")

# Nombre de las alcaldías
alcaldia <- c("Azcapotzalco", "Coyoacán", "Cuajimalpa de Morelos", "Gustavo A. Madero", "Iztacalco", "Iztapalapa", "La Magdalena Contreras", "Milpa Alta", "Álvaro Obregón", "Tláhuac", "Tlalpan", "Xochimilco", "Benito Juárez","Cuauhtémoc", "Miguel Hidalgo", "Venustiano Carranza")

# Población 2020 (como enteros, sin comas)
poblacion <- c(432205, 614447, 217686, 1173351, 404695, 1835486, 247622, 152685, 759137, 392313, 699928, 442178, 434153, 545884, 414470, 443704)

length(cve_geo)     # debe ser 16
length(alcaldia)    # debe ser 16
length(poblacion)   # debe ser 16
# length es útil para verificar que todos tus vectores tienen la misma longitud, especialmente antes de crear un data.frame.

# Ver las primeras observaciones
head(cve_geo)
head(alcaldia)
head(poblacion)

# Juntar todo en un data.frame 
df_alcaldias <- data.frame(cve_geo, alcaldia, poblacion)
View(df_alcaldias)  

