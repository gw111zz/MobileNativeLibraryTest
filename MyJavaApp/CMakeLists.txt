find_package(JAVA REQUIRED)
include(UseJava)

set(CMAKE_JAVA_TARGET_OUTPUT_DIR "${OutputDirectory}")

add_jar(MyJavaApp ${CMAKE_CURRENT_SOURCE_DIR}/JavaExample.java
    INCLUDE_JARS ${CMAKE_JAVA_TARGET_OUTPUT_DIR}/JavaLibraryWrapper.jar)
