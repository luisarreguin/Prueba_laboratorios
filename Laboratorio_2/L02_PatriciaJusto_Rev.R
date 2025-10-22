# ============================================================================ #
# Script del laboratorio 02
# Autor: Patricia Stephany Justo Berrueta
# Curso: "Procesamiento y visualización de datos en R"
# Fecha: 16sep25
# ============================================================================ #

#### Maneja mejor los espacios
#### Ejemplo: 
#### edad <- sample(18:65, 20, replace = TRUE)
#### peso <- round(runif(20, min = 56.0, max = 90.0), 1)

### Sección 1 Vectores de 20 elementos =====
# Genero vector nombre, aqui los agrego nombres (texto) de forma manual 
nombre <- c("Sarai", "Samuel", "Gerardo", "Antonio", "Rebeca", "Jessica", "Ivonne", "Javier", "Raul", "Laura", "Jocelyne","Carlos", "Rafael", "Veronica", "Flor", "Erick", "Ximena", "Saul", "Leonardo", "Roberto" )

# Genero vector edad, con años cumplidos, en este caso el vector es numérico
# y para asignar la edad de forma aleatoria se usará la función sample() para que
# se asignen edades entre 18 y 65 años
edad <- sample(18:65,20,replace = TRUE)

#Genero vector peso que incluye información en Kg (número) con un decimal, se usa la 
# función runif() para indicar que los valores se tomen de un intervalo, en este caso
# entre 56 y 90kg  y la función round() se usa para indicar redondeo a un solo decimal
peso <- round(runif(20,min=56.0,max=90.0),1)

#Genero vector altura en metros (número), caso similar al anterior, se usa función runif() para
# asignar los valores de forma aleatoria a partir de un intervalo de 1.5 a 1.95 metros de altura
# y se usa la función round() para indicar redondeo a dos decimales
altura <- round(runif(20,min=1.5,max=1.95),2)

#Genero vector sexo con valores "H" y "M" (texto), por lo que en este caso no usaré la 
# función sample(); para que el sexo coincida con la lista de nombres se concatena de forma manual
sexo <- c("M","H","H","H","M","M","M","H", "H", "M", "M","H", "H", "M", "M", "H", "M", "H", "H", "H")

#Genero vector estado civil como un vector categórico donde se usaran tres categorías 1:soltero
# 2:casado 3:divorciado, para asignarlos de forma aleatoria se usará función sample y para asegurar
# que el número asignado es un entero se usará la letra L
edo_civ <- sample(c(1L, 2L, 3L), 20, replace = TRUE)

#Genero vector estado de nacimiento solo con las entidades Tlaxcala, Puebla, Chiapas
# y para asiganar de forma aleatoria igual uso función sample()
edo_nac <- sample(c("Tlaxcala", "Puebla","Chiapas"), 20, replace=TRUE)

#Genero vector IMC usando los datos del vector peso y altura creados de manera previa
IMC <- round((peso/(altura^2)),2)


### Sección 2 =====
# Generar 3 vectores a partir de la imagen

#Vector con clave de la demarcación como texto
cve_geo <- c("002","003","004" ,"005","006","007","008","009","010","011","012","013","014", "015","016","017")

#Vector de la demarcación territorial como texto
alcaldia <- c("Azcapotzalco", "Coyoacan", "Cuajimalpa de Morelos", "Gustavo A. Madero", "Iztacalco", "Iztapalapa", "La Magdalena Contreras", "Milpa Alta", "Álvaro Obregón", "Tlahuac", "Tlalpan", "Xochimilco", "Benito Juárez", "Cuauhtemoc", "Miguel Hidalgo", "Venustiano Carranza")

#Vector de población con el numero de habitantes en 2020 como un entero
poblacion <- c(432205L,614447L,217686L,1173351L,404695L,1835486L,247622,152685L,759137L,392313L,699928L,442178L,434153L,545884L,414470L,443704L)
