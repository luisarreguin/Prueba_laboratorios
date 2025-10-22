#=========================================================== #
#Script del lab 02
#Autor: Sandra RD
#Curso: "Procesamiento y visualización de datos en R"
#Fecha: 15 septiembre 2025
#=========================================================== #
#Gererar vectores de 20 elementos cada uno, cada vector deberar contener información relativa al tipo de vector que se específica
#voy a generar el vector  nombre
 nombre <- c("Abril", "Mario", "Luis", "Nayeli", "Laura", "Magda", "Gaby", "Héctor", "Alvaro", "Juan", "Adriana", "Alex", "Beto", "Victor", "Rodrigo", "Carlos", "David", "Patricia", "Sara", "Rafa")
#Genero el vector edad con la función sample con una secuencia de números del 30 al 40 con una longitud de 20 y con repeticiones
edad <- sample(30:40, 20, replace = TRUE)
#reviso como quedó edad
edad
#Generar el vector peso en Kg con un decimal, uso la función runif para tener números decimales y la función round para redondear los decimales a 1
peso <-  round(runif(20, 50.5, 65.7), 1)
# reviso el vector peso
peso
# creo el vector altura en metros con dos decimales usando la función run if y round
altura <- round(runif(20, 1.60, 1.80), 2)
altura
# Genero el vector sexo con la función sample con muestreo ponderado
sexo <- sample(c("M", "H"), size = 20, prob = c(0.4, 0.6), replace = TRUE)
# Genero el vector edo_civil
edo_civil <- sample(c(1L, 2L, 3L), size = 20, prob = c(0.4, 0.3, 0.3), replace = TRUE)
edo_civil
# Genero el vector Estado de Nacimiento
edo_nac <-  sample (c("Tlaxcala", "Puebla", "Chiapas"), size = 20, replace = TRUE)
edo_nac
# Genero el vector IMC dividiendo el peso/altura2, tuve que buscar la linea en internet porque no me daba con la opción sqrt
imc <-  round(c(peso / altura)/ altura,2)
# Genero el vector Clave de la demarcación pero primero creo un vector llamado demarcacion
demar <-  seq (1:17)
#Ahora genero el vector cve_geo que contiene 00 con la función sprintf
cve_geo <- sprintf("%03d", demar)
#Genero el vector Demarcación territorial lo voy a hacer manual porque no se como hacer que queden en orden
alcaldia <- c("Azcapotzalco", "Coyoacan", "Cuajimalpa de Morelos", "Gustavo A. Madero", "Iztacalco", "Iztapalapa", "La Magadaleno Contretas", "Milpa Alta", "Àlvaro Obregon", "Tláhuac", "Tlalpan",
 "Xochimilco", "Benito Juarez", "Cuauhtemoc", "Miguel Hidalgo", "Venustiano Carranza")
#Genero el vector habitantes 2020
poblacion <- c(432206L, 614447L, 217686L, 1173351L, 404695L, 1835486L, 247622L, 152685L, 759137L, 392313L, 699928L, 442178L, 434153L, 545884L, 414470L,
     443704L)