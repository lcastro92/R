library(ggplot2)
#vamos a usar el data EuStockMarkets que muestra 4 paises europeos
View(EuStockMarkets)

#Primero transformamos el stock de información a dataframe
EuStockDf <- as.data.frame(EuStockMarkets)
View(EuStockDf)

#podemos ver las primeros 6 filas con head
head(EuStockDf)

#vamos a usar la columna Dax para formar la linea de puntos
ggplot(EuStockDf,aes(x=c(1:nrow(EuStockDf)),y=DAX))+geom_line() #hacemos una linea

#podemos cambiar el tamaño del ancho de la línea con geom_line
ggplot(EuStockDf,aes(x=c(1:nrow(EuStockDf)),y=DAX))+geom_line(size=1)

#podemos cambiar el nombre de los ejes
ggplot(EuStockDf,aes(x=c(1:nrow(EuStockDf)),y=DAX))+geom_line(size=1)+labs(x="Tiempo", y="Stocks")

#tambien los colores
ggplot(EuStockDf,aes(x=c(1:nrow(EuStockDf)),y=DAX))+geom_line(size=1, colour="blue")+labs(x="Tiempo", y="Stocks")

#podemos agregar más lineas agregando geom_lines
grafico <- ggplot() + geom_line(data=EuStockDf, aes(x=c(1:nrow(EuStockDf)),y=DAX),size=1.5, colour="light blue")+geom_line(data=EuStockDf, aes(x=c(1:nrow(EuStockDf)),y=SMI),size=1.5, colour="red")+labs(x="Time", y="Stocks")
print(grafico)


#podemos agregar las cuatro lineas agregando geom_lines
grafico <- ggplot() + geom_line(data=EuStockDf, aes(x=c(1:nrow(EuStockDf)),y=DAX),size=1.5, colour="light blue")+geom_line(data=EuStockDf, aes(x=c(1:nrow(EuStockDf)),y=SMI),size=1.5, colour="red")+labs(x="Time", y="Stocks")+geom_line(data=EuStockDf, aes(x=c(1:nrow(EuStockDf)),y=CAC),size=1.5, colour="green")+labs(x="Time", y="Stocks")+geom_line(data=EuStockDf, aes(x=c(1:nrow(EuStockDf)),y=FTSE),size=1.5, colour="purple")+labs(x="Time", y="Stocks")
print(grafico)


#podemos cambiar los titulos de los ejes con xlab y ylab, tambien el titulo con ggtitle
leyendas <- grafico+xlab("Dias")+ylab("Precio")+ggtitle("Eu Stocks")
print(leyendas)


