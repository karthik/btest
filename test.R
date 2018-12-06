library("containerit")
# do stuff, based on demo("krige")
library("gstat")
library("sp")
data(meuse)
coordinates(meuse) = ~x+y
data(meuse.grid)
gridded(meuse.grid) = ~x+y
v <- variogram(log(zinc)~1, meuse)
m <- fit.variogram(v, vgm(1, "Sph", 300, 1))
plot(v, model = m)
container <- dockerfile(from = sessionInfo())