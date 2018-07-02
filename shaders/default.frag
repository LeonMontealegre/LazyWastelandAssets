#version 330 core

in vec4 color;
in vec2 tcs;

out vec4 fragColor;

uniform sampler2D tex;

void main() {
    fragColor = texture(tex, tcs);
}
