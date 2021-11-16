#podemos usar data() para ver la lista de data precargada.
data()

#vamos a usar el data set que ya trae R, mtcars
mtcars

#podemos tener información sobre este data set poniendo un signo de pregunta
?mtcars

#Podemos ver la información del dataframe con dim
dim(mtcars)

#Podemos ver los nombres de los campos con names
names(mtcars)

#podemos ver el encabezado sde cada fila
rownames(mtcars)

#Podemos accedder a los campos con dataframe$nombredecampo
mtcars$mpg

#Podemos ordenar los valores con sort
sort(mtcars$mpg)

#Podemos obtener información de la tabla con summary
summary(mtcars)

#podemos obtener el maximo valor con max y el minimo con min
min(mtcars)
max(mtcars)

#para ver el máximo y mínimo de alguna variable usamos
which.min(mtcars$mpg)
which.max(mtcars$mpg)


#Calcular el promedio
mean(mtcars$mpg)

#calcular la mediana
median(mtcars$mpg)

#calcular la moda (el valor que aparece más veces)
names(sort(-table(mtcars$mpg)))[1] #(para eso primero debemos ordenar los datos)

#Percentiles
quantile(mtcars$mpg)