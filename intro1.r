#--------------
# 1) Operaciones aritm�ticas b�sicas

# Suma
5 + 7

# Resta
5 - 3

# Multiplicaci�n
5 * 7

# Divisi�n
5/3

# Exponentes
2^3

# Devolver el resto de la divisi�n de 5/3
5 %% 3

# Logaritmos y exponenciales :
x = 5/3
log2(x)     # Logar�tmo en base 2 de x
log10(x)    # Logar�tmo en base 10 de x
exp(x)      # Exponencial de x

# Funciones trigonom�tricas :
cos(x)    # Coseno de x
sin(x)    # Seno de x
tan(x)    # Tangente de x
acos(x/100)   # Arcoseno de x
asin(x/100)   # Arcseno de x
atan(x/100)   # Arcotangente de x
abs(x)    # Valor absoluto de x
sqrt(x)   # Ra�z cuadrada de x



#--------------
# 2) Asignaci�n de valores a objetos o a variables
sitios <- 2         # N�mero de sitios = 2
sitios = 2          # Otra forma
n.sitios <- "dos"   # N�mero de sitios como un caracter
dos.sitios <- TRUE  # Objeto l�gico

# Imprimir los valores asignados
sitios         # Imprime el n�mero de sitios
print(sitios)  # Otra forma
n.sitios       # Sitios asignados como caracter
dos.sitios     # Sentencia l�gica

# Identificar el tipo de asignaci�n
class(sitios)         # Tipolog�a de los sitios
class(n.sitios)       # Tipolog�a del n�mero de sitios
class(dos.sitios)     # Tipolog�a de la sentencia l�gica
is.numeric(sitios)    # Identificador: is.numeric(), is.character(), is.logical()
as.character(sitios)  # Cambiar: as.numeric(), as.character(), as.logical()

# Operaciones con las asignaciones
3 * sitios     # Multiplicar 3 por el n�mero de sitios

# �rea de un rect�ngulo
altura <- 20      # Altura del rect�ngulo
ancho <- 10       # Ancho
�rea <- altura*ancho   # C�lculo de �rea
�rea              # Imprimir el �rea
print(�rea)       # Otra forma de imprimir el �rea
ls()        # Permite visualizar a los objetos creados




#--------------
# 3) Vectores
sitios <- c(2, 3, 2, 3)   # Vector sitios
sitios    # Imprimir el vector

sitios <- c("dos", "tres", "dos", "dos")    # Vector como caracter
sitios

abundancia <- c(TRUE, FALSE, TRUE, TRUE)    # vector con elementos l�gicos
abundancia

sitios <- c(2, 3, 2, 3)   # Vector sitios
names(sitios) <- c("dos", "tres", "dos", "dos")   # Nombres de los elementos del vector sitiossitios
sitios <- c(dos= 2, tres= 3, dos= 2, dos= 2)      # Otra forma
sitios

length(sitios)    # Elementos del vector sitios
sitios[2]         # Segundo elemento del vector sitios
sitios[c(1,4)]    # Primer y cuarto elemento del vector
sitios [1:3]      # Tres primeros elementos del vector sitios
sitios [-1]       # Eliminar el primer elemento del vector

sitios[abundancia == TRUE]  # Abundancias con valor verdadero
sitios[sitios >= 2]  # Sitios con abundancias con valores mayor o igual a 2
sitios[sitios != 3]  # Sitios con abundancias diferentes a 3


#--------------
# 4) Operaciones con escalares y vectores

sitios.1 <- c(A = 2, B= 3, C= 2, D= 3)   # Vector sitios en muestreo 1
sitios.1
sitios.2 <- c(A = 4, B= 6, C= 4, D= 5)   # Vector sitios en muestreo 2
sitios.2

sitios * 3            # Producto de los sitios x 2
sitios.1 * sitios.2   # Producto de los sitios 1 y 2

sitios.1 <- c(2, 3, 2, 3)   # Vector sitios en muestreo 1
sitios.1
max(sitios.1)         # Valor m�ximo
min(sitios.1)         # Valor m�nimo
range(sitios.1)       # Rango de los datos del vector
sum(sitios.1)         # Suma de los datos del vector
prod(sitios.1)        # Producto de los datos del vector
mean(sitios.1)        # Promedio de los datos del vector       
sd(sitios.1)          # Desviaci�n est�ndar 
var(sitios.1)         # Varianza de los datos del vector 
sort(sitios.1)        # Organizar elementos de forma ascendente


