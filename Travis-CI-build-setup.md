# Build Setup 

Travis-CI is used to build this codebase. It is built on two operating systems (Linux and OSX) and the cross-platform code
is built using two C++ compilers on each. 

## Linux (gcc, clang)

```
  +-------------------+    +-----------------------+
  |                   |    |                       |
  | Build C++ library +--->+ Build C++ console app |
  |                   |    |                       |
  +-------------------+    +-----------------------+
```

## OSX (gcc, clang)

```
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
```  

