#En R una lista es una secuencia de Items que pueden ser de diferente tipo y se pueden reordenar
lista <- list("Buenos Aires", 2, 3.4)
lista

#Podemos acceder a cada item poniendo la posición del item que se desea ver entre corchetes
lista[2]

#Podemos cambiar el valor de una posición de la lista 
lista[2] <- 5
lista

#podemos ver la cantidad de items de la lista con length()
length(lista)

#para ver si en una lista hay un valor, debemos usar %in% ejemplo:

"Buenos Aires" %in% lista
9 %in% lista

#Podemos agregar valores a nuestra lista con append (de a 1 por vez)
append(lista, 3)
append (lista, "Lucas")

#Podemos especificar en qué posición queremos agregar,indicando después de qué indice ponerlo
append(lista, "María", after = 2) 

#Para remover valores de una lista, debemos recargar la lista con - la posición que no queremos, ejemplo:
lista <- lista[-1] #borra lo que hay en posición 1
lista

#para combinar listas podemos usar c(), ejemplo:
lista_uno <- list("Lucas", "Maria", 4.3, 7.8)
lista_dos <- list(3,4,5,6,8,9)

lista_combinada <- c(lista_uno, lista_dos)
lista_combinada

