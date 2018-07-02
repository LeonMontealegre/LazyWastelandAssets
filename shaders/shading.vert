#version 330 core

layout (location = 0) in vec4 inPosition;
layout (location = 1) in vec2 inTexCoords;

out vec2 tcs;

uniform mat4 projMatrix;
uniform mat4 viewMatrix;

uniform vec2 offset;

void main() {
	tcs = inTexCoords;
	gl_Position = (projMatrix * viewMatrix) * vec4(inPosition.xy - offset, inPosition.zw);
}
