install.packages("palmerpenguins")
palmerpenguins::penguins
penguins
library(tidyverse)

ggplot(data = penguins, aes(x = bill_length_mm, y = bill_depth_mm))+
  geom_point()
