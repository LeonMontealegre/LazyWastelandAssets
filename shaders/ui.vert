#version 330 core

layout (location = 0) in vec4 inPosition;
layout (location = 1) in vec2 inTexCoords;

out vec2 tcs;

uniform mat4 projMatrix;
uniform mat4 modelMatrix;

uniform vec2 size;
uniform vec2 tcOffset;

void main() {
	tcs = inTexCoords * size + tcOffset;
	gl_Position = (projMatrix * modelMatrix) * inPosition;
}
