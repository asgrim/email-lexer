cmake_minimum_required(VERSION 3.2)
project(email_lexer)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR})

SET(FlexOutput ${CMAKE_SOURCE_DIR}/email_lexer.yy.c)
FILE(REMOVE ${FlexOutput})

find_package(FLEX)
FLEX_TARGET(email_lexer language.lex ${FlexOutput})

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES
    ${FlexOutput})

add_executable(email_lexer ${SOURCE_FILES})
