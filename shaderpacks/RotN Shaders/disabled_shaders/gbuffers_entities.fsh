#version 120

uniform sampler2D lightmap;
uniform sampler2D texture;

uniform float far;
uniform vec3 fogColor;
uniform float fogDensity;
uniform float fogStart;
uniform float fogEnd;
uniform vec4 entityColor;

varying vec2 lmcoord;
varying vec2 texcoord;
varying vec4 vertexTint;
varying float blockDistance;

void main() {
	vec4 color = texture2D(texture, texcoord) * vertexTint;
	color.rgb = mix(color.rgb, entityColor.rgb, entityColor.a);
	color *= texture2D(lightmap, lmcoord);

	float renderDistance = far / 1.141;

	#include "common_lighting.glsl"

/* DRAWBUFFERS:0 */
	gl_FragData[0] = color; //gcolor
}
