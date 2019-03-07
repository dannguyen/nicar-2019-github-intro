library(rmarkdown)
library(xaringan)
inFile = commandArgs(trailingOnly=TRUE)[1]
# outFile = commandArgs(trailingOnly=TRUE)[2]

rmarkdown::render(inFile
                   , output_format = "xaringan::moon_reader"
                   , output_file = 'index.html')
