
# Programa-------------------------------------------------------------------------
# <<ejercicios ISLR2>>


# Descripcion: 
# Ejercicios libro ISLR2
# Autor: 
# Marlon Jaramillo Zapata <mjaramilloz@superservicios.gov.co>
# Version: 1.0
# [30.11.2021]


# librerias ---------------------------------------------------------------

require(ISLR2)
#install.packages("ISLR2")

library(ISLR2)

Auto <- read.table("Auto.data")
Auto


# 2.3 lab intro to R ------------------------------------------------------

# grafico contour() grafico 3D para representar datos de 3 dimensiones.

# creamos los vectores X y Y

X <- 1:10
Y <- X

# matriz que representa los valores Z de X y Y:

Z <- outer(X, Y, function(X, Y) cos(Y) / (1 + X^2))

# grafico contour()

contour(X, Y, Z)
contour(X, Y, Z, nlevels = 45, add = T)

fa <- (Z - t(Z)) / 2
contour(X, Y, fa , nlevels = 15)

# grafica a color o mapa de calor

image(X, Y, fa)

# usando persp() y sus argumentos para hacerlo en tres dimensiones
persp(X, Y, fa)
persp(X, Y, fa , theta = 30)
persp(X, Y, fa , theta = 30, phi = 20)
persp(X, Y, fa , theta = 30, phi = 70)
persp(X, Y, fa , theta = 30, phi = 40, 
      col = "lightblue", 
      shade = 0.75,
      ticktype = "detailed")
