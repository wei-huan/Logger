cmake_minimum_required(VERSION 3.9)
project(Logger)
add_compile_options(-g -std=c++17 -O3)

include_directories(src)

file(GLOB_RECURSE DIR_SRC "src/*.cpp")
file(GLOB_RECURSE DIR_EXAMPLE "example/*.cpp")

string(LENGTH "${CMAKE_SOURCE_DIR}/" SOURCE_PATH_SIZE)
add_definitions("-DSOURCE_PATH_SIZE=${SOURCE_PATH_SIZE}")

# static link library
# add_library(logger_sta src/log.cpp)
# target_include_directories(logger_sta PUBLIC ${CMAKE_SOURCE_DIR}/src/include)

# dynamic link library
# add_library(logger_dyn SHARED src/log.cpp)
# target_include_directories(logger_dyn PRIVATE  ${CMAKE_SOURCE_DIR}/src/include)
# set_target_properties(logger_dyn PROPERTIES PUBLIC_HEADER ${CMAKE_SOURCE_DIR}/src/include/log.hpp)
# executable
add_executable(Logger ${DIR_SRC} ${DIR_EXAMPLE})