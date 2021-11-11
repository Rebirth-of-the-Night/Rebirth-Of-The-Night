#version 150 compatibility

uniform sampler2D texture;

in vec2 texcoord;
in vec4 glcolor;

void main() {
	vec4 color = texture2D(texture, texcoord) * glcolor;

/* DRAWBUFFERS:0 */
	gl_FragData[0] = color; //gcolor
}