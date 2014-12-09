
# auto install packages 

package.list <- read.csv(file="~/GitHub/InstalledPackages/InstalledPackages.csv", header=TRUE, row.names=1)

source("http://bioconductor.org/biocLite.R")

for(i in 1:nrow(package.list)){

  # if this gives an error than try Bioc
  install.packages(package.list[i])
  
  # if this gives and error than save to failed log
  biocLite(package.list[i])

}