#--------------
# 5) Matrices
Matriz <- matrix(1:15, nrow = 3, ncol = 5)    # nrow y nrow: N�mero de filas y columnas
Matriz

Matriz <- matrix(1:15, nrow = 5, ncol = 3)    # 1:15: Secuencia de valores de 1 a 15
Matriz

Matriz <- matrix(c(1:15),5,3, byrow= FALSE)   # 5,3: N�mero de filas y columnas
Matriz

# Primera opci�n para crear una Matriz
Matriz <- matrix(c(5, 6, 7, 8, 9,    # Elementos de la Matriz
                   2, 4, 5, 9, 8,
                   7, 3, 4, 8, 7),   # 15 elementos
                   5,3, byrow=F)     # 5 columnas y 3 filas 
Matriz

# Otra forma con las funciones cbind() o rbind() 
col1 <- c(5, 6, 7, 8, 9)        # Col 1 a 3, son las tres columnas de la Matriz
col2 <- c(2, 4, 5, 9, 8)
col3 <- c(7, 3, 4, 8, 7)
Matriz <- cbind(col1, col2, col3)           # Nombres de las columnas
rownames(Matriz) <- c("A","B","C","D","E")  # Nombres de las filasMatriz
Matriz

# Otra forma con comandos "colnames" y "dimnames"
Matriz <- matrix(
          data = c(5, 6, 7, 8, 9,    # Elementos de la Matriz
                   2, 4, 5, 9, 8,
                   7, 3, 4, 8, 7), 
          nrow = 5, byrow = FALSE,                   # nrow= columnas.
          dimnames = list(c("A","B","C","D","E"),    # dimnames= lista con vector fila y columna 
                     c("col1", "col2", "col3")))
Matriz

# Otra forma con comandos "colnames" y "dimnames"
nombres <- LETTERS[1:nrow(Matriz)]                  # Letras para las filas
colnames(Matriz) <- c("col1","col2","col3")         # Nombres de las columnas
dimnames(Matriz)=(list(nombres,colnames(Matriz)))   # Elaboraci�n de la Matriz
Matriz

# Algunos comandos para las matrices
t(Matriz)         # Transpuesta de la Matriz
ncol(Matriz)      # N�mero de columnas
nrow(Matriz)      # N�mero de filas
dim(Matriz)       # Dimensi�n: Filas y columnas
Matriz[2,]        # Ver la segunda fila (coma a la derecha del dato)
Matriz[,2]        # Ver la segunda columna (coma a la izquierda del dato)
Matriz[2:4,]      # Filas 2 a la 4
Matriz[c(2,4),]   # Filas 2 y 4
Matriz[,"col1"]   # Ver la columna 1
Matriz[3,"col1"]  # Seleccionar el valor de la 3a fila y columna 1
Matriz[3, 1]      # Otra forma para hacer lo anterior
Matriz[3, 1:3]    # Valores de la fila 3 y de las columnas 1:3
Matriz[-3,]       # Excluye a la 3a fila


#--------------
# 6) Operaciones matriciales

Matriz * 3              # Multiplicar por 3
log10(Matriz)           # Logaritmo en base 10
round(log10(Matriz),2)  # Redondear valores a 2 decimales
sqrt(Matriz)            # Ra�z cuadrada
rowSums(Matriz)         # Sumas de filas
colSums(Matriz)         # Sumas de columnas
colMeans(Matriz)        # Promedios de columnas
rowMeans(Matriz)        # Promedios de filas
apply(Matriz, 1, mean)  # Promedios de filas
apply(Matriz, 2, mean)  # Promedios de columnas
summary(Matriz)         # Resumen estad�stico de las columnas
var(Matriz)             # Matriz de varianza covarianza
cor(Matriz)             # Matriz de correlaci�n
solve(var(Matriz))      # Inversa de la Matriz de varianza covarianza
eigen(var(Matriz))      # Valores y vectores propios



#--------------
# 7) Crear base de datos - data frames
datos <- data.frame(
  "n" = 1:4,                                   # Consecutivo
  "indiv." = c("a", "b", "c", "d"),            # Individuos
  "sexo" = as.character(c("f","f","m","m")),   # Sexo
  "variable" = c(1.2, 3.4, 4.5, 5.6))          # Valor de la variable
