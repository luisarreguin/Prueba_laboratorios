# ======================================================================= #
#Procesamiento y visualización de datos espaciales en R
#Script del Laboratorio 03
#Autor: Ixchel Muñoz Gallegos                                        
#Fecha: 25/09/2025
# ======================================================================= #




### Sección 1: Genere vectores de 500 elementos cada uno con lo siguiente =====


# Vector 1:
#Creamos el vector 1 usando la función sample, en este caso se indicó que 
# los nombres tenian un nombre de ID, se solicito una n de 500 y dado que solo 
# tenemos 5 id's la función de replace tenía que ser true, para que pudiera
# completar el tamaño del vector.
vec_1 <- (sample (c("ID-1", "ID-2", "ID-3", "ID-4", "ID-5"), 500, replace = TRUE))

# Vector 2:
#Creamos el vector 2 con la misma función de sample, para una n de 500, 
# indicamos que debe estar llenado aleatoriamente con valores de 0 y 1
vec_2 <- (sample (c(0:1), 500, replace = TRUE))

# Vector 3:
#Función sample para creal el vector número 3, en este caso indicamos que los 
# valores van de 35 a 80.
vec_3 <- (sample(c(35:80), 500, replace = TRUE))

# Vector 4:
#De nuevo con la función sample creamos un vector con números aleatorios, para
# este caso le indicamos que el rango de valores es de 1 a 6, solicitamos una
# n de 500.
vec_4 <- (sample(c(1:6), 500, replace = TRUE))

# Vector 5:
#Con la función runif creamos un vector de 500 observaciones, le indicamos que 
# el valor mínimo debe ser 12.9 y el máximo 43.8. Para poder redonear estas cifras 
# usamos la función round, indicamos 1 para solo obtener un decimal.
vec_5 <- round((runif(500, min = 12.9, max = 43.8)) ,1)

# Vector 6:
#La función rnorm nos permite crear un vector con valores aleatorios que siguen una 
# distribución normal, para esto necesitamos indicar la media y la desviación estándar
# solicitamos una n de 500. Por último, queremos indicar que los valores generados 
# tengan solo un decimal, por lo que usamos la función round, solicitando 1.
vec_6 <- round(rnorm(500, mean = 12.9, sd = 5.1) ,1)




### Sección 2: Genere un data frame incorporando todos los valores anteriores=====


#Con los vectores generados anteriormente construimos nuestro data frame, 
# es importante que los vectores sean del mismo tamaño. Le indicamos el nombre
# que queremos que tenga cada vector que quedará dentro de las columnas 
# de nuestro data frame.
df_lab3 <- data.frame(id = vec_1, sexo = vec_2, edad = vec_3, edo_nac = vec_4, 
                        dist_unif = vec_5, dist_norm = vec_6)


#Ejecute la función head:
#Ejecutamos la función head para observar las primeras filas,
# por default r nos muestra las primeras 6
head(df_lab3)
#Podemos agregar el argumento con una coma para indicarle el número de filas
# que queremos ver
head(df_lab3, 20)

#Ejecute la función tail:
#Ejecutamos la función tail para observar las últimas filas,
# por default r nos muestra las últimas 6
tail(df_lab3)
#Pero podemos agregar el número de las últimas fila que queremos 
# observar, agregando un argumento
tail(df_lab3, 20)

#Ejecute la función summary:
#Ejecutamos la función summary y observamos la estadística descriptiva de las 
# diferentes columnas en el data frame
summary(df_lab3)




### Sección 3: Genere un data frame a partir de la información de la imagen =====


# Con base en el Laboratorio anterior, podemos agregar los vectores necesarios
# para el crear el data frame
#Se utilizó la función concatenar y se escriben comillas para generar como texto
# los quince elementos del vector. 
cve_geo <- c("002", "003", "004", "005", "006", "007", "008", "009", "010", "011",
             "012", "013", "014", "015", "016", "017")


#Vector Demarcación territorial:
#Con la función concatenar y las comillas (para indicar los elementos como texto) 
# se contruye el vector de demarcación territorial, con el nombre de alcaldia.
alcaldia <- c("Azcapotzalco", "Coyoacán", "Cuajimalpa de Morelos", 
              "Gustavo A. Madero", "Iztacalco", "Iztapalapa", "La Magdalena Contreras", 
              "Milpa Alta", "Álvaro Obregón", "Tláhuac", "Tlalpan", "Xochimilco",
              "Benito Juárez", "Cuauhtémoc", "Miguel Hidalgo", "Venustiano Carranza")


#Vector Habitantes 2020:
#Se generó el vector de habitantes 2020 con el nombre de población. Se usó 
# la función concatenar para construir el vector con los 15 elementos de 
# la información presentada; sin usar comillas dado que son números, 
# con la letra L al final para dar la instrucción de que son enteros.
poblacion <- c(432205L, 614447L, 217686L, 1173351L, 404695L, 1835486L,
              247622L, 152685L, 759137L, 392313L, 699928L, 442178L, 
              434153L, 545884L, 414470L, 443704L)


#Despues de crear los vectores procedemos a crear el data frame,
# empleamos la función data frame y le colocamos un nombre a cada una de 
# las columnas
df_cdmx <- data.frame(clave_demarcacion = cve_geo, alcaldia = alcaldia,
                       habitantes = poblacion)


