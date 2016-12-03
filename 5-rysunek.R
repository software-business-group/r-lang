n = 10^3
plot(rnorm(n), rnorm(n), main = "Proba 2D rozkladu normalnego")

x = rbinom(50, 10, 0.5)
plot(factor(x), main = "Zliczenia próby X1,...,X50 ~ Bin(10, 0.5)", xlab = "x", ylab = "#{X = x}")
plot(ecdf(x), main = "Dystrybuanta próby X1,...,X50 ~ Bin(10, 0.5)",xlab = "x", ylab = "Pr(X <= x)")