#version 120

#define FOG_ENABLED // Whether or not to enable fog.
//#define EXPONENTIAL_FOG // More atmospheric fog starting from the camera and increasing exponentially. Not mutually exclusive with FOG_ENABLED.

uniform sampler2D colortex0;
uniform sampler2D colortex1;
uniform sampler2D depthtex0;

uniform float far;

uniform mat4 gbufferProjectionInverse;

varying vec2 texcoord;


void main() {
	vec3 color = texture2D(colortex0, texcoord).rgb;
	float depth = texture2D(depthtex0, texcoord).r;

	vec3 screenPos = vec3(texcoord, depth);
	vec3 clipPos = screenPos * 2.0 - 1.0;
	vec4 temp = gbufferProjectionInverse * vec4(clipPos, 1.0);
	
	vec3 viewPos = temp.xyz / temp.w;
	float blockDistance = length(viewPos);
	
	vec3 fogColor = texture2D(colortex1, texcoord).rgb;
	float renderDistance = far / 1.141;

	#ifdef FOG_ENABLED
		#ifdef EXPONENTIAL_FOG
			float expFogFactor = blockDistance / renderDistance;
			expFogFactor = 1.0 - exp(-expFogFactor);
			color.rgb = mix(color.rgb, max(fogColor.rgb, vec3(0.0)), expFogFactor);
		#endif

		float fogStart = max(renderDistance * 0.8, renderDistance - 48.0);
		float fogEnd = max(renderDistance * 0.9, renderDistance - 16.0);

		float vanillaFogFactor = smoothstep(fogStart, fogEnd, blockDistance);
		color.rgb = mix(color.rgb, fogColor.rgb, vanillaFogFactor * (1.0 - floor(depth))); 
	#endif

	// color.rgb = mix(color.rgb, texture2D(colortex1, texcoord).rgb, smoothstep(50.0, 60.0, blockDistance));

/* DRAWBUFFERS:0 */
	gl_FragData[0] = vec4(color, 1.0); //colortex0
}