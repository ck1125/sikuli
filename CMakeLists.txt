CMAKE_MINIMUM_REQUIRED(VERSION 2.6)
PROJECT (sikuli)

SET(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake_modules/")
INCLUDE(${CMAKE_MODULE_PATH}/common.cmake)

add_subdirectory(sikuli-script)
add_subdirectory(sikuli-ide)

