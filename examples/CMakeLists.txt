
cmake_minimum_required(VERSION 3.22.1)

project(hello_world LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)

add_executable(${PROJECT_NAME}
    hello_world.cpp
)
