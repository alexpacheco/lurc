#!/usr/bin/env Rscript
###/usr/bin/env Rscript

args <- commandArgs(trailingOnly = TRUE)

#library(slidify)

if (length(args)==0){
  print("Usage: Rscript compile.R filename")
}else{
  prefix <- args[length(args)]
  suffix <- "Rmd"
  filename=paste(prefix,suffix,sep=".")
  print(filename)
#  slidify(filename)
  rmarkdown::render(filename)
#  slidify(filename, options = list(copy_libraries = TRUE, theme = "io2012"))
}
