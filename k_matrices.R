#Las matrices contienen items con tipos de datos similares.
#Para crear una matriz usamos matrix() que recibe un vector con todos los datos, y luego especificamos
#el número de columnas y filas

matriz <- matrix(c(1,2,3,4,5,6), nrow=3, ncol=2)
matriz

#Se puede acceder a posiciones de las matrices, pasando el numero de fila y columna entre corchetes, ejemplo
matriz[1,2]

#Podemos ver toda una fila cargando el primer valor dentro del corchete
matriz[1, ] #veo la fila 1

#podemos ver toda una columna, cargando el segundo valor dentro de un corchete
matriz[,2]

#podemos ver rangos de filas, o de columnas, con c()

matriz[c(1,2),]
matriz[,c(1,2)]

#Para agregar columnas, podemos usar cbind()
matriz <- cbind(matriz, c(8,9,7)) #le pasamos la matriz como primer
matriz                            # argumento y la columna como 2do.


#Para agregar filas, usamos rbind()
matriz<-rbind(matriz,c(8,9,1)) #Primer parámetro es la matriz y el segundo la fila
matriz

#Para remover filas agregamos - y el núemro de fila que queremos borrar 
# dentro de corchetes en la primer posición, ejemplo
matriz <- matriz[-1,] #remueve la fila -1
matriz 

#Para remover columnas agregamos - y el número de columna que queremos borrar 
# dentro de corchetes en la 2da posición, ejemplo
matriz <- matriz[,-2] #borra la 2da columna
matriz

#Se puede buscar si existe algún valor con %in% ejemplo:
7 %in% matriz


#Podemos ver la cantidad de filas/columnas de una matriz con dim()
dim(matriz)

#Podemos ver la longitud de la matriz
length(matriz)