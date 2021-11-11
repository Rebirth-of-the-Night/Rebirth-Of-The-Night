#version 150 compatibility

out vec2 lmcoord;
out vec2 texcoord;
out vec4 glcolor;
out float hn_distance;

void main() {
	gl_Position = ftransform();
	texcoord = (gl_TextureMatrix[0] * gl_MultiTexCoord0).xy;
	lmcoord  = (gl_TextureMatrix[1] * gl_MultiTexCoord1).xy;
	glcolor = gl_Color;

	vec3 viewPos = (gl_ModelViewMatrix * gl_Vertex).xyz;
	hn_distance = length(viewPos);
}