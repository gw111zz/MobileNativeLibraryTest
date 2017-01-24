cmake_minimum_required(VERSION 3.6.2)

project(NativeLibraryDemonstration)

set(OutputDirectory "${CMAKE_CURRENT_SOURCE_DIR}/Output")
message(STATUS "OUTPUT_DIRECTORY=${OutputDirectory}")
file(MAKE_DIRECTORY "${OutputDirectory}")

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${OutputDirectory}")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${OutputDirectory}")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${OutputDirectory}")

message(STATUS "CMAKE_ARCHIVE_OUTPUT_DIRECTORY=${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}")
message(STATUS "CMAKE_LIBRARY_OUTPUT_DIRECTORY=${CMAKE_LIBRARY_OUTPUT_DIRECTORY}")
message(STATUS "CMAKE_ARCHIVE_OUTPUT_DIRECTORY=${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}")

add_subdirectory(MyLibrary)
add_subdirectory(MyApp)
add_subdirectory(MyJavaLibrary)

