###/usr/bin/env Rscript

args <- commandArgs(trailingOnly = TRUE)

library(slidify)

if (length(args)==0){
  print("Usage: Rscript compile.R filename.Rmd")
}else{
  myargument <- args[length(args)]
  print(myargument)
  slidify(myargument)
}
