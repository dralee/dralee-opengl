#!/bin/bash
# initialize the project third-party library
# 2026.3.13 by dralee

# base-devel cmake
c=`sudo pacman -Qs base-devel | wc -l`
if [ $c -eq 0 ]; then
    echo install the base-devel ...
    sudo pacman -S base-devel
fi

echo gcc version
gcc --version

c=`sudo pacman -Qs cmake | wc -l`
if [ $c -eq 0 ]; then
    echo install the cmake ...
    sudo pacman -S cmake
fi

# opengl driver by Mesa
c=`sudo pacman -Qs mesa | wc -l`
if [ $c -eq 0 ]; then
    echo install the mesa ...
    sudo pacman -S mesa    
fi

c=`sudo pacman -Qs mesa-utils | wc -l`
if [ $c -eq 0 ]; then
    echo install the mesa-utils ...
    sudo pacman -S mesa-utils
fi

# opengl version
glxinfo | grep "OpenGL version"

# glfw glm assimp
c=`sudo pacman -Qs glfw | wc -l`
if [ $c -eq 0 ]; then
    echo install the glfw ...
    sudo pacman -S glfw
fi

c=`sudo pacman -Qs glm | wc -l`
if [ $c -eq 0 ]; then
    echo install the glm ...
    sudo pacman -S glm
fi

c=`sudo pacman -Qs assimp | wc -l`
if [ $c -eq 0 ]; then
    echo install the assimp ...
    sudo pacman -S assimp
fi

# github 库
# stb库
if [ ! -d stb ]; then
    git clone https://github.com/nothings/stb.git
    rm -rf stb/.git stb/.github
fi

# imgui库
if [ ! -d imgui ]; then
    git clone https://github.com/ocornut/imgui.git
    rm -rf imgui/.git imgui/.github
fi

echo the environment is ready.
