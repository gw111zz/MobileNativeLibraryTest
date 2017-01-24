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
get_target_property(_jarFile JavaLibraryWrapper JAR_FILE)
get_target_property(_classDir JavaLibraryWrapper CLASSDIR)

message(STATUS "Jar file ${_jarFile}")
message(STATUS "Class compiled to ${_classDir}")

add_custom_target(
    JavaHForWrapper
    OUTPUT JavaLibraryWrapper.h
    COMMAND ${Java_JAVAH_EXECUTABLE} --classpath ${_classDir} -verbose -jni com.example.myjavawrapper.JavaLibraryWrapper
    WORKING_DIRECTORY "${CMAKE_JAVA_TARGET_OUTPUT_DIR}${CMAKE_FILES_DIRECTORY}/${JAVA_TARGET}.dir"
    COMMENT "Running javah" VERBATIM
)

add_library(MyJavaWrapperLib com_example_myjavawrapper_JavaLibraryWrapper.cpp)
target_include_directories(MyJavaWrapperLib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR} ${JNI_INCLUDE_DIRS})
set_target_properties(MyJavaWrapperLib PROPERTIES SUFFIX ".jnilib")
target_link_libraries(MyJavaWrapperLib ${JNI_LIBRARIES})