datos           # Impresi�n de los datos
head(datos)     # Muestra los primeros datos
dim(datos)      # N�mero de filas y de columnas
length(datos)   # N�mero de columnas
names(datos)    # Nombres de las columnas
str(datos)      # Estructura de la base de datos
class(datos)    # Tipo de estructura
t(datos)        # Transpuesta de la base de datos
is.data.frame(datos)      # Verifica si datos es un data frame
is.data.frame(Matriz)     # Verifica si Matriz es un data frame
Matriz
Matriz1 <- as.data.frame(Matriz)  # Convertir la Matriz a un data frame
Matriz1



#--------------
# 8) Subconjuntos del data frame (datos)

datos
str(datos)      # Estructura de la base de datos
names(datos)    # Nombres de las columnas
datos$indiv.    # Elementos de la columna "indv."
datos[,'indiv.']    # Otra forma de hacer lo anterior
datos[,c(1, 3)]     # Columnas 1 y 3
datos[,-1]          # Excluir columna 1
datos$variable >= 4       # Datos con esta condici�n
datos[datos$variable >= 4, ]    # Filas con esta condici�n
datos[datos$variable >= 4, c("indiv.", "variable")]   # Variables con esa condici�n
subset(datos, variable >= 4)    # Individuos con esa condici�n

attach(datos)     # attach, permite llamar a las columnas solo dando sus nombres
datos[variable >= 4, ]    # Comando resumido
detach(datos)     # Para finalizar lo anterior


#--------------
# 9) Agregar columnas o filas al data frame (datos)

nivel <- factor(c("bajo","bajo","alto","alto"))   # Factor generado
nivel
datos
datos$grupo <- nivel            # nueva columna llamada "grupo"
datos
datos1 <- cbind(datos, group = nivel)  # otra forma de incluir la nueva columna
datos1


#--------------
# 10) Data frame con valores aleatrorios
Matriz            # Data frame para calculas sus promedios y desviaciones
media = colMeans(Matriz)    # Promedios de las columnas
media
de= sqrt(var(Matriz))       # Desviaciones est�ndar de las columnas
de
# Generador de n�meros aleatorios: rnorm(n, media, de)
# *Cada corrida es independiente de la anterior
col1 <- abs(round(rnorm(10, 7.0, 1.6),3))   # N�meros aleatorios de la columna 1
col1
col2 <- abs(round(rnorm(10, 5.6, 2.8),3))   # N�meros aleatorios de la columna 2
col2
col3 <- abs(round(rnorm(10, 5.8, 2.2),3))   # N�meros aleatorios de la columna 3
col3
Matriz2 <- cbind(col1, col2, col3)  # Fusi�n de las columnas
Matriz2
Matriz2 <- data.frame(Matriz2)      # Data Frame - Matriz2
Matriz2
str(Matriz2)          # Estrutura del data frame
x11()                 # Panel gr�fico adicional
plot(Matriz2)         # Figura de pares
plot(log10(Matriz2))  # Figura con transformaci�n logar�tmica
plot(sqrt(Matriz2))   # Figura con transformaci�n cuadr�tica



#--------------
# 11) Otra opci�n de realizar data frame con valores aleatorios
Matriz            # Dataframe para relacionar la numeraci�n de cada fila
# Generar 10 n�meros aleatorios
Matriz3= sample(                  # Muestra a realizar (sample)
         1:nrow(Matriz[1:5,]),    # Filas de la base de datos (1:5)
         size=10,                 # Valores aleatorios a generar
         replace=TRUE)            # Muestreo por reemplazamiento
Matriz3   # Los 10 n�meros, representan el orden en que aparece cada observaci�n
Matriz3<- Matriz[Matriz3, ]       # Data frame generado con 10 obs. aleatorias
Matriz3 <- data.frame(Matriz3)    # Data Frame - Matriz3
head(Matriz3)
str(Matriz3)          # Estructura de Matriz3
x11()                 # Panel gr�fico adicional
plot(Matriz3)         # Figura de pares
plot(log10(Matriz3))  # Figura con transformaci�n logar�tmica
plot(sqrt(Matriz3))   # Figura con transformaci�n cuadr�tica


