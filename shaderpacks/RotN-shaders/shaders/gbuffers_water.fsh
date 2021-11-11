#version 150 compatibility

uniform sampler2D lightmap;
uniform sampler2D texture;
uniform int blockEntityId;

uniform float far;
uniform vec3 fogColor;
uniform float fogDensity;
uniform float frameTimeCounter;

in vec2 lmcoord;
in vec2 texcoord;
in vec4 glcolor;
in vec2 uv;

in float hn_distance;
flat in int isLifeblood;

#include "/lib/noise/noise.glsl"

void main() {
	vec4 color = texture2D(texture, texcoord) * glcolor;

	if(isLifeblood == 1) {
        vec3 spiritColor = vec3(0.152,0.578,0.960);
        vec2 uvA = vec2(
            uv.x + (sin(frameTimeCounter / 10.0) / 20 + frameTimeCounter / 10.0),
            uv.y + (sin(frameTimeCounter / 10.0) / 2.0 + frameTimeCounter / 10.0)
        );
        float distortX = sin(uv.y * 1.0 + frameTimeCounter * 0.5) * 0.2;
        float distortY = cos(uv.x * 1.0 + frameTimeCounter * 0.5) * 0.2;
        vec2 distort = vec2(distortX * cos(frameTimeCounter * 0.5), distortY * sin(frameTimeCounter * 0.5));
        float spiritNoise = cellular(uvA + distort).x;
        float spiritNoise1 = cellular(uvA - distort * 2.0).x;
        float spiritNoise2 = cellular(uvA + distort * 4.0).x;
        float spiritNoise3 = cellular(uvA - distort * 6.0).x;
        color.rgb = spiritColor * (spiritNoise + spiritNoise1 + spiritNoise2 + spiritNoise3) / 4.0;
	}

	color *= texture2D(lightmap, lmcoord);

	float renderDistance = far / 1.141;

	#include "fog.glsl"

/* DRAWBUFFERS:0 */
	gl_FragData[0] = color; //gcolor
}