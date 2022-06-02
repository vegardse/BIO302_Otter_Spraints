install.packages("palmerpenguins")
palmerpenguins::penguins
penguins
library(tidyverse)

chinstrap <- penguins |> 
  filter(species == "Chinstrap")
ggplot(data = chinstrap, aes(x = bill_length_mm, y = bill_depth_mm))+
  geom_point()+
  labs(
    x = "Bill length (mm)",
    y = "Bill depth (mm)",
    title = "Bill length and bill depth" )
