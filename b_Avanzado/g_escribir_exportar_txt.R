m <- matrix(c(1,2,3,4,5,6),nrow=2, ncol=3)
m

#usamos write
write(m, file="pruebaTxt.txt",
      ncolumns=3, sep=" ")
