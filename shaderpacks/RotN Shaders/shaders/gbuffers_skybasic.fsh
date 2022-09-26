#version 120

#include "/lib/noise/noise.glsl"

uniform float viewHeight;
uniform float viewWidth;

uniform mat4 gbufferModelView;
uniform mat4 gbufferProjectionInverse;
uniform mat4 gbufferModelViewInverse;

uniform vec3 fogColor;
uniform vec3 skyColor;

varying vec4 starData; //rgb = star color, a = flag for weather or not this pixel is a star.

float fogify(float x, float w) {
	return w / (x * x + w);
}

vec3 calcSkyColor(vec3 pos) {
	float upDot = dot(pos, gbufferModelView[1].xyz); //not much, what's up with you?
	return mix(skyColor, fogColor, fogify(max(upDot, 0.0), 0.25));
}

void main() {
	vec3 color;
	if (starData.a > 0.15) {
		color = starData.rgb;
	}
	else {
		vec4 pos = vec4(gl_FragCoord.xy / vec2(viewWidth, viewHeight) * 2.0 - 1.0, 1.0, 1.0);
		pos = gbufferProjectionInverse * pos;
		color = calcSkyColor(normalize(pos.xyz));

		// // custom stars
		// vec4 scenePos = gbufferModelViewInverse * pos;

		// float s = sign(scenePos.y);
		// vec2 plane = scenePos.xz / (scenePos.y + s * length(scenePos.xz));
		// plane *= 10.0;

		// color += step(0.99, 1.0 - cellular(plane).x);
	}

/* DRAWBUFFERS:01 */
	gl_FragData[0] = vec4(color, 1.0); //gcolor
}