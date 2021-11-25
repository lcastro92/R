#Ademas de ggplot vamos a usar la librería ggradar para crear radar charts
#y la libreria dplyr, que sirve para generar las operaciones de pipes.
#es decir enviar los outputs de una función como input de otra

#También se usará la librería scales, que tiene métodos para los títulos de ejes
#y leyendas

install.packages("ggplot2")
#Esta deprecado ggradar
#install.packages("ggradar")

#por lo que hay que instalarlo de otro lado
install.packages("devtools")
library(devtools)
devtools::install_github("ricardo-bion/ggradar", dependencies=TRUE)
###############################33

install.packages("IRkernel")

install.packages("dplyr")
install.packages("scales")

library(ggplot2)
library(ggradar)
library(dplyr)
library(scales)
library(IRkernel)

mtcars %>%
  
  #atribuimos los nombres de los registros a una variable
  tibble::rownames_to_column(var="group")%>%
  
  #asignamos cada nombre de auto a su variable
  mutate_each(funs(rescale), -group) %>%
  
  #seleccionamos la información 
  head(3) %>% select(1:10) -> mtcars_radar

#Esta función es para que no muestre los warnings
options(warn=-1)

#Esta función sirve para graficar el mtcars_radar 
ggradar(mtcars_radar)


