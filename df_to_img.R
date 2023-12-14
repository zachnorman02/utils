library(magick)
library(gridExtra)

df_to_image = function(df, name, width_factor=75, height_factor=30) {
  file = paste0("images/", name, ".png")
  png(file, width = width_factor*ncol(df), height = height_factor*nrow(df))
  grid.table(df)
  dev.off()
  im = image_read(file_path)
  return(im)
}