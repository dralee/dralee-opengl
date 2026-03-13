cmake_minimum_required(VERSION 3.10)

project(OpenGLTest)

set(CMAKE_CXX_STANDARD 17)

find_package(OpenGL REQUIRED)
find_package(glfw3 REQUIRED)

include_directories(include)

add_executable(test
	src/main.cpp
	src/glad.c
)

target_link_libraries(test
	glfw
	OpenGL::GL
)
