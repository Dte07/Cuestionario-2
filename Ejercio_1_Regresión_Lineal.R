#Caso de investigación: Regresión Lineal Simple
#Se desea saber si existe realación lineal entre el tiempo que tardan en llegar a la universidad  
#los estudiantes del CUC y la distancia en kilometros de cada residencia de los estudiantes en estudio.

#Para este caso se procede a entrevistar a 20 estudiantes a los cuales se les realiza
#una serie de preguntas, entre ellas:
#¿Cuál es la distancia en kilómetros que existe entre el lugar de su residencia y el CUC?
#¿Cuántos minutos tarda en trasladarse desde su residencia hasta el CUC?
#Información adicional:
#n = son el número de observaciones, en este caso son 20 estudiantes.
#Como la distancia es la que determina el tiempo tenemos que:
#las "x" son las observaciones de las distancias en kilometros de las residencias.  Variable independiente.
#las "y" son las observaciones de los minutos que tardan los estudiantes en trasladarse al CUC.  Variable dependiente.
#Se espera una correlación positiva significativa.

#Pasos: 
#1.Crear el data frame llamado datos con las 20 observaciones en "x" y "y".
datos<- data.frame(x=c(6,5,18,1,1,5,15,2,8,3,2,12,12,14,3,5,10,5,5,14), y=c(35,20,80,5,5,30,60,7,35,15,30,60,25,60,30,30,20,35,30,60))
datos

#2. Crear el modelo de regresion lineal con la función lm( ) y utilizando las variables "y" y "x" del data frame llamado datos.
modelo_estudianes <- lm(y ~ x, data = datos) #donde y depede de x
modelo_estudianes #intercepto donde cruza la línea de regresión en el eje Y
#me genera el coeficiente r=8.592 e indica que entre la distancia y el tiempo
#existe una relación lineal directa relativamente alta (cercana a 1) y que lo confirmaremos con el diagrama de dispersión
#donde se puede observar que los puntos que representan a los estudiantes se sitúan cerca de una línea recta
#donde las distancias pequeñas corresponden a tiempos pequeños y las distancias grandes a tiempos grandes.


summary(modelo_estudianes)


grafica1<-ggplot(modelo_estudianes, aes(x,y))
grafica1 + geom_point()
grafica1 + geom_point() + geom_smooth(method = "lm", colour="Orange")
geom_smooth()` using formula = 'y ~ x'




#Activar las librerias
library(ggplot2)
library(boot)
library(tidyverse)
library(car)
library(QuantPsyc)


















