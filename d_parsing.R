#Se pueden cambiar los tipos de datos numéricos con las siguientes funciones:
#as.numeric() para convertir a numeric
#as.integer()para convertir a entero
#as.complex()para convertir a complejo
#Ejemplos

num1<-99L #número entero
class(num1)

num2<-34.5 #número numeric
class(num2)

num3 <- 7i #numero complejo
class(num3)


nuevo_int <- as.integer(num2) #Pasa a integer
show(nuevo_int)
class(nuevo_int)

nuevo_num <- as.numeric(num1) #Pasa a numeric
show(nuevo_num)
class(nuevo_num)

nuevo_complex <- as.complex(num1) #pasa a complejo 
show(nuevo_complex)
class(nuevo_complex)