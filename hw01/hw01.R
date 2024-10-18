names(data.df)
data.df[5, 7]
data.df[2, ]

names(data.df) <- c("year", "month", "day", seq(0,23))#Эта строка присваивает названия колонкам в data.df,
#где первые три колонки будут называться year, month, day, а оставшиеся 24 колонки будут иметь названия,
#соответствующие часам в сутках: от 0 до 23

data.df$daily <- rowSums(data.df[, 4:27])
hist(data.df$daily, main="Гистограмма осадков по дню", xlab="Осадки", ylab="Частота")#в наборе данных есть отрицательные значения количества осадков


names(fixed.df) <- c("year", "month", "day", seq(0,23))
fixed.df$daily <- rowSums(fixed.df[, 4:27])
fixed.df[, 4:27][data.df[, 4:27] < 0] <- 0
hist(fixed.df$daily, main="Гистограмма осадков по дню", xlab="Осадки", ylab="Частота")#гистограмма коректнее благодаря замене отрицательных значений в датасете на 0



v <- c("4", "8", "15", "16", "23", "42")
max(v)
sort(v)
sum(v)


v2 <- c("5",7,12)
v2[2] + 2[3]

df3 <- data.frame(z1="5",z2=7,z3=12)
df3[1,2] + df3[1,3]

l4 <- list(z1="6", z2=42, z3="49", z4=126)
l4[[2]] + l4[[4]]
l4[2] + l4[4]

seq(1, 10000, by=372)
seq(1, 10000, length.out=50)

rep(1:5, times=3)
rep(1:5, each=3)
