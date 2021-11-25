#los box plots sirven para sumar la distribución de información
#numérica ordenada

#El primer cuartil es el punto de %25 de la información ordenada
#un cuarto  de los puntos son menores a este valor

#el 75% de los puntos son menores al valor del tercer cuartil
#el rango intercuartil es la diferencia entre el primero y el 3er cuartíl

#la mediana es el segundo cuartil

#el 50% de la información está debajo de la media 
#las lineas arriba y debajo (whiskers) indican los valores afuera del rango intercuartil
install.packages("ggplot2")
library(ggplot2)

install.packages("plotly")
library(plotly)

#para aprender sobre los box plot, vamos a usar numeros aleatorios de una
#distribución normal
set.seed(1234)


#creamos dos distribuciones normales
set_a <- rnorm(200, mean=1, sd=2)
set_b <- rnorm(200, mean=0, sd=1)

#creamos el data frame
df <- data.frame(label=factor(rep(c("A", "B"),each=200)),value=c(set_a, set_b))

#creamos el box plot
ggplot(df,aes(x=label,y=value))+geom_boxplot()

ggplotly()


#usando mtcars, el eje x tiene el numero de cilindro
#el eje y es mpg (miles per gallon)
qplot(factor(cyl),mpg,data=mtcars,geom="boxplot")

#usando ggplot
cars <- ggplot(mtcars, aes(factor(cyl),mpg))
cars + geom_boxplot()

  