#
# This script starts PCAGO
#

cmd.args <- commandArgs(trailingOnly = T)

setwd(cmd.args[1])
print(paste("Initializing PCAGO from", getwd()))
source("packrat/init.R")


# Set the path of ffmpeg
ffmpeg.path <- "/usr/bin/ffmpeg"
if(!file.exists(ffmpeg.path)) {
    print("Using static build of ffmpeg.")
    ffmpeg.path <- "../ffmpeg-linux-x64/ffmpeg"
}
if(!file.exists(ffmpeg.path)) {
    print("ffmpeg does not exist!")
    q()
}


print(paste("Path of ffmpeg is", ffmpeg.path))
print("PCAGO starter is ready!")

shiny::runApp()
