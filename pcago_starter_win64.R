#
# This script starts PCAGO
#

setwd("pcago")
source("packrat/init.R")
print("PCAGO starter is ready!")

# Set the path of ffmpeg
ffmpeg.path <- "../ffmpeg-windows/bin/ffmpeg.exe"
if(!file.exists(ffmpeg.path)) {
    print("ffmpeg does not exist!")
    q()
}

print(paste("Path of ffmpeg is", ffmpeg.path))

shiny::runApp()
