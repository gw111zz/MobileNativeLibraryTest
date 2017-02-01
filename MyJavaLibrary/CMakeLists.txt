find_package(JAVA REQUIRED)
find_package(JNI REQUIRED)
include(UseJava)

message(STATUS "Java_JAVAC_EXECUTABLE=${Java_JAVAC_EXECUTABLE}")
message(STATUS "Java_JAVAH_EXECUTABLE=${Java_JAVAH_EXECUTABLE}")
message(STATUS "JNI_INCLUDE_DIRS=${JNI_INCLUDE_DIRS}")
message(STATUS "JNI_LIBRARIES=${JNI_LIBRARIES}")

set(CMAKE_JAVA_TARGET_OUTPUT_DIR "${OutputDirectory}")
message(STATUS "CMAKE_JAVA_TARGET_OUTPUT_DIR=${CMAKE_JAVA_TARGET_OUTPUT_DIR}")
message(STATUS "CMAKE_CURRENT_BINARY_DIR=${CMAKE_CURRENT_BINARY_DIR}")

add_jar(JavaLibraryWrapper ${CMAKE_CURRENT_SOURCE_DIR}/com/example/myjavawrapper/JavaLibraryWrapper.java)
get_target_property(JavaLibraryWrapperJarFilePath JavaLibraryWrapper JAR_FILE)
get_target_property(JavaLibraryWrapperClassFilePath JavaLibraryWrapper CLASSDIR)

message(STATUS "Jar file ${JavaLibraryWrapperJarFilePath}")
message(STATUS "Class compiled to ${JavaLibraryWrapperClassFilePath}")

add_library(MyJavaWrapperLib com_example_myjavawrapper_JavaLibraryWrapper.cpp)
target_include_directories(MyJavaWrapperLib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR} ${JNI_INCLUDE_DIRS})
set_target_properties(MyJavaWrapperLib PROPERTIES SUFFIX ".jnilib")
target_link_libraries(MyJavaWrapperLib ${JNI_LIBRARIES})
