# GroupExam
Code for the group exam for Intermediate R course 2025VT


Use readImage to import picture of interest
Use pixelchange to apply filter to the picture



Hi,
I encountered some problem installing the package locally after download the file 
I am using a mac
I finally succeed by doing the following

#Set CRAN mirror (essential)
options(repos = c(CRAN = "https://cloud.r-project.org"))

#Install required development tools
install.packages(c("devtools", "remotes", "pkgbuild"))

#For macOS (using Homebrew in Terminal):
brew install imagemagick
brew install pkg-config

#Back in R
setwd("~/path/to/ImageFilter/package") # Set to your package directory

#Install dependencies from DESCRIPTION
remotes::install_deps(dependencies = TRUE, upgrade = "never")
#Clean previous attempts
unlink("src/*.o", force = TRUE)
unlink("src/*.so", force = TRUE)

#Install with documentation build disabled
devtools::install(".", build_vignettes = FALSE, force = TRUE)

I am not sure which step help.
Hope the package work ok for you.

Best,
QY
