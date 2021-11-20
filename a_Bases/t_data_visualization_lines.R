#Funciona con plot, pero indicando type="l"
plot(10:20, type="l", col="red")

#para modificar el grosor de la linea, usamos el parámetro lwd
plot(10:20, type="l", col="red", lwd=2)

#para modificar el estilo de la linea, usamos el parámetro lty (va del 1 al 6)
plot(10:20, type="l", col="red", lwd=2, lty=1)
plot(10:20, type="l", col="red", lwd=2, lty=3)
plot(10:20, type="l", col="red", lwd=2, lty=4)

#Para mostrar 2 lineas, el primero deberá ser con plot y la segunda con lines
linea_uno <- c(2,3,4,5,6,7)
linea_dos <- c(3,5,7,9,11,13)

plot(linea_uno, type="l", col="blue")
plot(linea_dos,type="l", col="yellow")