#usaremos la libreria leaflet que permite hacer mapas interactivos
install.packages("leaflet")
library(leaflet)

#para poder guardar como html
install.packages("htmlwidgets")
library(htmlwidgets)

#para poder usar display
install.packages("IRdisplay")
library (IRdisplay)
#creamos un mapa
map <- leaflet() 
map

#le agregamos el mapa
map <- leaflet() %>%addTiles()
map

#podemos agregar marcadores (ejemplo Times Square)

map <- leaflet() %>%addTiles() %>%
  addMarkers(lng=-73.9851,lat=40.7589)
map

#podemos agregarle un popup al marcador
map <- leaflet() %>%addTiles() %>%
  addMarkers(lng=-73.9851,lat=40.7589,
             popup="Times Square")
map

#podemos usar otro tipo de mapas con addProviderTiles
map <- leaflet() %>%addProviderTiles("Stamen.Watercolor") %>%
  addMarkers(lng=2.2945,lat=48.8584,
             popup="Torre Eiffel")
map


#para usar un data set para hacer un mapa hacemos
#usaremos el data frame quakes, que tiene la info de 1000 terremotos desde 1964
map <- leaflet(quakes) %>% addTiles() %>%
    addCircleMarkers(lng=quakes$long, lat=quakes$lat)
map


#podemos mejorar la visibilidad agrupando los marcadores en clústers
map <- leaflet(quakes) %>%addTiles() %>%
  addMarkers(clusterOptions=markerClusterOptions()) #agrupa por regiones
map

#también podemos guardar el mapa en una página web
map <- leaflet(quakes) %>%addTiles() %>%
  addMarkers(clusterOptions=markerClusterOptions()) #agrupa por regiones
saveWidget(map, file="map.html")
map
#sirve para modificar las dimensiones
display_html(paste("<iframe src=' ",'map.html',"'width='100%' height='300'","/>"))


#Otra opción es cargar circulos por cada punto
map <- leaflet(quakes) %>% addTiles() %>%
  addCircles(lng=quakes$long, lat=quakes$lat)
map


#para resaltar áreas, se pueden usar rectángulos
map <- leaflet()%>%addTiles() %>%
  addMarkers(lng=86.92,lat=27.99,
             popup="Monte Everest") %>%
  addRectangles(86.9,27.95,87,28.05)
map
saveWidget(map,file="map2.html")
display_html(paste("<iframe src=' ",'map2.html',"'width='100%' height='300'","/>"))


#