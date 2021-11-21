#Para poder utilizar recursos de las librerías, primero hay que importarla
library(datos)
library(tidyverse)

datos::paises#llamamos a la librería y hacemos mención de algo que contiene

paises_local <- datos::paises
paises_local

paises_local %>% View() #%>% nos sirve para direccionar el flujo de salida de los datos
#En este caso paises_local se lo mandamos a la función View() 
#View es una función de la librería tidyverse que sirve para darle una estructuración 
#para que sea más simple 

#Otra alternativa es:
View(paises_local)
