#version 330 core

layout (location = 0) in vec4 inPosition;
layout (location = 1) in vec2 inTexCoords;
layout (location = 2) in vec2 inOffset;
layout (location = 3) in vec4 inTexOffset;
layout (location = 4) in vec2 inDmgTexOffset;

out vec2 tcs;
out vec2 tcs2;
out vec2 tcs3;

uniform mat4 projMatrix;
uniform mat4 viewMatrix;

uniform vec2 size;
uniform vec2 offset;

void main() {
    tcs  = inTexCoords.xy * size + inTexOffset.xy;
    tcs2 = inTexCoords.xy * size + inTexOffset.zw;
    tcs3 = inTexCoords.xy * size + inDmgTexOffset;
	gl_Position = (projMatrix * viewMatrix) * vec4(inPosition.xy+inOffset.xy-offset, inPosition.zw);
}
