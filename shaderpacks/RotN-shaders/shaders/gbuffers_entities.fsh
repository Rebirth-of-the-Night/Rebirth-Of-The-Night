#version 150 compatibility

#define FOG_ENABLED

uniform sampler2D lightmap;
uniform sampler2D texture;

uniform float far;
uniform vec3 fogColor;
uniform float fogDensity;
uniform vec4 entityColor;

in vec2 lmcoord;
in vec2 texcoord;
in vec4 glcolor;
in float hn_distance;

void main() {
	vec4 color = texture2D(texture, texcoord) * glcolor;
	color.rgb = mix(color.rgb, entityColor.rgb, entityColor.a);
	color *= texture2D(lightmap, lmcoord);

	float renderDistance = far / 1.141;

	#include "fog.glsl"

/* DRAWBUFFERS:0 */
	gl_FragData[0] = color; //gcolor
}
