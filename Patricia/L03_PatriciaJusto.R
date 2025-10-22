# ============================================================================ #
# Script del laboratorio 03
# Autor: Patricia Stephany Justo Berrueta
# Curso: "Procesamiento y visualización de datos en R"
# Fecha: 23sep25
# ============================================================================ #

### Ejercicio 1  =====
# Genere vectores de 500 elementos cada uno, con las siguientes características: 

## Vector de nombre vec_1 con los siguientes valores aleatorios: ID-1, ID-2, ID-3, ID-4, ID-5 (use la función sample( ))
# Uso la función sample() y la función concatenar para indicar los valores (indicados entre comillas porque son valores mixtos)
vec_1 <- sample(c("ID-1", "ID-2", "ID-3", "ID-4", "ID-5"), 500, replace = TRUE)

## Vector de nombre vec_2 con los siguientes valores aleatorios: 0, 1 (use la función sample( ))
# Uso la función sample() y la función concatenar para indicar los valores (de forma directa porque son números 0 y 1)
vec_2 <- sample(c(0,1),500, replace = TRUE)

## Vector de nombre vec_3 con los siguientes valores aleatorios: mayor de 35 y menor de 80 (use la función sample( ))
# Uso la función sample() y la función concatenar para indicar los valores (uso el símbolo de dos puntos : para indicar el intervalo)
vec_3 <- sample(36:79, 500, replace = TRUE)

## Vector de nombre vec_4 con los siguientes valores aleatorios: 1, 2, 3, 4, 5, 6 (use la función sample( ))
# Uso la función sample() y la función concatenar para indicar los valores (uso el símbolo de dos puntos : para indicar el intervalo)
vec_4 <- sample(c(1:6),500,replace = TRUE)

## Vector de nombre vec_5 con valores aleatorios y redondeados a 1 decimal: mínimo 12.9, máximo 43.8 
## (use la función runif( ) y round( ))
# Uso la función runif() que permite indicar un intervalo de donde tomar los numeros y la función round() para redondear
vec_5 <- round(runif(500,min=12.9, max=43.8),1)

## Vector de nombre vec_6 con valores aleatorios y redondeados a 1 decimal: media 12.9, desviación estándar de 5.1 
## (use la función rnorm( ) y round( ))
# Uso la función rnorm para obtener valores bajo una distribución normal con una media Std Dev deseada
vec_6 <- round(rnorm(500,mean=12.9,sd=5.1),1)



### Ejercicio 2  =====
## Genere un data frame incorporando todos los vectores anteriores
## Al momento de crear el data frame nombre a las columnas como: 
## id, sexo, edad, edo_nac, dist_unif, dist_norm. 

# Para generar el data frame uso la función data.frame() e indico dentro los vectores previamente generados incluyendo
# el nombre de las columnas con un signo de =
df_lab3 <- data.frame(id = vec_1, sexo = vec_2,
  edad = vec_3, edo_nac = vec_4, dist_unif = vec_5,
  dist_norm = vec_6)

## Ejecute las funciones head( ) y tail( ), summary( ) a su data frame 
# La función head() muestra las primeras filas y columnas del dataframe
head(df_lab3)
#La función tail() muestra las últimas filas y columnas del dataframe
tail(df_lab3)
#Para ver un resumen de las características del dataframe se usa summary()
summary(df_lab3)



### Ejercicio 3  =====
## Genere un data frame a partir de la información de la imagen 

# Utilizo el código del laboratorio 02 para generar 
# los 3 vectores a partir de la imagen

#Vector con clave de la demarcación como texto
cve_geo <- c("002","003","004" ,"005","006","007","008","009","010","011","012","013","014", "015","016","017")

#Vector de la demarcación territorial como texto
alcaldia <- c("Azcapotzalco", "Coyoacan", "Cuajimalpa de Morelos", "Gustavo A. Madero", "Iztacalco", "Iztapalapa", "La Magdalena Contreras", "Milpa Alta", "Álvaro Obregón", "Tlahuac", "Tlalpan", "Xochimilco", "Benito Juárez", "Cuauhtemoc", "Miguel Hidalgo", "Venustiano Carranza")

#Vector de población con el numero de habitantes en 2020 como un entero
poblacion <- c(432205L,614447L,217686L,1173351L,404695L,1835486L,247622,152685L,759137L,392313L,699928L,442178L,434153L,545884L,414470L,443704L)

## Ahora si genero el dataframe con los 3 vectores antes creados
df_imagen <- data.frame(cve_geo, alcaldia, poblacion)

## Aplico las funciones head() tail() y summary() igual que el dataframe anterior para ver como quedó estructurado y su información
head(df_imagen)
tail(df_imagen)
summary(df_imagen)
