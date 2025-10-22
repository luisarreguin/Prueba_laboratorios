#======================================================#
#Scrip para el laboratorio 02
#L02_ CitlaliPeralta 
#Curso: Procesamiento y visualizacion de datos espaciales en R
#Fecha:18 de septiembre de 2025
#=====================================================#

# Bien 
# Recomendación:
# Manejar titulos, subtitulos
# Ejemplo:
# Título principal ======
## Subtítulo =======
### Sub-subtítulo (más específico) ======

# Seccion 1: Vectores=======
## 1) ejercicio : Vector "nombres" =====
nombres <- c("Ana", "Luis", "Carlos", "María", "José", "Juan", "Carmen","Pedro", "Sofía", "Diego", "Elena", "Arturo", "Rosa", "Jorge",
"Laura", "Fernando", "Paula", "Ricardo", "Isabel", "Mario")
#imprimir o llamar 
nombres

### 2) Ejercicio: Vector "edad"
# Usamos sample() para generar numeros aleatorios, size el largo de los valores y replace indica que si se pueden repetir, para tomar valores aleatorios en un rango
edad <- sample(18:80, size = 20, replace = TRUE)
#llamamos edad
edad

### 3) Ejercicio: Vector "peso" -------------------------------------------
#Peso en kilogramos con un decimal para cada individuo
# Usamos runif() para valores continuos y luego redondeamos round((runif(largo del vector, min= , max= )a quei va la cantidad de a la que quiero redondar  a 1 decimal.
# Rango elegido: entre 45 kg y 100 kg.
peso <- round(runif(20, min = 45, max = 100), 1)
peso

### 4) Ejercicio: Vector "altura" -----------------------------------------
# Objetivo: Generar la altura en metros con dos decimales para cada individuo.
#Usamos runif() y redondeamos a 2 decimales.
# Rango elegido: entre 1.45 m y 1.95 m

altura <- round(runif(20, min = 1.45, max = 1.95), 2)
altura

### 5) Ejercicio: Vector "sexo" -------------------------------------------
#Generar el sexo de cada individuo: 'H' (hombre) o 'M' (mujer).
# Usamos sample() 

sexo <- sample(c("H", "M"), size = 20, replace = TRUE)
sexo

### 6) Ejercicio: Vector "edo_civ" ----------------------------------------
#Crear un vector de estado civil codificado como 1L, 2L o 3L.
# La "L" indica que los números son enteros en R.
# 1 = Soltero(a), 2 = Casado(a), 3 = Otro.

edo_civ <- sample(c(1L, 2L, 3L), size = 20, replace = TRUE)
edo_civ

### 7) Ejercicio: Vector "edo_nac" ----------------------------------------
#Generar el estado de nacimiento elegido entre Tlaxcala, Puebla o Chiapas.
#Usamos sample() para asignar aleatoriamente una de las tres entidades con la mima estructura de los ejercicios pasados

edo_nac <- sample(c("Tlaxcala", "Puebla", "Chiapas"), size = 20, replace = TRUE)
edo_nac

### 8) Ejercicio: Vector "imc" (cálculo del índice de masa corporal) ----
#Calcular el IMC dividiendo el peso (kg) entre la altura (m) al cuadrado.
#Redondeamos con round (  , 2 ) el resultado a dos decimales para mayor legibilidad.

imc <- round(peso / (altura^2), 2)
imc


###Seccion 2: Trabajo con la tabla=======
### 1) Ejercicio: Vector "cve_geo" ----------------------------------
# Crear un vector de texto con las claves de las demarcaciones territoriales
##Cada clave se guarda como texto (character).

cve_geo <- c( "002", "003", "004", "005", "006", "007", "008", "009",  "010", "011", "012", "013", "014", "015", "016", "017")
cve_geo

### 2) Ejercicio: Vector "alcaldia" --------------------------------
# Crear un vector con los nombres de las demarcaciones.
#Se capturan como texto (character).

alcaldia <- c("Azcapotzalco", "Coyoacán", "Cuajimalpa de Morelos", "Gustavo A. Madero", "Iztacalco", "Iztapalapa", "La Magdalena Contreras", "Milpa Alta", "Álvaro Obregón", "Tláhuac", "Tlalpan", "Xochimilco", "Benito Juárez", "Cuauhtémoc", "Miguel Hidalgo", "Venustiano Carranza")
alcaldia

### 3) Ejercicio: Vector "poblacion"-------------------------------
#Crear un vector con la población 2020 de cada demarcación.
#Se guardan como enteros 

poblacion <- c( 432205, 614447, 217686, 1173351, 404695, 1835486, 247622, 152685, 759137, 392313, 699928, 442178, 434153, 545884, 414470, 443704)
poblacion

