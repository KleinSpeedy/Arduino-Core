cmake_minimum_required(VERSION 3.16)

project(core-wrapper
    LANGUAGES
    C CXX)

if(NOT DEFINED CORE_WRAPPER_DIR)
    set(CORE_WRAPPER_DIR ${CMAKE_CURRENT_SOURCE_DIR})
endif()

#
# Source and Include files
#
set(CORE_WRAPPER_SRC_DIR ${CORE_WRAPPER_DIR}/src)
include(${CORE_WRAPPER_SRC_DIR}/Filelist.cmake)
set(CORE_WRAPPER_INC_DIR ${CORE_WRAPPER_DIR}/include)

# Declare which arduino_pins.h to use
# TODO: Set this from outside
set(CORE_WRAPPER_PINS_HEADER
    ${CORE_WRAPPER_DIR}/variants/standard
)


#
# Compile definitions
#
set(CORE_WRAPPER_DEFS
    ""
)


#
# Compile options
#
set(CORE_WRAPPER_OPTS
    ""
)

add_library(${PROJECT_NAME} STATIC ${core-wrapper_SRCS})
target_compile_definitions(${PROJECT_NAME} PRIVATE ${CORE_WRAPPER_DEFS})
target_compile_options(${PROJECT_NAME} PRIVATE ${CORE_WRAPPER_OPTS})
target_include_directories(${PROJECT_NAME} PRIVATE 
    ${CORE_WRAPPER_INC_DIR}
    ${CORE_WRAPPER_PINS_HEADER}
)
