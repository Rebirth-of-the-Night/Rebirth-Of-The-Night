#version 150 compatibility

#include "/lib/frex/face.glsl"

#define attribute in

attribute vec4 mc_Entity;

out vec2 lmcoord;
out vec2 texcoord;
out vec4 glcolor;
out vec2 uv;

out float hn_distance;
flat out int isLifeblood;

void main() {
	gl_Position = ftransform();
	texcoord = (gl_TextureMatrix[0] * gl_MultiTexCoord0).xy;
	lmcoord  = (gl_TextureMatrix[1] * gl_MultiTexCoord1).xy;
	glcolor = gl_Color;

	if(mc_Entity.x == 1000) {
		isLifeblood = 1;
	} else {
		isLifeblood = 0;
	}

	uv = frx_faceUv(gl_Vertex.xyz, gl_Normal.xyz);

	vec3 viewPos = (gl_ModelViewMatrix * gl_Vertex).xyz;
	hn_distance = length(viewPos);
}