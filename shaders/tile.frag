#version 330 core

in vec2 tcs;
in vec2 tcs2;
in vec2 tcs3;

out vec4 fragColor;

uniform sampler2D tex;

void main() {
    vec4 col1 = texture(tex, tcs);
    vec4 col2 = texture(tex, tcs2);
    vec4 col3 = texture(tex, tcs3);
    fragColor = (1.0 - col3.a)*((1.0 - col2.a)*col1 + col2.a*col2) + col3.a * col3;
}
