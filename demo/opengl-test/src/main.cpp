/*
 * opengl test
 * 2026.3.13 by dralee
 * */

#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <iostream>

int main()
{
	if(!glfwInit())
		return -1;

	GLFWwindow* window = glfwCreateWindow(800, 600, "OpenGL Test", NULL, NULL);

	glfwMakeContextCurrent(window);

	if(!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
	{
		std::cout<<"Failed to init GLAD\n";
		return -1;
	}

	while(!glfwWindowShouldClose(window))
	{
		glClearColor(0.2f, 0.3f,0.3f,1.0f);
		glClear(GL_COLOR_BUFFER_BIT);

		glfwSwapBuffers(window);
		glfwPollEvents();
	}

	glfwTerminate();
}
