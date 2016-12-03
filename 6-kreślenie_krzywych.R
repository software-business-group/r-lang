curve(sin(1/x), 0, 0.1, n = 10^3)
title(main = "Sinusoida warszawska", xlab = "x", ylab = "sin(1/x)")

curve(dnorm, xlim = c(-3, 3), main = "Gestosc rozkladu normalnego")
n = 50
x = seq(qnorm(0.025), qnorm(0.975), length = n)
polygon(c(x, rev(x)), c(rep(0, n), rev(dnorm(x))), col = "gray")
text(0, dnorm(0)/2, "95%")
