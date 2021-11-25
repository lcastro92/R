dir.create("D:/Cursos/R/Code/R/c_Ggplot/workcloud")
download.file("https://ibm.box.com/shared/static/cmid70rpa7xe4ocitcga1bve7r0kqnia.txt", destfile = "D:/Cursos/R/Code/R/c_Ggplot/workcloud/churchill_speeches.txt",quiet=TRUE)

#instalamos la libreria tm (text mining) que sirve para transformar el texto
#en un formato que puede manejar R
install.packages("tm")

#Instalamos la librería workcloud, que va a generar la visualización
install.packages("wordcloud")

#cargamos las librerias
library(tm)
library(wordcloud)

#cargamos la ruta de la carpeta
ruta <- "D:/Cursos/R/Code/R/c_Ggplot/workcloud/"
discurso <- Corpus(DirSource(ruta))

inspect (discurso) #con inspect podemos ver el texto contenido, y el formato (\n etc)

#################DATA CLEANING ####################################3

#Primero convertimos el texto a minúsculas
discurso <- tm_map(discurso,content_transformer(tolower))

#removemos los números
discurso <- tm_map(discurso, removeNumbers)

#removemos palabras comunes como the y we
discurso <- tm_map(discurso,removeWords, stopwords("english"))

#también podemos tener una lista de palabras que queremos que se borren y pasarlas como parámetro
palabras <- c("Otorrinonaringólogo","Mimamamemima")
discurso <- tm_map(discurso,removeWords,palabras)

#sacamos los signos de puntuación
discurso <- tm_map(discurso, removePunctuation)

#sacamos también los espacios en blanco
discurso <- tm_map(discurso, stripWhitespace)


################ fin data cleaning #######################3

#Ahora debemos crear una tabla Term (term document matrix)
#que es una tabla que contiene la frecuencia de palabras 

dtm <- TermDocumentMatrix(discurso)

#transformamos el resultado en una matriz
matriz <- as.matrix(dtm)

#ordenamos las palabras por frecuencia de la mayor a la menor
ordenado <- sort(rowSums(matriz), decreasing=TRUE)

#creamos un data frame con las palabras y sus frecuencias
df <- data.frame(palabra=names(ordenado),frecuencia=ordenado)

#mostramos los 10 primeros
head(df, 10)


#creamos el wordcloud
wordcloud(words=df$palabra,freq=df$frecuencia)

#podemos incrementar la cantidad de palabras cambiando la frecuencia
wordcloud(words=df$palabra,freq=df$frecuencia,min.freq=3)

#podemos limitar la cantidad de palabras a ver
wordcloud(words=df$palabra,freq=df$frecuencia,min.freq=1, max.words=50)

#Podemos agregar una paleta de colores
wordcloud(words=df$palabra,freq=df$frecuencia,min.freq=1, max.words=50,colors=brewer.pal(8,"Dark2"))
  
#También podemos agrupar en orden de frecuencia
wordcloud(words=df$palabra,freq=df$frecuencia,min.freq=1, max.words=50,colors=brewer.pal(8,"Dark2"),random.order = FALSE)
