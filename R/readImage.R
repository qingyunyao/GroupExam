#install and load the package that is used in this package
install.packages("magick")
library(magick)


#' Read the image of interest
#'
#' @param image_path the pathway of the image you want to manipulate
#'
#' @return image display on the R window
#' @example import_image_bitmap <- readImage("")

#test file path wd/figures/Testimage1.jpg, uset getwd() and setwd() to set correct working disc
readImage <- function (image_path = "figures/Testimage1.jpg"){

  if (!file.exists(image_path)){
    return("File doesn't exist!") #check if the pathway is correct
  }
  input_image <- image_read (image_path)

  #extract the bitmap array
  image_bitmap <- input_image[[1]]

  #check if the image is properly imported
  image_read(image_bitmap)
  return(image_bitmap)

}

