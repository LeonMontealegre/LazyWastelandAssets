#version 330 core

layout (location = 0) in vec4 inPosition;
layout (location = 1) in vec2 inTexCoords;

out vec2 tcs;

uniform mat4 projMatrix;
uniform mat4 modelMatrix;

void main() {
    tcs = inTexCoords;
    gl_Position = vec4(inPosition.x*2, inPosition.y*2, inPosition.z, inPosition.w);
}
