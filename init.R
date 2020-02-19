repos = "https://cran.ism.ac.jp/"
install.packages("tidyverse", repos=repos)
install.packages ("RMeCab", repos = "http://rmecab.jp/R", type = "source")
install.packages('IRkernel', repos=repos)
IRkernel::installspec()
IRkernel::installspec(user = FALSE)
