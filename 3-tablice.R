x = 1:8
dim(x) = c(2, 4)
x

dimnames(x) = list(letters[1:2], LETTERS[1:4])
x
attributes(x)

dn = list(letters[1:2], LETTERS[1:4])
matrix(1:8, 2, 4, dimnames = dn)
array(1:8, c(2, 4), dn)

rbind(1:3, 4:6)
cbind(1:3, 4:6)
cbind(rbind(1:3, 4:6), c(7, 8))

a = array(1:12, c(3, 4))
a
a * a
a %*% t(a)
diag(a)
dim(a) = c(2, 3, 2)
aperm(a, c(2, 1, 3))
solve(diag(1:3), rep.int(1, 3))
solve(diag(1:3))
b = outer(1:3, 1:3)
b
solve(diag(1:3), b)

