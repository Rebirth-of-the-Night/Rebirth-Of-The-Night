#version 120

uniform sampler2D lightmap;
uniform sampler2D texture;

uniform int blockEntityId;

uniform float far;
uniform float fogDensity;
uniform float fogStart;
uniform float fogEnd;
uniform float frameTimeCounter;

uniform vec3 fogColor;

varying float blockDistance;
varying float isLifeblood;

varying vec2 lmcoord;
varying vec2 texcoord;
varying vec2 uv;

varying vec4 vertexTint;

#include "/lib/noise/noise.glsl"

void main() {
	vec4 color = texture2D(texture, texcoord) * vertexTint;

	if(abs(isLifeblood - 1.0) < 0.5) {
        const vec3 lifebloodColor = vec3(0.152,0.578,0.960);

        vec2 finalUv = floor(uv * 4.0) / 4.0;

        float distortX = sin(finalUv.y * 1.0 + frameTimeCounter * 0.5) * 0.2;
        float distortY = cos(finalUv.x * 1.0 + frameTimeCounter * 0.5) * 0.2;
        vec2 distort = vec2(distortX * cos(frameTimeCounter * 0.5), distortY * sin(frameTimeCounter * 0.5));

        float spiritNoise = cellular(finalUv + distort).x;
        float spiritNoise1 = cellular(finalUv - distort * 2.0).x;
        float spiritNoise2 = cellular(finalUv + distort * 4.0).x;
        float spiritNoise3 = cellular(finalUv - distort * 6.0).x;
        
        color.rgb = lifebloodColor * (spiritNoise + spiritNoise1 + spiritNoise2 + spiritNoise3) / 4.0;
        color.a = 1.0;
	}

	color *= texture2D(lightmap, lmcoord);

	float renderDistance = far / 1.141;

	#include "common_lighting.glsl"

/* DRAWBUFFERS:0 */
	gl_FragData[0] = color; //gcolor
}