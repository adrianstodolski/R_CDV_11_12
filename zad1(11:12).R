# Pierwszy wykres 
ggplot(mpg, aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_smooth(se = FALSE)
# Drugi wykres
ggplot(mpg, aes(x = displ, y = hwy)) + 
  geom_smooth(mapping = aes(group = drv), se = FALSE) + 
  geom_point()
## Trzeci wykres
ggplot(mpg, aes(x = displ, y = hwy, colour = drv)) +
  geom_point() +
  geom_smooth(se = FALSE)
# Czwarty wykres
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(colour = drv)) +
  geom_smooth(se = FALSE)
# Piąty wykres
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(colour = drv)) +
  geom_smooth(aes(linetype = drv), se = FALSE)
# Szósty wykres
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(size = 4, color = "white") +
  geom_point(aes(colour = drv))