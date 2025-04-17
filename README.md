# GroupExam
Code for the group exam for Intermediate R course 2025VT

# How to use the code
Use readImage("image-pathway") to import picture of interest

You can create a new object to save the information return by redaImage()

e.g. new_bitmap <- readImage("image-pathway")

Use pixelchange to apply filter to the picture, you can choose from grey, red, blue, and green

default filter: grey

default output: FALSE

pixelchange(new_bitmap,"grey",output="FALSE",)

The output augument in pixelchange() is used to save the new image


# Problem with install the package locally
Hi,
I encountered some problem installing the package locally after download the file 

I am using a mac

I finally succeed by doing the following. Just in case you have the same problem.

### Set CRAN mirror (essential)

options(repos = c(CRAN = "https://cloud.r-project.org"))

### Install required development tools

install.packages(c("devtools", "remotes", "pkgbuild"))

### For macOS (using Homebrew in Terminal):

brew install imagemagick

brew install pkg-config

### Back in R

setwd("~/path/to/ImageFilter/package") # Set to your package directory

### Install dependencies from DESCRIPTION

remotes::install_deps(dependencies = TRUE, upgrade = "never")

### Clean previous attempts

unlink("src/*.o", force = TRUE)

unlink("src/*.so", force = TRUE)

### Install with documentation build disabled

devtools::install(".", build_vignettes = FALSE, force = TRUE)

I am not sure which step help.

Hope the package work ok for you.

Best,
QY
