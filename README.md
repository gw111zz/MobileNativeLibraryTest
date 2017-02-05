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

# TODO:

* Java access to the C++ library
* Setup Travis-CI
* Hook all of this together into one build system

# Build Setup 

Travis-CI is used to build this codebase. It is built on two operating systems (Linux and OSX) and the cross-platform code
is built using two C++ compilers on each. 

## Linux (gcc, clang)

+-------------------+    +-----------------------+
|                   |    |                       |
| Build C++ library +--->+ Build C++ console app |
|                   |    |                       |
+-------------------+    +-----------------------+

## OSX (gcc, clang)

+-------------------+    +-----------------------+   +---------------------+
|                   |    |                       |   |                     |
| Build C++ library +--->+ Build C++ console app +-->+ Build Obj-C library |
|                   |    |                       |   |                     |
+-------------------+    +-----------------------+   +---------+-----------+
                                                               |
                                                               v
        +------------------+    +---------------+    +---------+-----------+
        |                  |    |               |    |                     |
        | Run iOS UI tests +<---+ Build iOS app +<---+ Run ObjC unit tests |
        |                  |    |               |    |                     |
        +------------------+    +---------------+    +---------------------+

