#Para un gráfico de torta, usamos pie
pie(c(15,20,35,50))

#podemos indicar desde qué ángulo queremos que nos muestre los valores
pie(c(15,20,35,50), init.angle=90)

#podemos indicar los valores de los labels con la etiqueta label
pie(c(15,20,35,50),label=c("Ford","Fiat","Renault","Volkswagen"), init.angle=90)

#Tambien hacerlo separado con variables
valores <- c(15,20,35,50)
titulos <- c("Ford", "Fiat", "Renault", "Volkswagen")
pie(valores,label=titulos,init.angle=90)

#podemos especificar los colores con el parámetro col
colores <- c("green","red","blue","yellow")
pie(valores,label=titulos,col=colores,init.angle=90)

#Agregamos el título del gráfico con main
pie(valores,label=titulos,main="ventas modelos", col=colores,init.angle=90)

#podemos explicar qué es cada valor con legend
legend("bottomright", titulos, fill=colores)