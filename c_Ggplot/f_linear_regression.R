library(ggplot2)
#En dos dimensiones, la regresión lineal se trata de encontrar
#la linea que mejor encaje con la dispersión de los puntos


#Usando el data de mtcars hacemos el gráfico de puntos
ggplot(mtcars,aes(x=mpg, y=wt))+geom_point(shape=19)+geom_smooth(method = "lm",se=FALSE, color="red")

#Si agregamos una 3er dimensión
#Usando el data de mtcars hacemos el gráfico de puntos
cylFactor <- factor(mtcars$cyl)
ggplot(mtcars,aes(x=mpg, y=wt,color=cylFactor))+geom_point(shape=19)+geom_smooth(method = "lm",se=TRUE, color="red")

#Con se seteamos si queremos que nos muestre el intervalo de confianza o no
#El intervalo de confianza se construye de tal manera que el 95% de los puntos está dentro

#para modificar el texto de los labels, usamos xlab, ylab y ggtitle
ggplot(mtcars,aes(x=mpg, y=wt,color=cylFactor))+geom_point(shape=19)+geom_smooth(method = "lm",se=TRUE, color="red")+xlab("MIllas por galeón")+ylab("Peso")+labs(colour="Cilindros")+ggtitle("Regresión lineal")


#podemos agregar una curva gausseana poniendo el método auto en geom_smooth
ggplot(mtcars,aes(x=mpg, y=wt,color=cylFactor))+geom_point(shape=19)+geom_smooth(method = "auto",se=TRUE, color="red")+xlab("MIllas por galeón")+ylab("Peso")+labs(colour="Cilindros")+ggtitle("Regresión Gausseana")
