#!/bin/bash
# build the project by g++
# 2026.3.13 by dralee

g++ src/main.cpp src/glad.c -Iinclude -lglfw -lGL -ldl -o test

