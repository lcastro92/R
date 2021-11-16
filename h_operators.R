#Por ejemplo podemos analizar expresiones
expresion<- 4<2
#al mostrarla nos dará false
expresion

#Para guardar valores usamos <-
valor<-4

#Si necesitamos almacenar una variable global dentro de un scope, utilizamos <<-, ejemplo
fortest <- function() {
    mySum <- 0

    for (i in c(1, 2, 3)) {
        mySum <<- mySum + i
    }
    mySum
}

fortest()

#Operadores de comparación
a<- 10
b<- 5

#Mayor que
a>b

#Menor que
a < b

#Mayor o igual
a >= b

#Menor o igual
a <= b

#Igual que
a == b

#Diferente 
a != b

#Operador Lógico Y
TRUE & FALSE

#Operador Lógico O
TRUE | FALSE

#Operador lógico Not va delante del valor a negar
TRUE == !FALSE






