#
# This script starts PCAGO
#

setwd("pcago")
source("packrat/init.R")
print("PCAGO starter is ready!")

# Set the path of ffmpeg
ffmpeg.path <- "/usr/bin/ffmpeg"
if(!file.exists(ffmpeg.path)) {
    print("Using static build of ffmpeg.")
    ffmpeg.path <- "../ffmpeg-linux/ffmpeg"
}
if(!file.exists(ffmpeg.path)) {
    print("ffmpeg does not exist!")
    q()
}


print(paste("Path of ffmpeg is", ffmpeg.path))


shiny::runApp()
