#La manera más común de guardar información en R.
#Se usa para análisis de datos, están compuestos por listas de igual longitud de vectores
#Se puede ver en un formato de tabla
#Puede tener diferentes tipos

#Crear un data frame:
df <- data.frame(
    modelo= c("Fiat Mobi","Peugeot 208","Toyota Etios"),
    precio_contado = c(2300000, 2800000, 2600000),
    precio_cuotas= c(2300000, 3100000,2700000)
)

df

#Sumarizar la información del data frame
summary(df) 

#Acceso a datos en data frames
#Se puede acceder por número de vector
df[2]

#pero también se puede acceder por nombre del vector
df[["modelo"]]

#Agregar filas al df
df <- rbind(df, c("Renault Kwid", 2350000, 2750000))
df

#Agregar columna nueva
df <- cbind(df, Potencia=c(1, 1.4, 1.6, 1.2))
df

#Remover fila
df <- df [-c(1),]
df

#Remover columna
df <- df [,-c(4)]
df

#Para ver las dimensiones que maneja el data frame 
dim(df)

#para ver la longitud de cada dimension
nrow(df)

ncol(df)
#Tambien para ver el largo de cada columna
length(df)

#Concatenar data frames
df2 <- data.frame(
    modelo= c("Hilux","Ranger","S10"),
    precio_contado = c(5200000, 5500000, 4500000),
    precio_cuotas= c(5500000, 6150000,5010000)
)

df

df2

df3 <- rbind(df, df2)
df3