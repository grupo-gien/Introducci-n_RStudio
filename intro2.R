#--------------
# 1) Librerías requeridas
library(lattice)
library(ellipse)


# rnorm(n, media, DE)
pH <- abs(round(rnorm(100, 5.1, 2.1),3)) # 100 No. aleatorios de la variable pH
pH
O2 <- abs(round(rnorm(100, 5.1, 1.1),3)) # 100 No. aleatorios de la variable O2
O2
NO3 <- abs(round(rnorm(100, 0.4, 0.2),3)) # 100 No. aleatorios de la variable NO3
NO3
NO2 <- abs(round(rnorm(100, 0.4, 0.3),3)) # 100 No. aleatorios de la variable NO2
NO2
PO4 <- abs(round(rnorm(100, 0.2, 0.3),3)) # 100 No. aleatorios de la variable PO4
PO4
ambientales <- cbind(pH, O2, NO3, NO2, PO4)   # Fusión de las columnas
ambientales <- data.frame(ambientales)        # Data Frame - Matriz2
ambientales

# Guardar datos en archivo .csv (Excel)
write.csv2(ambientales,"datos.csv")   #write.csv: Guardar el archivo en *.csv
dir()   # Directorio de trabajo

# Cargar la base de datos a R, como "datos1"
datos1 = read.csv2("datos.csv",row.names=1)
str(datos1)       # Estructura de la base
summary(datos1)   # Resumen estadístico



#--------------
# 2) Figuras

x11()         # Panel gráfico
plot(datos1)  # Figura de pares
pairs(datos1,col=1)   # Figura de pares
hist(datos1$pH, xlab="Valores de pH", ylab="Frecuencia",      # Histograma
     cex.lab=1.5, main="",col="lightblue")
hist(sqrt(datos1$pH), xlab="Valores de pH",         # Histograma con transformación cuadrática
     ylab="Frecuencia",cex.lab=1.5, main="",
     col="bisque")
x11()
plotcorr(cor(sqrt(datos1)),col="bisque")

