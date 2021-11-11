#define FOG_ENABLED // Whether or not to enable fog.
#define EXPONENTIAL_FOG // More atmospheric fog starting from the camera and increasing exponentially. Not mutually exclusive with FOG_ENABLED.


	#ifdef FOG_ENABLED
		#ifdef EXPONENTIAL_FOG
			float expFogFactor = hn_distance / renderDistance;
			expFogFactor = 1.0 - exp(-expFogFactor);
			color.rgb = mix(color.rgb, max(fogColor.rgb, vec3(0.0)), expFogFactor);
		#endif

        float vanillaFogFactor = smoothstep(renderDistance * 0.6, renderDistance, hn_distance);
        color.rgb = mix(color.rgb, fogColor.rgb, vanillaFogFactor); 
	#endif
