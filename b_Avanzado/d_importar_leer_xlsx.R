#Para leer archivos xLS
install.packages("readxl")
library(readxl)
library (tidyverse)
fuente <- "https://www.ine.es/jaxi/files/tpx/es/xlsx/39511.xlsx"
dato <- read_excel(fuente)
