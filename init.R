repos = "https://cran.ism.ac.jp/"
install.packages("tidyverse", repos=repos)
install.packages('IRkernel', repos=repos)
IRkernel::installspec()
IRkernel::installspec(user = FALSE)
