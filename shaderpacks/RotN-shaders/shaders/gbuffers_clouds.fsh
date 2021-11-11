#version 150 compatibility

uniform sampler2D texture;

uniform float far;
uniform vec3 fogColor;
uniform float fogDensity;

in vec2 texcoord;
in vec4 glcolor;
in float hn_distance;

void main() {
	vec4 color = texture2D(texture, texcoord) * glcolor;

	float renderDistance = far / 1.141;

	#include "fog.glsl"

/* DRAWBUFFERS:0 */
	gl_FragData[0] = color; //gcolor
}