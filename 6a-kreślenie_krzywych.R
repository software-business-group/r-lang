x = seq(-2 * pi, 2 * pi, length = 101)
lty = 1
col = 2:3
matplot(x, cbind(sin(x), cos(x)), type = "l", lty = lty, col = col,ylab = "f(x)")
legend("bottomleft", legend = c("sin", "cos"), lty = lty, col = col)
abline(h = 0, lty = "dashed")
abline(v = 0, lty = "dashed")