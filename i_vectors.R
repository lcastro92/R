#Un vector alberga diferentes items del mismo tipo
#Para combinar varios items en un vector se usa c()

ciudades <- c("Buenos Aires","Santa Rosa","Rosario")

#Podemos ver qué almacena el vector
ciudades

#otro ejemplo
numeros <- c(1,54,43)
numeros

#Tambien podemos crear secuencias de numeros en un vector, 
enteros <- 10:20 #carga los enteros que hay entre 10 y 20 en la variable enteros

enteros

#También podemos cargar números decimales
decimales <- 3.5:10.5
decimales

#podemos ver la longitud de nuestro vector con la función length()
length(enteros)

#podemos ordenar el vector con la función sort
sort(ciudades)
sort(numeros)

#Podemos acceder a cada posición del vector con [] teniendo en cuenta que la primer posición es 1
ciudades[2]

#También podemos ver posiciones específicas de nuestro vector con la función c()
ciudades[c(1,3)] #nos va a traer la ciudad 1 y la ciudad 3

#Podemos excluir ítems que queremos que nos muestre con el signo -, por ejemplo para excluir el primero
ciudades[c(-1)]

#Para excluir al último
ciudades[c(-length(ciudades))]

#Para modificar valores en un vector, podemos asignar directamente un nuevo valor en la posición que querramos
ciudades[3] <- "La plata"
ciudades

#podemos repetir valores al momento de crear un vector con rep, ejemplo:
repetidos <- rep(c(1,3,5,7,9), each=3)
repetidos

#Tambien podemos especificar qué  valores queremos que se repitan tantas veces 
#(si o si poner la repetición de todos, sino da error), ejemplo
nuevo_repetidos <- rep(c(20,30,40,50), times=c(2,3,4,2))
nuevo_repetidos

#Otra manera de crear secuencias es con seq()
#hay que especificar desde donde, hasta donde y de cuanto en cuanto
nuevos_numeros <-seq(from = 1, to = 40, by = 3)
nuevos_numeros


 