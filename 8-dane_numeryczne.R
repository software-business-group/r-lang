data(beavers)
x = beaver1$temp
x
stem(x,scale=2)

hist(x, main = "Histogram pomiarów temperatury",xlab = "Temperatura [st. C]", ylab = "Ilosc pomiarow", col = "lightblue3")

data(beavers)
x1 = beaver1$temp
x2 = beaver2$temp
h1 = hist(x1, plot = FALSE)
h2 = hist(x2, plot = FALSE)
yl = c(0, max(h1$density, h2$density))
br = seq(min(x1, x2), max(x1, x2), length = max(length(h1$br),length(h2$br)))
beaver.hist = function(temp, nr = 1, freq = FALSE, breaks = br, ylim = yl, col = "lightblue3", xlab = "Temperatura [st. C]",main = paste("Histogram pomiar´ow temperatury bobra nr", nr), ...) {hist(temp, breaks = breaks, freq = freq, ylim = ylim, xlab = xlab,col = col, main = main, ...)}
hist.extras = function(x, col = "red", ...) {lines(density(x), col = col, ...)}
hist.segline = function(h, col = "red2", lty = "dashed", ...) {lines(c(min(h$breaks), h$mids, max(h$breaks)), c(0, h$density,0), col = col, lty = lty, ...)}
h1 = beaver.hist(x1, nr = 1)
hist.extras(x1)
hist.segline(h1)
h2 = beaver.hist(x2, nr = 2)
hist.extras(x2)
hist.segline(h2)