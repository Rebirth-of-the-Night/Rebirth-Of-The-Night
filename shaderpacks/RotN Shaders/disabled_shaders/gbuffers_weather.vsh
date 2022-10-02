#version 120

varying vec2 lmcoord;
varying vec2 texcoord;
varying vec4 vertexTint;
varying float blockDistance;

void main() {
	gl_Position = ftransform();
	texcoord = (gl_TextureMatrix[0] * gl_MultiTexCoord0).xy;
	lmcoord  = (gl_TextureMatrix[1] * gl_MultiTexCoord1).xy;
	vertexTint = gl_Color;

	vec3 viewPos = (gl_ModelViewMatrix * gl_Vertex).xyz;
	blockDistance = length(viewPos);
}