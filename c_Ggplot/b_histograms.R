library (ggplot2)

#Los histogramas se usan para ver la frecuencia de valores numéricos

qplot(
    mtcars$hp,
    geom="histogram"
)

#Para suavizar el histograma, se puede modificar la variable
#binwidth
qplot(
  mtcars$hp,
  geom="histogram",
  binwidth=25,
)

#podemos diferenciar los bordes de cada bin
#con colour
qplot(
  mtcars$hp,
  geom="histogram",
  binwidth=25,
  colour=I("red")
)

#También se puede especificar el rango del eje X a visualizar
qplot(
  mtcars$hp,
  geom="histogram",
  binwidth=25,
  colour=I("red"),
  xlim=c(50,350)
)

#Para agregar los nombres de los ejes usamos xlab y ylab
qplot(
  mtcars$hp,
  geom="histogram",
  binwidth=25,
  colour=I("red"),
  xlim=c(50,350),
  xlab="HP",
  ylab="Cant de Autos."
)

#Para sacar el color de relleno, se puede hacer con alpha
qplot(
  mtcars$hp,
  geom="histogram",
  binwidth=25,
  colour=I("red"),
  xlim=c(50,350),
  xlab="HP",
  ylab="Cant de Autos.",
  alpha=I(0)
)

#Para agregar título al histograma usamos main
qplot(
  mtcars$hp,
  geom="histogram",
  binwidth=25,
  colour=I("red"),
  xlim=c(50,350),
  xlab="HP",
  ylab="Cant de Autos.",
  alpha=I(0),
  main="Autos por HP"
)
