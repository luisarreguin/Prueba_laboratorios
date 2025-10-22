# ======================================================================= #
#Procesamiento y visualización de datos espaciales en R
#Script del Laboratorio 02
#Autor: Ixchel Muñoz Gallegos                                        
#Fecha: 18/09/2025
# ======================================================================= #


### Sección 1: Genere vectores de 20 elementos cada uno =====

#Vector nombre: 
#Generar variable nombre con la función concatenar, usando comillas para 
# generar los nombres como texto, 20 elementos en total.
nombre <- c("Paty", "Dany", "Efain", "Ixchel", "Diana", "Alfredo", "Luis",
          "Nancy", "Eduardo", "Citlali", "Alejandro", "Elizabeth", "Andy",
          "Issac", "David", "Ana Mary", "Caro", "Pedro", "Abraham", "Gabriela")


#Vector edad:
#Generar vector edad con la función sample, que genera números aleatorios 
# (entre 24 y 38 años, en este caso), se solicitan 20 elementos y se indica 
# que puede haber números repetidos.
edad <- (sample (24:38, 20, replace = TRUE))

##### Maneja mejor los espacios entre las funciones no debe de ir el espacio
##### edad <- (sample(24:38, 20, replace = TRUE))


#Vector peso:
#Generar vector peso con la función runif, que genera números aleatorios 
# con decimales, (valor mínimo 55 y máximo 109.5, para este caso), se solicitan 
# 20 elementos. Se usa la función round para limitar el número de decimales 
# generados (1, para este caso).
peso <- round(runif(20, min = 55.0, max = 109.5) ,1)


#Vector altura: 
#Generar vector altura con la funcion runif, para generar números aleatorios 
# con decimales, se piden 20 elementos, (se asigna valor mínimo 1.52 y 
# máximo 1.91 metros, en este caso). La función round permite limitar el número 
# de decimales que se generan (2, para este vector).
altura <- round(runif(20, min = 1.52, max = 1.91) ,2)


#Vector sexo: 
#Generar vector sexo usando la función concatenar, se usan comillas para que 
# cada uno de los 20 elementos sea texto. No use la función sample para que 
# el vector de sexo coincidiera con el vector de nombres que se genero anteriormente.
sexo <- c("M", "M", "H", "M", "M", "H", "H", "M", "H", "M", "H", "M", "M",
          "H", "H", "M", "M", "H", "H", "M")


#Vector estado civil:
#Generar vector de estado civil a través de la función sample para que asigne 
# de manera aleatoria, uno de los tres valores posibles. Para que estos valores 
# sean números enteros, se coloca la letra L al final de cada uno. Se indica que 
# los valores se pueden repetir.
edo_civ <- sample(c(1L, 2L, 3L), 20, replace = TRUE)


#Vector estado de nacimiento:
#Con la función sample se genera el vector de estado de nacimiento, que permite
# asignar aleatoriamente uno de los tres valores posibles a cada uno de los 20 
# elementos en el vector. Se utiliza la función concatenar para introducir 
# como texto los tres Estados posibles. Los elementos de Estado se pueden repetir.
edo_nac <- sample(c("Tlaxcala", "Puebla", "Chiapas"), 20,  replace = TRUE)


#Vector Indice de Masa Corporal:
#A partir de los vectores construidos previamente se crea el vector de imc, con 
# la función concatenar. Se divide el vector de peso entre el vector 
# de altura(elevado al cuadrado). Se usa la función found para limitar a dos
# los decimales que se generan.
imc <- round(c(peso / (altura ^ 2)) ,2)


### Sección 2: Genere tres vectores a partir de la información presentada ===== 

#Vector Clave de la demarcación:
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
