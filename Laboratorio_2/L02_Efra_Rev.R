Laboratorio 02 # Revisar el script esta linea se te fue
# =============================================== #
# Laboratorio 02 
# Autor: Efraín Flores 
# Curso: "Procesamiento y visualización de datos espaciales en R"
# Fecha: 18 Septiembre 2025 
#  =============================================== # 

# Alternativa en misma linea de codigo: peso <- round(runif(20, min = 45, max = 100), 1)

### Primer inciso ===== 
#Instrucciones: Genere vectores de 20 elementos cada uno, cada vector deberá contener 
#información relativa al tipo de vector que se especifica. 

#creando vector: nombre 
nombre <- c(
  "ana", "luis", "sofia", "carlos", "elena",
  "miguel", "valeria", "jorge", "lucia", "pedro",
  "camila", "diego", "isabel", "raul", "mariana",
  "andres", "paula", "fernando", "laura", "ricardo"
)
nombre
#creamos vector edad empleando la función sample()
edad <- sample(18:65, size = 20, replace = TRUE)
edad

#creamos el vector peso en kilogramos, con un decimal, use la función runif( )
peso <- runif(n = 20, min = 50, max = 100) #la función runif genera valores con aleatorios 
# con distribución uniforme
peso <- round(peso, 1) #la función round ayuda a redonderar valores con un solo decimal 
peso

#creamos un vector de altura en metros, con dos decimales, use la función runif( )
altura <- runif(n = 20, min = 1.55, max = 1.85)
altura <- round(altura,2) #se agregan dos decimales 

#Vector sexo: H o M, opcional el uso de la función sample( );
sexo <- set.seed(789)  # permite mantener la reproducibilidad de los valores 
sexo <- sample(c("H", "M"), size = 20, replace = TRUE)
sexo

# No era necesario establecer el set.seed, en escencia es para que cuando lo ejecutes 
# nuevamente te salgan los mismos resultados

#Vector edo_civ: 1L, 2L o 3L (La letra L le indica a R que se trata de un
# número entero, si omite la letra L el número se interpreta como doble);
set.seed(321) 
edo_civ <- sample(c(1L, 2L, 3L), size = 20, replace = TRUE) 
edo_civ

#Vector edo_nac: Sólo de las entidades Tlaxcala, Puebla o Chiapas;
edo_nac <- sample(c("Chiapas", "Tlaxcala", "Puebla"), size = 20, replace = TRUE)
edo_nac

#Genere un nuevo vector denominado imc dividiendo el peso entre la
#altura elevada al cuadrado.
imc <- round(peso / (altura^2), 1)
imc

### Segundo inciso ===== 
#Genere tres vectores a partir de la información de la imagen siguiente:
#tomé la imagen convertida en texto para generar las columnas
#Nombre a sus vectores como
cve_geo <- c("002", "003", "004", "005", "006", "007", "008", "009", "010", "011", 
"012", "013", "014", "015", "016", "017")  #Clave de la demarcación

alcaldia <- c("Azcapotzalco", "Coyoacán", "Cuajimalpa de Morelos", "Gustavo A. Madero", "Iztacalco",
 "Iztapalapa", "La Magdalena Contreras", "Milpa Alta", "Álvaro Obregón", "Tláhuac", "Tlalpan", 
 "Xochimilco", "Benito Juárez", "Cuauhtémoc", "Miguel Hidalgo", 
 "Venustiano Carranza")#demarcación territorial (texto)
alcaldia

poblacion <- c(432205L, 614447L, 217686L, 1173351L, 404695L, 1835486L, 247622L, 152685L, 759137L, 
  392313L, 699928L, 442178L, 434153L, 545884L, 414470L, 443704L) # habitantes 2020 (entero) 
poblacion

