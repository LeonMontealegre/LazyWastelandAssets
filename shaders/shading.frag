#version 330 core

in vec2 tcs;

out vec4 fragColor;

uniform sampler2D tex;

void main() {
    fragColor = vec4(0,0,0, 1.-texture(tex, tcs).r);
}
