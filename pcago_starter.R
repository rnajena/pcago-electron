#
# This script starts PCAGO
#

setwd("pcago")
source("packrat/init.R")
print("PCAGO starter is ready!")
shiny::runApp()
