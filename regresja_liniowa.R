library(tidyverse)
# Printuje całą zawartość "mtcars"
print(mtcars)
# Tworzy wykres zależności x - y(disp-mpg) na podstawie "mtcars"
plot(mpg ~ disp, data = mtcars,col = 2)
# Wyznaczenie współczynnika modelu liniowego w celu wyznaczenia regresji liniowej
model <- lm(mpg ~ disp, data = mtcars)
# Wyświetla wynik szacunków
print(summary(model))
# Wyświetla "pozostałości"
summary(model)$residuals
# Wykres z regresją liniową dla mpg
abline(model,col=3,lwd=2)
# Tworzymy wektor dla podanych zmiennych
disp_predict_wektor <- c(25,500,250,325)
# Do tworzenia ramki danych użyłem "tibble" gdyż jest mniej inwazyjne niż data.frame
disp_predict <- tibble(disp = disp_predict_wektor)
# Predykcja dla danych zapisanych w disp_predict_wektor
predict(model,disp_predict)
# Zapis predyktowanych wyników do zmiennej
predykcja = predict(model,disp_predict)
# zapis oraz odczyt wynikow ze zmiennej predict
write.csv(predykcja,"predict.csv")
new_predict=read.csv("predict.csv")
print(new_predict)
# Pobranie wynikow predykcji z kolumny "x" i zapis do zmiennej
test = new_predict$x
print(new_predict$x)
# Utworzenie wektorow ze zmiennej "test"
avector <- as.vector(test)
class(avector)
# Utworzenie wektorow ze zmiennej "disp_predict_wektor"
bvector <- as.vector(disp_predict_wektor)
class(bvector)
# Zapis danych w zmiennej "set"
set=data.frame(avector,bvector,disp_predict,disp_predict_wektor)
# Wykre
ggplot(set) +
  geom_point(mapping=aes(x=avector,y=bvector),color="red")+
  geom_line(mapping=aes(x=avector,y=disp_predict_wektor))+
  xlab("mpg")+
  ylab("disp")+
  labs(title="Regresja Liniowa")


