df <- data.frame(
  modelo= c("Fiat Mobi","Peugeot 208","Toyota Etios"),
  precio_contado = c(2300000, 2800000, 2600000),
  precio_cuotas= c(2300000, 3100000,2700000)
)

df

#Para guardar un archivo excel, hay que usar el paquete
install.packages("xlsx")
library(xlsx)

write.xlsx(df,file="Prueba.xlsx",sheetName="Prueba",col.names=TRUE,row.names=FALSE)
