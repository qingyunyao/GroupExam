

#' Calculate the greyscale for the chosen pixel
#'
#' @param width the width of the picture
#' @param height  the height of the picture
#' @param filter_bitmap  the raw() vector from the original picture (gerenated by readImage)
#'
#' @return the color in raw form for a specific pixel

#'
#'
grey <- function (width,height, filter_bitmap) {
  red <- strtoi(filter_bitmap[1, width, height],base=16)
  green <- strtoi(filter_bitmap[2, width, height],base=16)
  blue <- strtoi(filter_bitmap[3, width, height],base=16)
  num=red*0.299+green*0.587+blue*0.114 #calculate greyscalre
  greyscale=as.raw(num) #convert to raw format
  return(greyscale)
}

#' Keep red in the picture
#'
#' @param width the width of the picture
#' @param height the height of the picture
#' @param filter_bitmap the raw() vector from the original picture (gerenated by readImage)
#'
#' @return red in raw form for a specific pixel

red <- function (width,height, filter_bitmap) {
  red <- filter_bitmap[1, width, height] #keep only the red
  return(red)
}

#' Keep green in the picture
#'
#' @param width the width of the picture
#' @param height the height of the picture
#' @param filter_bitmap the raw() vector from the original picture (gerenated by readImage)
#'
#' @return green in raw form for a specific pixel
green <- function (width,height, filter_bitmap) {
  green <- filter_bitmap[1, width, height] #keep only the green
  return(green)
}


#' Keep blue in the picture
#'
#' @param width the width of the picture
#' @param height the height of the picture
#' @param filter_bitmap the raw() vector from the original picture (gerenated by readImage)
#'
#' @return Blue in raw form for a specific pixel

blue <- function (width,height, filter_bitmap) {
  blue <- filter_bitmap[1, width, height] #keep only the blue
  return(blue)
}








