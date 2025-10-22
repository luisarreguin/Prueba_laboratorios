# -------------------------------------------------------------------#
# Script: generacion_vectores
# L03_Citlali Peralta 
# Fecha: 25 de septiembre de 2025
# Curso: Procesamiento y visualizacion de datos espaciales en R
#=====================================================#

#limpio mi consola
rm(list=ls())

###Seccion 1-------------#
# Ejercicio 1 : vector 'vec_1' -----------------------------#
# Crear un vector de 500 elementos con valores aleatorios entre "ID-1", "ID-2", "ID-3", "ID-4", "ID-5"
# Usamos sample() con el argumento replace = TRUE para permitir que se repitan los valores.
# Ejemplo: aleatorios <- sample(25:40, 25, replace = TRUE) que viene en la pagina 

vec_1 <- sample(x = c("ID-1", "ID-2", "ID-3", "ID-4", "ID-5"), size = 500, replace = TRUE)

vec_1
 
# Ejercicio 2: vector 'vec_2' -----------------------------#
# Crear un vector de 500 elementos con valores aleatorios entre 0 y 1.
# Usamos sample() con el conjunto c(0, 1).

valores_binarios <- c(0, 1)
vec_2 <- sample(valores_binarios, size = 500, replace = TRUE)
vec_2

# Ejercicio 3:  vector 'vec_3' -----------------------------
# Crear un vector de 500 elementos con valores enteros aleatorios mayores de 35 y menores de 80.
#  El rango será de 36 a 79 ya que se pide mayor de 36 y menor de 80 .
# Usamos sample() con el rango 36:79.

vec_3 <- sample(36:79, size = 500, replace = TRUE)
vec_3

# Ejercicio 4: vector 'vec_4' -----------------------------#
# Crear un vector de 500 elementos con valores enteros entre 1 y 6 .
# Usamos sample() con el conjunto c(1, 2, 3, 4, 5, 6).

valores_dado <- c(1, 2, 3, 4, 5, 6)
vec_4 <- sample(valores_dado, size = 500, replace = TRUE)
#Para ver los primero 6 datos head
head(vec_4)
#Para ver los ultimos tail
tail(vec_4)

# Ejercicio 5: vector 'vec_5' -----------------------------
# Crear un vector de 500 valores aleatorios continuos entre 12.9 y 43.8, redondeados a 1 decimal.
# Usamos runif() para generar los números y round() para redondear.

vec_5 <- round(runif(500, min = 12.9, max = 43.8), 1)
vec_5

# Ejercicio 6: vector 'vec_6' -----------------------------
# Crear un vector de 500 valores aleatorios generados con  distribución normal de media 12.9 y desviación estándar 5.1.
#  Usamos rnorm() para simular valores normales y round() para redondear a 1 decimal.

vec_6 <- round(rnorm(500, mean = 12.9, sd = 5.1), 1)
vec_6

#------------------------------------------------------------------#
# seccion  2 Crear data frame 'df_lab3' ------------------------------------
#  Incorporar todos los vectores anteriores en un data frame.
#  Se renombran las columnas según la instrucción.

df_lab3 <- data.frame( id = vec_1, sexo = vec_2, edad = vec_3, edo_nac = vec_4, dist_unif = vec_5, dist_norm = vec_6)

# Ver las primeras y últimas filas
head(df_lab3)
tail(df_lab3)

# Resumen estadístico
summary(df_lab3)
#para verlo en una ventana
View(df_lab3)

#------------------------------------------------------------------#
# seccion  3 Crear data frame con los datos de la imagen' ------------------------------------
#Creamos los vectores

cve_geo <- c( "002", "003", "004", "005", "006", "007", "008", "009",  "010", "011", "012", "013", "014", "015", "016", "017")
cve_geo
alcaldia <- c("Azcapotzalco", "Coyoacán", "Cuajimalpa de Morelos", "Gustavo A. Madero", "Iztacalco", "Iztapalapa", "La Magdalena Contreras", "Milpa Alta", "Álvaro Obregón", "Tláhuac", "Tlalpan", "Xochimilco", "Benito Juárez", "Cuauhtémoc", "Miguel Hidalgo", "Venustiano Carranza")
alcaldia
poblacion <- c( 432205, 614447, 217686, 1173351, 404695, 1835486, 247622, 152685, 759137, 392313, 699928, 442178, 434153, 545884, 414470, 443704)
poblacion

#El df
df_cdmx <- data.frame(cve_geo = cve_geo, alcaldia = alcaldia, poblacion = poblacion)
View(df_cdmx)