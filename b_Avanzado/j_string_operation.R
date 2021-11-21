summary <- readLines("texto.txt",encoding="UTF-8")
summary

#Para ver la cantidad de caracteres del primer párrafo
nchar(summary[1])

#Pasar a mayúscula
toupper(summary[1])

#Pasar a minúscula
tolower(summary[1])

#para reemplazar valores
chartr(" ","-", summary[1]) #El primer parámetro es el valor a reemplazar

chartr("-"," ", summary[1])

#para separar en vectores
char_list <- strsplit(summary[1], " ")
char_list


#para hacer un vector de caracteres, tenemos que usar unlist
listado_palabras <- unlist(char_list)
listado_palabras

#Podemos ordenar las palabras con sort
ordenadas <- sort(listado_palabras)

#podemos concatenar las palabras con paste
paste(ordenadas, collapse = " ") #se van a concatenar con un espacio entre medio


#recortar palabras
recortada <- substr(summary[1], start = 4, stop= 50)
recortada

#sacar espacios de los bordes con
trimws(recortada)

#podemos recortar empezando del final
library(stringr)
str_sub(summary[1], -8,-1)
