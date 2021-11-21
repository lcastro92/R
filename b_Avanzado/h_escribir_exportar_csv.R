df <- data.frame(
  modelo= c("Fiat Mobi","Peugeot 208","Toyota Etios"),
  precio_contado = c(2300000, 2800000, 2600000),
  precio_cuotas= c(2300000, 3100000,2700000)
)

df

#Para guardar un csv
write.csv(df,file="pruebaCsv.csv", row.names=TRUE)

#para guardar evitando el nombre de las columnas, podemos hacer
write.table(df,file="pruebaCsv2.csv",row.names=FALSE,col.names=FALSE, sep=",")
