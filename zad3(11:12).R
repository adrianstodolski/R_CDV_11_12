getwd()
mpg = read_csv("mpg.csv")
print(mpg)
# A
print(max(mpg$cty))
print(min(mpg$cty))
# B
print(subset(mpg,manufacturer=="subaru"))
# C
print(subset(mpg,manufacturer=="audi"&model=="a4 quattro"))
# D
audi = subset(mpg,manufacturer=="audi")
write.csv(audi,"audi.csv")
new_audi=read.csv("audi.csv")
print(new_audi)

install.packages("xlsx")
library("xlsx")
write.xlsx(audi,"audi.xlsx")


