PCAGO-Electron
================

Runs [PCAGO](https://gitlab.com/rumangerst/pcago) as standalone desktop application
using the [Electron](https://electronjs.org/) framework.

## Download

You can find prepackaged versions of PCAGO-Electron [here](https://github.com/rumangerst/pcago-electron/releases).

## Requirements

* libgconf2 (Debian/Ubuntu: libgconf2-4)
* Dependencies that are required by [PCAGO](https://gitlab.com/rumangerst/pcago)

## Running

We provide prepacked versions of PCAGO-Electron that you can download [here](https://github.com/rumangerst/pcago-electron/releases).
Download the appropriate version and run the included starter or just `electron.exe` (Windows)
/ `./electron` (Linux).

## Obtaining the source code

PCAGO-Electron requires PCAGO that has to be placed into the `pcago` folder.
If you are cloning the repository, you can run:
```
git clone --recursive https://github.com/rumangerst/pcago-electron.git
```

If you already cloned the PCAGO-Electron repository, you can let git automatically
download all submodules:
```
git submodule update --init --recursive
```

## Running from source

To run PCAGO-Electron from source, you need [npm](https://www.npmjs.com/).
Run `npm start` in the PCAGO-Electron folder to run the application.
If you use Linux, you should install `ffmpeg` (with MP4 support) from your
distribution's package sources. Otherwise you need to download a build of `ffmpeg` for
Linux and place it into the `ffmpeg-linux-x64` directory (see README file within this folder).

## Deploying PCAGO-Electron

To create prepacked versions of PCAGO-Electron, run `./deploy.sh`. This requires distributable versions of
Electron (electron-* directories), ffmpeg (ffmpeg-*) and R (R-*). See the respective README files for
more information.
