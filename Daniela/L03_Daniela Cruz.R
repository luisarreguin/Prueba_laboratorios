#==================================================================#
# Script de laboratorio 03
# Autor: Daniela Cruz
# Curso: "Procesamiento y visualización de datos en R"
# Fecha: 25 de septiembre de 2025
#=================================================================#

### Sección 1: Ejercicio vectores ====


# 1. Vector de nombre vec_1 con los siguientes valores aleatorios: ID-1, ID-2,ID-3, ID-4, ID-5

vec_1 <- sample(c("ID-1", "ID-2", "ID-3", "ID-4", "ID-5"), size = 500, replace = TRUE)

#Llamar resultado de la variable creada
vec_1 

# 2. Vector de nombre vec_2 con los siguientes valores aleatorios: 0, 1

vec_2 <- sample(c(0, 1), size = 500, replace = TRUE)

# Llamar resultado de la variable creada

vec_2

# 3. Vector de nombre vec_3 con los siguientes valores aleatorios: mayor de 35 y menor de 80

# Opción 1: Dame una muestra de 500 elementos que vayan de 36 a 79 (mayor de 35 y menor a 80)
vec_3 <- sample(36:79, size = 500, replace = TRUE) 

#Opción 2: Dame una muestra de 500 elementos de una secuencia de 35 a 80, pero que sean mayores a 35 y menores a 80
vec_3 <- sample(seq(35 < n < 80), size = 500, replace = TRUE)

# Llamar resultado de la variable creada
vec_3

# 4. Vector de nombre vec_4 con los siguientes valores aleatorios: 1, 2, 3, 4, 5,6 
vec_4 <- sample(c(1,2,3,4,5,6), size = 500, replace = TRUE)

# Llamar resultado de la variable creada
vec_4

# 5. Vector de nombre vec_5 con valores aleatorios y redondeados a 1 decimal: mínimo 12.9, máximo 43.8

# Genera una variable con una secuencia de 500 números del 12.9 al 43.8
vec_5 <- runif(500, min = 12.9, max = 43.8)

# Redondea la variable vec_5 a un digito 
round(vec_5, digits = 1)

# 6. Vector de nombre vec_6 con valores aleatorios y redondeados a 1 decimal: media 12.9, desviación estándar de 5.1 

#Genera una variable con una secuencia de 500 números
#con una media de 12.9 y una desviación de 5.1
vec_6 <- rnorm(500, mean = 12.9, sd = 5.1)

# Redondea la variable vec_6 a un digito 
round(vec_6, digits = 1)



### Sección 2: Ejercicio data frame ====
# Generar nuestra data frame con los vectores creados
df_lab3 <- data.frame(vec_1, vec_2, vec_3, vec_4, vec_5, vec_6)

# Nombra nuestras columnas con colnames: nombra las columnas de df_lab3 por estos nombres
colnames(df_lab3) <- c("id", "sexo", "edad", "edo_nac", "dist_unif", "dist_norm")

# Llama nuestra data frame
df_lab3

# Queremos tener los 6 primeros elementos de nuestro frame.
head(df_lab3)

# Queremos tener los últimos elementos de nuestra data frame.
tail(df_lab3)

# Queremos un breve resumen de los datos de nuestro data frame
summary(df_lab3)



### Sección 3: Ejercicio data frame ejemplo ====

# 1. Generar las variables que se requieren para el data frame

cve_geo <- c("002", "003", "004", "005", "006", "007", "008", "009", "010", "011", "012", "013", "014", "015", "016", "017")
alcaldia <- c("Azcapotzalco", "Coyoacán", "Cuajimalpa de Morelos", "Gustavo A. Madero", "Iztacalco", "Iztapalapa", "La Magdalena Contreras", 
"Milpa Alta", "Álvaro Obregón", "Tláhuac", "Tlalpan", "Xochimilco", "Benito Juárez", "Cuauhtémoc", "Miguel Hidalgo", "Venustiano Carranza")
poblacion <- c(432205L, 614447L, 217686L, 1173351L, 404695L, 1835486L, 247622L, 152685L, 759137L, 392313L, 699928L, 442178L, 434153L, 545884, 414470L, 443704L)

# 2. Generar el data frame con las variables que ya se tienen.
df_ejemplo <- data.frame(cve_geo, alcaldia, poblacion)
df_ejemplo
