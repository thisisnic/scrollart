library(cli)
DELAY=0.1
width <- cli::console_width()
segmentWidth <- floor(width /10)


color_funcs <- c(col_red, col_br_red, col_yellow, col_br_yellow, col_br_green,col_green,
                 col_blue, col_br_magenta, col_magenta)
i = 1

while(i < 50){

  color_func <- color_funcs[[(i%%length(color_funcs)) + 1]]

  cat(color_func(paste(rep('/ ___ \\ ^ ', segmentWidth), collapse = "")), fill = TRUE)
  Sys.sleep(DELAY)
  cat(color_func(paste(rep(' /   \\ VVV', segmentWidth), collapse = "")), fill = TRUE)
  Sys.sleep(DELAY)
  cat(color_func(paste(rep('|() ()|   ', segmentWidth), collapse = "")), fill = TRUE)
  Sys.sleep(DELAY)
  cat(color_func(paste(rep(' \\ ^ / ___', segmentWidth), collapse = "")), fill = TRUE)
  Sys.sleep(DELAY)
  cat(color_func(paste(rep('\\ VVV /   ', segmentWidth), collapse = "")), fill = TRUE)
  Sys.sleep(DELAY)
  cat(color_func(paste(rep(')|   |() (', segmentWidth), collapse = "")), fill = TRUE)
  Sys.sleep(DELAY)
  i = i+1
}

print('Based on STessellation Skulls, by Al Sweigart al@inventwithpython.com')

