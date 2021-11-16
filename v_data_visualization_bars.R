#Para trabajar con gráficos de barras utilizamos barplot
x <- c("Ford","Fiat","Volkswagen","Renault")
y <- c(20,50,14,60)

barplot(y, names.arg=x)

#Podemos cambiar los colores con el parámetro col
barplot(y, names.arg=x, col="green")
barplot(y, names.arg=x, col="yellow")
barplot(y, names.arg=x, col="red")

#También podemos jugar con los colores de cada barra
colores <- c("green", "yellow","red","blue")
barplot(y, names.arg=x, col=colores)

#Podemos trabajar con el relleno de las barras con el parámetro density
barplot(y, names.arg=x, col="red",density=3)
barplot(y, names.arg=x, col="red",density=17)
barplot(y, names.arg=x, col="red",density=8)

#Podemos trabajar con el ancho de las barra con el parámetro width
barplot(y, names.arg=x, col="red",density=8, width=c(3,2,1,6))

#para cambiar la orientación tenemos que usar el parámetro horiz pasándole el valor TRUE
barplot(y, names.arg=x, col="red",density=8, horiz=TRUE)

