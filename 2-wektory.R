c(2, 3, c(4, 5))
seq(2, 5)
2:5
seq(2, 5, by = 0.5)
seq(2, 5, length = 3)

s = c("o", "e")
paste(s, 1:8, sep = "")

.x = c(rep.int(1, 5), rep.int(2, 3), 3)
.x
x = c(.x, rev(.x))
x
length(x)
sort(x)
order(x)
x[order(x)] == sort(x)
rank(x, ties.method = "min")
max(x)
min(x)
pmax(.x, rev(.x))
sum(x)
prod(x)
diff(x)

cummax(x)
cumsum(x)
mean(x)
var(x)
sd(x) == sqrt(var(x))
median(x)
quantile(x, 0.5)

summary(x)
ecdf(x)(c(0.99, 1, 2, 44))
sample(x, 10, replace = TRUE)
cor(sort(sample(x, 10^2, replace = TRUE)), sort(sample(x, 10^2,replace = TRUE)))
