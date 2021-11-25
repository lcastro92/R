library(ggplot2)

#vamos a usar mtcars
#mpg = miles per gallon
#wt = weight

View(mtcars)
#método nativo de R:
qplot(mpg, wt, data=mtcars)

#método GGPLOT
ggplot(mtcars, aes(x=mpg, y=wt)) +geom_point(shape=19)

#el valor asignado a shape modifica el relleno de los puntos
#1 = punto vacío
#19 = punto lleno

#Podemos agregar otra dimensión al gráfico, por ejemplo la cantidad
#de cilindros, la forma del punto mostrará qué cilindro es
mtcars$cylFactor <- factor(mtcars$cyl)
ggplot(mtcars, aes(x=mpg, y=wt, shape=cylFactor))+geom_point()

#podemos modificar el color de los puntos con el parámetro colour
mtcars$cylFactor <- factor(mtcars$cyl)
ggplot(mtcars, aes(x=mpg, y=wt, shape=cylFactor))+geom_point(colour="blue")


#También podemos modificar el color de acuerdo a la tercer variable

mtcars$cylFactor <- factor(mtcars$cyl)
ggplot(mtcars, aes(x=mpg, y=wt, color=cyl))+geom_point(shape=19)

#Podemos inferir que la cantidad de cilindros es una valor categórico
#así que usaremos el factor de cilindros
mtcars$cylFactor <- factor(mtcars$cyl)
ggplot(mtcars, aes(x=mpg, y=wt, color=cylFactor))+geom_point(shape=19)

#Podemos cambiar el nombre que queremos que aparezca para los colores

mtcars$cylFactor <- factor(mtcars$cyl)
ggplot(mtcars, aes(x=mpg, y=wt, color=cylFactor))+geom_point(shape=19)+labs(colour="Cilindros")

#podemos agregarle nombre a los ejes con xlab y ylab, tambien el titulo con ggtitle
mtcars$cylFactor <- factor(mtcars$cyl)
ggplot(mtcars, aes(x=mpg, y=wt, color=cylFactor))+geom_point(shape=19)+labs(colour="Cilindros")+xlab("Millas por galón")+ylab("Peso")+ggtitle("Gráfico de puntos")



