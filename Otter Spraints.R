library(usethis)
library(usethis)
use_git_config(
  user.name = "vegardse", 
  user.email = "vse007@uib.no"
)
usethis::use_git()
git_default_branch_rename()
git_default_branch_configure(name = "main")
use_github()
#Spraints are nice
create_from_github("kingsleyshacklebolt/dragon_study")
#Jellies are ugh