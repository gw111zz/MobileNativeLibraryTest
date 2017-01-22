find_package(JNI)

if (JNI_FOUND)
    message(STATUS "JNI_INCLUDE_DIRS=${JNI_INCLUDE_DIRS}")
    message(STATUS "JNI_LIBRARIES=${JNI_LIBRARIES}")
endif()

add_library(MyJavaWrapper com_example_myjavawrapper_MyJavaWrapper.cpp)
target_include_directories(MyJavaWrapper PUBLIC 
    ${CMAKE_CURRENT_SOURCE_DIR} 
    ${JNI_INCLUDE_DIRS}
)

