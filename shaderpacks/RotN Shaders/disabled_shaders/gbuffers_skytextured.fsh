#version 120

uniform sampler2D texture;

varying vec2 texcoord;
varying vec4 vertexTint;

void main() {
	vec4 color = texture2D(texture, texcoord) * vertexTint;

/* DRAWBUFFERS:0 */
	gl_FragData[0] = color; //gcolor
}