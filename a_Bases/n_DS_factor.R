#Los Factors trabajan con variables categóricas
#Ejemplo: Variable Dias que solo puede almacenar lunes,martes, miércoles, etc.
#Usamos factor(c(())

frutas <- factor(c("Banana","Manzana","Limón","Frutilla","Manzana","Limón"))
frutas

#Se ordenan por orden alfabético
#Para ver los niveles
levels(frutas)

#Longitud del factor
length(frutas)

#Acceder a items
frutas[2]
frutas [4]



