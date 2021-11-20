#Los arrays pueden tener información multidimensional
#Una dimension

arr <- c(1:35)
arr

#dos dimensiones
multi_arr <- array(arr, dim=c(6,2,3))

multi_arr

#Acceder a posiciones
multi_arr[3,2, 3]

#Ver si existen valores en el array
17 %in% multi_arr

#Para ver la cantidad de filas y columnas
dim(multi_arr)

#Para ver la cantidad de valores
length(multi_arr)