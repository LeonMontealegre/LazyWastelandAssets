#version 330 core

in vec2 tcs;

out vec4 fragColor;

uniform sampler2D tex;
uniform vec4 color;

void main() {
    fragColor = texture(tex, tcs) * color;
}
