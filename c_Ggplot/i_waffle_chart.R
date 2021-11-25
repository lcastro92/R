#Es similar al pie chart, pero permite ver con más detalle las proporciones

install.packages("ggplot2")
install.packages("waffle")

library(ggplot2)
library(waffle)


expensas <- c(
            `Salud ($43.212)`=43212,
              `Educación ($113.412)`=113412,
              `Transporte ($20.231)`=20231,
              `Entretenimiento ($28.145)`=28145
            
          )
#Le pasamos la lista de expensas, tenemos que dividirlas por una constante
#para escalar los valores y reducir la cantidad de cuadrados 

waffle(expensas/1235, rows=5,size=0.3,
       )

#Podemos cambiar los colores
waffle(expensas/1235, rows=5,size=0.3,
      colors=c("#c7d4b6","#a3aabd","#a0d0de","#97b5cf"))

#También cambiar el título
waffle(expensas/1235, rows=5,size=0.3,
       colors=c("#c7d4b6","#a3aabd","#a0d0de","#97b5cf"),
       title="Expensas anuales")

#También podemos especificar cuánto queremos que valga cada cuadrado

waffle(expensas/1235, rows=5,size=0.3,
       colors=c("#c7d4b6","#a3aabd","#a0d0de","#97b5cf"),
       title="Expensas anuales",
       xlab="1 square= $934")
