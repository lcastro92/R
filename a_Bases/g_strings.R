#Para asignar variables String se usan " " o ' '
palabra <- "Hola"
palabra2 <- 'adiós a todos'

show(palabra)
show(palabra2)

show(cat(palabra2))

#También se pueden cargar varias líneas a un String
frase<- "Hola esta es la primer oración.
Esta es la segunda.
Esta la tercera.
Fin."


#Esto va a devolver en una sola línea la frase completa, pero mostrando el caracter de salto de línea
frase
#Para verlo como se ingresó se debe usar cat

cat(frase)

#Para ver la longitud de un String podemos usar nchar()
nchar(frase)

#Podemos buscar porciones de Strings en otro String usando grepl(valorBuscado, String)
#Devuelve True o False

grepl("Fin", frase)

#Para concatenar Strings usamos pase(string1,string2)
str1 <- "Bienvenidos al lenguaje R"
str2 <- "Espero que se diviertan"
str3<- paste(str1,str2)
str3

#Existen caracteres especiales, como por ejemplo \ que sirve para hacer que se imprima si o si
#el caracter que viene después, ejemplo:

str2  <- "Lenguaje de \"Programación\" R" #Sirve para imprimir las comillas dobles 
cat(str2)

