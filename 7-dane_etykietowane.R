rdice = function(n, d) sample(1:d, n, replace = TRUE)
d = 4
n = 50
dice.res = table(factor(rdice(n, d), levels = 1:d))
dice.prop = dice.res/n
barplot(dice.prop, horiz = TRUE, col = c("black", "brown", "orange", "yellow"))

pie(dice.prop, col = rainbow(d))
title("Proporcje wyniku 50 rzut´ow czteroscienna kostka.")