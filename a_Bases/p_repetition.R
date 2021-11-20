#En R existen 2 tipos de bucles, el bucle while y el for.
#El bucle while se ejecutará mientras se cumpla cierta condición.
a <- 1

while (a<10){
    print(a)
    a <- a+1
}

#También se puede salir del bucle con break
b <- 1

while (b<10){
    print(b)
    b <- b+1
    if(b==5){
        break
    }
}

#Bucle for
for (i in 1:15){
    print (i)
}

autos <- list("Fiat","Volkswagen","Ford","Renault","Volvo")
for (i in autos){
    print (i)
}

#Se puede usar break para salir del bucle al cumplirse cierta condición
for (i in autos){
    if(i=="Ford"){
        break;
    }
    print (i)
}

#Se puede usar next para continuar ejecutando el bucle sin ninguna interrupción
for (i in autos){
    if(i=="Ford"){
        next;
    }
    print (i)
}