#  batch run from start to finish.
#  well not quite because github does not like files > 25 MB
#  the input files have been converted from SAS into zipped Rdata files, 
#  but the examination data had to be restricted to the subset from it that is used further.

setwd("./convert")

# raw data to selection and format
source("004_select_data.R")
source("005_factor_data.R")

setwd("../report")

# this only works with the right libraries installed
# otherwise you have to do this manually in Rstudio

rmarkdown::render("003_report.Rmd") 

setwd("..")
