#Para importar datos de csv o excel usamos
install.packages("data.table") #para leer archivos csv
library(data.table)


fuente <- "https://archivos-datos.transporte.gob.ar/upload/Dat_Ab_Usos/dat-ab-usos-2021.csv"
dat <- fread(fuente,encoding = 'UTF-8') #le agregamos el encoding
View(dat)


