library(ggplot2)

#no existe la función de crear pie charts en esta librería
#por lo que primero hay que hacer una barra stacked

barp <- ggplot(mtcars, aes(x=1,y=sort(mtcars$carb),fill=sort(mtcars$carb)))+
  geom_bar(stat="identity")

print(barp)

#primero ponemos el nombre del dataframe, luego ponemos los valores de x e y
#especificamos cómo se va a rellenar
#identity sirve para agrupar la barra de la manera que queremos

#Para luego poder pasar esta barra a un pie chart debemos agregar la coordenada polar
barp <- barp + coord_polar(theta='y')
print(barp)

#para poder sacar los textos del gráfico, debemos hacer:
barp<-barp + theme(
  axis.line=element_blank(),
  axis.text.x=element_blank(),
  axis.text.y=element_blank(),
  axis.ticks = element_blank(),
  axis.title.y=element_blank()
)

print (barp)


#para poder sacar el fondo usamos panel.background
barp<-barp + theme(
  axis.line=element_blank(),
  axis.text.x=element_blank(),
  axis.text.y=element_blank(),
  axis.ticks = element_blank(),
  axis.title.y=element_blank(),
  panel.background = element_blank()
)

print (barp)

#para poder agregarle titulo a los ejes, debemos usar labs
barp<-barp + theme(
  axis.line=element_blank(),
  axis.text.x=element_blank(),
  axis.text.y=element_blank(),
  axis.ticks = element_blank(),
  axis.title.y=element_blank(),
  panel.background = element_blank())+
  labs(y="Carburadores")


print (barp)
