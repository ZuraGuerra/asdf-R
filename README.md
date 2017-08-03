# asdf-R
An R plugin for the [asdf](https://github.com/asdf-vm/asdf) version manager

[![Build Status](https://api.travis-ci.org/cirode/asdf-R.svg?branch=master)](https://travis-ci.org/cirode/asdf-R)

# Installation

    asdf plugin-add R https://github.com/cirode/asdf-R.git

## Dependencies

This plugin compiles R from source, so I would recommend visiting the [R Installation and Administration](https://cran.r-project.org/doc/manuals/r-release/R-admin.html) webpage and looking at the required and optional dependencies for your platform

This plugin utilises [R-Build](https://github.com/viking/R-build), however it will download this dependency as part of the installation process

__NOTE:__ Due to a compilation issue on the main branch ( for which there is an open pull request ), this is currently pointing at a fork of the main at https://github.com/cirode/R-build

### Essential for Linux


### Essential for OSX

The Xcode command line tools

     xcode-select --install

The build process also requires the following

- java: For compilation of shared libs, needed for R-Studio
- gcc: OSX comes with an LLVM version of gcc which R aparently has issues with
- gfortran: Which in homebrew is included in the gcc library
- liblzma: Provided by the xz package
- xquartz: Which provides x11 is needed for displaying graphs etc

On OSX these dependencies can be installed with
  
    brew install gcc xz readline pcre
    brew cask install java



