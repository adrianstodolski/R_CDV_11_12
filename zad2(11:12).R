ggplot(data = mpg, mapping = aes(x = cty, y = hwy, color = class, shape = drv)) +
  geom_jitter(height = 10, width = 10)