#instalar la libreria
install.packages("ggplot2")
#importarla
library(ggplot2)
#vamos a usar el dataframe que viene incorporado mtcars
View(mtcars)

#Recordar que existen dos tipos de datos, calidad y cantidad.
#por ejemplo en este Data Frame los datos de calidad son los nombres, 
#ya que setean diferencias entre los diferentes registros
#Otros pueden ser direcciones, colores
#el otro tipo de dato son los datos cuantitativos. Que se pueden
#medir y comparar

qplot (
    mtcars$cyl,
    geom="bar"
  
)

#Podemos cambiar el color de relleno con fill y los bordes
#con colour

qplot (
  mtcars$cyl,
  geom="bar",
  fill=I("blue"),
  colour=I("red")
  
)

#Podemos agregar el nombre de los ejes
#con xlab y ylab

qplot (
  mtcars$cyl,
  geom="bar",
  fill=I("blue"),
  colour=I("red"),
  xlab="Cilindros",
  ylab="Cant. Vehículos"
  
)

#También agregar títulos con main
qplot (
  mtcars$cyl,
  geom="bar",
  fill=I("blue"),
  colour=I("red"),
  xlab="Cilindros",
  ylab="Cant. Vehículos",
  main="Cant de vehículos por cilindro"
)

