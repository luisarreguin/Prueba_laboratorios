#=========================================================== #
#Script del lab 03
#Autor: Sandra RD
#Curso: "Procesamiento y visualización de datos en R"
#Fecha: 25 septiembre 2025
#=========================================================== #

### SECCION 1:  Genero vectores de 500 elementos cada uno con las siguientes cararcterísticas ###
# vector "vec_1" con la función sample que nos permite seleccionar/generar
# numeros aleatorios enteros o carateres. El tercer argumento indica que cada valor aleatorio puede tener duplicados#
vec_1 <-  sample (c("ID-1", "ID-2", "ID-3", "ID-4", "ID-5"), 500, replace = T)
#Genero el vector "vec_2" con la función sample#
vec_2 <- sample (0:1, 500, replace = T)
#Genero el vector "vec_3" con los siguientes valores aleatorios mayor de 35 y menor de 80#
vec_3 <- sample (36:79, size = 500, replace = T)
vec_3
#Genero vect_4 con los valores aleatorios: 1, 2, 3, 4, 5, 6 usando la función sample
vec_4 <- sample ( 1:6, 500, replace = T)
# Genero vec_5 con los valores aleatorios y redondeados a un decimal: mínimo 12.9, ma
# ximo 43.8 usando la función runif y round#
vec_5 <- round(runif(500, 12.9, 43.8), 1)
# Genero vec_6 con valores aleatorios redondeados a 1 decimal: media 12.9, DS=5.1
# usando la funcion rnorm y round#
vec_6 <- round(rnorm (500, 12.9, 5.1), 1)

### SECCIÓN 2: Genere un data frame incorporando todos los vectores anteriores###
# Nombre su data frame como df_lab3
#Al momento de crear el data frame nombre las columnas  como: id, sexo, edad, edo_nac, 
#dist_unif, dist_norm #
df_lab3 <- data.frame(vec_1, vec_2, vec_3, vec_4, vec_5, vec_6, row.names = NULL)
# voy a renombrar las columnas con la función colnames
colnames(df_lab3) <- c("id", "sexo", "edad", "edo_nac", "dist_unif", "dist_norm")
# Ejecuto las funciones head, tail, summary #
head(df_lab3)
tail(df_lab3)
summary(df_lab3)

### SECCIÓN 3: Generé un data frame a partir de la información de la imagen ##
demar <-  seq (2, 17)
cve_geo <- sprintf ("%03d", demar)
alcaldia <- c("Azcapotzalco", "Coyoacan", "Cuajimalpa de Morelos", "Gustavo A. Madero", "Iztacalco", "Iztapalapa", "La Magadaleno Contretas", "Milpa Alta", "Àlvaro Obregon", "Tláhuac", "Tlalpan",
 "Xochimilco", "Benito Juarez", "Cuauhtemoc", "Miguel Hidalgo", "Venustiano Carranza")
#Genero el vector habitantes 2020
# Genero el data frame lo voy a llamar df_monitaire
df_monitaire <- data.frame (cve_geo, alcaldia, poblacion, row.names = NULL)
head(df_monitaire, 16)
tail(df_monitaire, 16)
summary(df_monitaire)