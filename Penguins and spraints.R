library(broom)
library(palmerpenguins)
penguins
library(tidyverse)

usethis::use_git_hook(
  hook = "pre-commit",
  script = '#!/bin/sh
  branch="$(git rev-parse --abbrev-ref HEAD)"
  if [ "$branch" = "main" ]; then
  echo "You cannot commit directly to main branch"
  exit 1
  fi'
)

chinstrap <- penguins |> 
  filter(species == "Chinstrap")
ggplot(data = chinstrap, aes(x = bill_length_mm, y = bill_depth_mm))+
  geom_point()+
  labs(
    x = "Bill length (mm)",
    y = "Bill depth (mm)",
    title = "Bill length and bill depth" )

no_chin <- penguins |> 
  drop_na() |> 
  filter(species != "Chinstrap")

ggplot(no_chin, aes(sex, flipper_length_mm, fill = sex)) +
  geom_violin() + 
  ylab("Flipper length (mm)")
