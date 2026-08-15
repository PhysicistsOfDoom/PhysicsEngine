cmake_minimum_required(VERSION 3.10)
project(physicsEngine LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif()

if(POLICY CMP0072)
    cmake_policy(SET CMP0072 NEW)
endif()

find_package(OpenGL REQUIRED)
find_package(glfw3 REQUIRED)

add_executable(physicsEngine
    physicsEngine/src/main.cpp
    physicsEngine/vendor/glad.c
)

target_include_directories(physicsEngine PRIVATE
    physicsEngine/vendor
    physicsEngine/vendor/glm
)

target_link_libraries(physicsEngine PRIVATE glfw OpenGL::GL ${CMAKE_DL_LIBS})
