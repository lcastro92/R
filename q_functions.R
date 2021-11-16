#Para crear funciones definidas por el usuario, primero pondremos
#El nombre de la función, y a esa variable le asignaremos lo que hará la función

saludar <- function(){
    print("Hola!!")
}

#El llamado a la función se hace con paréntesis
saludar()

#También se pueden pasar parámetros en las funciones

saludar_mejorado <- function(nombre){
    paste("Hola ",nombre,"!!")
}

 saludar_mejorado("Lucas")

#Para crear funciones con retorno, se puede hacer
multiplicacion<-function(a,b){
    return (a*b)
}

print(multiplicacion(2,3)) 
 