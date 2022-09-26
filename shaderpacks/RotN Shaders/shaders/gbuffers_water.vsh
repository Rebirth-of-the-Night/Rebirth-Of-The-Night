#version 120

#include "/lib/frex/face.glsl"

attribute vec4 mc_Entity;

varying vec2 lmcoord;
varying vec2 texcoord;
varying vec4 vertexTint;
varying vec2 uv;

varying float blockDistance;
varying float isLifeblood;

void main() {
	gl_Position = ftransform();
	texcoord = (gl_TextureMatrix[0] * gl_MultiTexCoord0).xy;
	lmcoord  = (gl_TextureMatrix[1] * gl_MultiTexCoord1).xy;
	vertexTint = gl_Color;

	if(mc_Entity.x == 1000) {
		isLifeblood = 1.0;
	} else {
		isLifeblood = 0.0;
	}

	uv = frx_faceUv(gl_Vertex.xyz, gl_Normal.xyz) * 4.0;

	vec3 viewPos = (gl_ModelViewMatrix * gl_Vertex).xyz;
	blockDistance = length(viewPos);
}