df <- data.frame(
  Name= c("DiCaprio","RedMayne","McConaughey","Day-Lewis","Bridges"),
  dateBirth = c(153360000, 379123200, -5011200,-400032000,777600000)
 
)

str(df)
#las fechas están en formato Unix
#para pasarlas a formato fecha
actores.cumple <- as POSIXct(df$dateBirth, origin="1970-01-01")


 View(df)
