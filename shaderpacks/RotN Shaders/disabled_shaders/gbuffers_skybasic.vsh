#version 120

varying vec4 starData; //rgb = star color, a = flag for weather or not this pixel is a star.

void main() {
	gl_Position = ftransform();
	starData = gl_Color;
}