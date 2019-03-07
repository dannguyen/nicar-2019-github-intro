library(rmarkdown)
inFile = commandArgs(trailingOnly=TRUE)[1]
outFile = commandArgs(trailingOnly=TRUE)[2]

rmarkdown::render(inFile,
                   output_format = "powerpoint_presentation",
                   output_file = outFile)
