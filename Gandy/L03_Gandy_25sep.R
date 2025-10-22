# -------- LABORATORIO 03 --------
# Nombre: Gandy Dolores Maldonado
# Curso: Procesamiento y Visualización de Datos Espaciales en R
# Fecha: 2025-09-24
# --------------------------------

# 1. Vectores de 500 elementos
set.seed(123)   # Para reproducibilidad

# Vector 1: valores aleatorios entre ID-1 a ID-5
vec_1 <- sample(c("ID-1", "ID-2", "ID-3", "ID-4", "ID-5"), 500, replace = TRUE)

# Vector 2: valores aleatorios 0 o 1
vec_2 <- sample(c(0,1), 500, replace = TRUE)

# Vector 3: valores aleatorios entre 35 y 80
vec_3 <- sample(36:79, 500, replace = TRUE)

# Vector 4: valores aleatorios entre 1 y 6
vec_4 <- sample(1:6, 500, replace = TRUE)

# Vector 5: distribución uniforme entre 12.9 y 43.8 redondeada a 1 decimal
vec_5 <- round(runif(500, min = 12.9, max = 43.8), 1)

# Vector 6: distribución normal con media = 12.9 y sd = 5.1, redondeada a 1 decimal
vec_6 <- round(rnorm(500, mean = 12.9, sd = 5.1), 1)

# 2. Crear data frame con todos los vectores
df_lab3 <- data.frame(
  id = vec_1,
  sexo = vec_2,
  edad = vec_3,
  edo_nac = vec_4,
  dist_unif = vec_5,
  dist_norm = vec_6
)

# Visualizar el data frame
head(df_lab3)     # Primeras 6 filas
tail(df_lab3)     # Últimas 6 filas
summary(df_lab3)  # Resumen estadístico

#3. Crear data frame con información de la imagen
df_cdmx <- data.frame(
  cve_geo = c("002","003","004","005","006","007","008","009","010","011",
              "012","013","014","015","016","017"),
  alcaldia = c("Azcapotzalco","Coyoacán","Cuajimalpa de Morelos","Gustavo A. Madero",
               "Iztacalco","Iztapalapa","La Magdalena Contreras","Milpa Alta",
               "Álvaro Obregón","Tláhuac","Tlalpan","Xochimilco","Benito Juárez",
               "Cuauhtémoc","Miguel Hidalgo","Venustiano Carranza"),
  poblacion = c(432205,614447,217686,1173351,404695,1835486,247622,152685,
                759137,392313,699928,442178,434153,545884,414470,443704)
)

# Revisar el data frame
head(df_cdmx)
summary(df_cdmx)
