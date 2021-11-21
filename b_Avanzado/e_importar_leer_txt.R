text<-readLines("Prueba.txt")
text

#podemos ver la cantidad de párrafos
length(text)

#la cantidad de caracteres
nchar(text)

#el tamaño del archivo en bytes
file.size("Prueba.txt")


#otra manera es con scan
texto2 <- scan("Prueba.txt","")
texto2
