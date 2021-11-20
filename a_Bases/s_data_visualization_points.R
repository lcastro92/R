#Para marcar puntos en un gráfico, usamos plot
plot(1,5)

#Para marcar dos puntos, debemos crear los intervalos

plot(c(1,10),c(4,33))

#para marcar más de dos puntos, ponemos los valores del eje x por un lado
#y los del eje y por el otro
plot(c(10,20,30,40,50),c(90,70,80,100,60))

#también podemos almacenarlos así
x<-c(10,20,30,40,50)
y<-c(90,70,80,100,60)
plot(x,y)

#también podemos marcar una secuencia de puntos
plot(1:20)

#para unirlos por una línea, debemos indicar en type
plot(1:20, type="l")

#podemos agregarle título al gráfico con el parámetro main
plot(1:20, type="l" ,main="Gráfico de prueba")

#Podemos agregarle nombre a los ejes con xlab y ylab
plot(1:20, type="l" ,main="Gráfico de prueba", xlab="Eje X",ylab="Eje y")

#con el parámetro col indicamos el color
plot(1:20, type="l" ,main="Gráfico de prueba", xlab="Eje X",ylab="Eje y", col="red")

#podemos indicar el tamaño de los puntos con cex
# el valor que le indicamos es el % del tamaño original
plot(1:20,main="Gráfico de prueba", xlab="Eje X",ylab="Eje y", col="red", cex=0.5) 

#Podemos indicar la forma del punto con pch, de acuerdo al número aparece una forma diferente
plot(1:20,pch=20, main="Gráfico de prueba", xlab="Eje X",ylab="Eje y", col="red", cex=1) 
plot(1:20,pch=15, main="Gráfico de prueba", xlab="Eje X",ylab="Eje y", col="red", cex=1) 
plot(1:20,pch=7, main="Gráfico de prueba", xlab="Eje X",ylab="Eje y", col="red", cex=1) 