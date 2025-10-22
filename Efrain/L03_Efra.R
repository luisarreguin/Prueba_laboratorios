L03_Efra
# =============================================== #
# Laboratorio 03 
# Autor: Efraín Flores 
# Curso: "Procesamiento y visualización de datos espaciales en R"
# Fecha: 25 Septiembre 2025 
#  =============================================== # 

### Primer inciso ===== 
#Genere vectores de 500 elementos cada uno, con las siguientes
#características:
#Vector de nombre vec_1 con los siguientes valores aleatorios: ID-1, ID-2,
#ID-3, ID-4, ID-5 (use la función sample( )). 
vec_1 <- sample(c("ID-1", "ID-2", "ID-3", "ID-4", "ID-5"), size = 500, replace = TRUE) 

#Vector de nombre vec_2 con los siguientes valores aleatorios: 0, 1 (use la
#función sample( )).
set.seed(101)  
vec_2 <- sample(c(0, 1), size = 500, replace = TRUE)

#Vector de nombre vec_3 con los siguientes valores aleatorios: mayor de 35
#y menor de 80 (use la función sample( )).
set.seed(2025)  
vec_3 <- sample(36:79, size = 500, replace = TRUE)

#Vector de nombre vec_4 con los siguientes valores aleatorios: 1, 2, 3, 4, 5,
#6 (use la función sample( )).
set.seed(303) 
vec_4 <- sample(1:6, size = 500, replace = TRUE)

#Vector de nombre vec_5 con valores aleatorios y redondeados a 1 decimal:
#mínimo 12.9, máximo 43.8 (use la función runif( ) y round( )).
set.seed(404)
vec_5 <- round(runif(n = 500, min = 12.9, max = 43.8), 1)

#Vector de nombre vec_6 con valores aleatorios y redondeados a 1 decimal:
#media 12.9, desviación estándar de 5.1 (use la función rnorm( ) y round( )).
set.seed(505)  
vec_6 <- round(rnorm(n = 500, mean = 12.9, sd = 5.1), 1)

####Segundo inciso =====
#  Genere un data frame incorporando todos los vectores anteriores.
#Nombre a su data frame como df_lab3.
#Al momento de crear el data frame nombre a las columnas como: id, sexo,
#edad, edo_nac, dist_unif, dist_norm.
#Ejecute las funciones head( ) y tail( ), summary( ) a su data frame

#creamos el data frame atribuyendo los vectores previos

df_lab3 <- data.frame(
  id = vec_1,
  sexo = vec_2,
  edad = vec_3,
  edo_nac = vec_4,
  dist_unif = vec_5,
  dist_norm = vec_6
)
#Ejecutamos las funciones para visualizar el data frame 
head(df_lab3) #Observamos las primeras filas      

tail(df_lab3) #Observamos las últimas filas 

summary(df_lab3)

#### Tercer inciso =====
# Genere un data frame a partir de la información de la imagen siguiente:
#- Nombre a sus variables como
#- cve_geo: Clave de la demarcación (texto);
#- alcaldia: Demarcación territorial (texto);
#- poblacion: habitantes 2020 (entero)

# Para esto emplearemos los vectores generados en el Laboratorio 2
cve_geo <- c("002", "003", "004", "005", "006", "007", "008", "009", "010", "011", 
"012", "013", "014", "015", "016", "017")  #Clave de la demarcación

alcaldia <- c("Azcapotzalco", "Coyoacán", "Cuajimalpa de Morelos", "Gustavo A. Madero", "Iztacalco",
 "Iztapalapa", "La Magdalena Contreras", "Milpa Alta", "Álvaro Obregón", "Tláhuac", "Tlalpan", 
 "Xochimilco", "Benito Juárez", "Cuauhtémoc", "Miguel Hidalgo", 
 "Venustiano Carranza") #demarcación territorial (texto)
alcaldia

poblacion <- c(432205L, 614447L, 217686L, 1173351L, 404695L, 1835486L, 247622L, 152685L, 759137L, 
  392313L, 699928L, 442178L, 434153L, 545884L, 414470L, 443704L) # habitantes 2020 (entero) 
poblacion

# Generamos el data frame con los vectores de la tabla 
censo_2020 <- data.frame(
  clave_demarcacion_territorial = cve_geo,
  demarcacion_territorial = alcaldia,
  habitantes_2020 = poblacion
)
#Visualizamos la tabla 
summary(censo_2020)
