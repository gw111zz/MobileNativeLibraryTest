# Native Library On Mobile Test

This is a skeleton / template project created to experiment with how a C++ library can be created and then used on mobile platforms.

It consists of a few skeleton projects:

1. MyLibrary - a C++ library built using CMake
2. MyApp - A basic console app built using CMake that uses MyLibrary
3. MyiOSStaticLibrary - an XCode project configured to build MyLibrary into a universal binrary usable on the iOS Simulator and an iPhone/iPad
4. MyiOSDemoApp - a basic iOS app which uses MyiOSStaticLibrary

More coming soon...

# TODO:

* Make the iOS demo app call use the wrapper library
* Hook all of this together into one build system

