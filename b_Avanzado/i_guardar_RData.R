df <- data.frame(
  modelo= c("Fiat Mobi","Peugeot 208","Toyota Etios"),
  precio_contado = c(2300000, 2800000, 2600000),
  precio_cuotas= c(2300000, 3100000,2700000)
)

df

save(df,file="datos.RData")
