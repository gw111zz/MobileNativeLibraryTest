# Native Library On Mobile Test

![Build](https://travis-ci.org/gw111zz/MobileNativeLibraryTest.svg?branch=master)

This is a skeleton / template project created to experiment with how a C++ library can be created and then used on mobile platforms.

It consists of a few skeleton projects:

1. MyLibrary - a C++ library built using CMake
2. MyApp - A basic desktop console app built using CMake that uses MyLibrary
3. MyiOSStaticLibrary - an XCode project configured to build MyLibrary into a universal binrary usable on the iOS Simulator and an iPhone/iPad
4. MyiOSDemoApp - a basic iOS app which uses MyiOSStaticLibrary
5. MyJavaLibrary - a Java wrapper for the C++ library which accesses it via JNI

More coming soon...

# Cloning this project

  git clone --recursive https://github.com/gw111zz/MobileNativeLibraryTest.git

# TODO:

* Java access to the C++ library
* Setup Travis-CI
* Hook all of this together into one build system

