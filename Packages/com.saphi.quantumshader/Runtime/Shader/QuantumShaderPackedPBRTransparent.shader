// Made with Amplify Shader Editor v1.9.6.3
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Saphi/QuantumShaderPackedPBRTransparent"
{
	Properties
	{
		_ParallaxMap("ParallaxMap", 2D) = "white" {}
		_Parallax("Parallax", Range( 0 , 0.08)) = 0
		_ParallaxMinSamples("ParallaxMinSamples", Range( 1 , 128)) = 8
		_ParallaxMaxSamples("ParallaxMaxSamples", Range( 1 , 128)) = 16
		_ParallaxSideWallSteps("ParallaxSideWallSteps", Range( 0 , 10)) = 2
		_ParallaxRefPlane("ParallaxRefPlane", Range( 0 , 1)) = 0
		[Toggle(_PARALLAXENABLE_ON)] _ParallaxEnable("ParallaxEnable", Float) = 0
		_MainTex("Main Tex", 2D) = "white" {}
		_Color("Color", Color) = (0,0,0,0)
		_EmissionMap("Emission Map", 2D) = "white" {}
		_EmissionMap2("Emission Map 2", 2D) = "black" {}
		_AlphaMap("AlphaMap", 2D) = "white" {}
		_Opacity("Opacity", Range( 0 , 1)) = 1
		[HDR]_EmissionColor2("Emission Color2", Color) = (0,0,0,0)
		[HDR]_EmissionColor("Emission Color", Color) = (0,0,0,0)
		_BumpMap("NormalMap", 2D) = "bump" {}
		_DetailNormalMap("Detail Normal Map", 2D) = "bump" {}
		_BumpScale("Normal Scale", Range( 0 , 1)) = 1
		_Cutoff("Cutoff", Range( 0 , 1)) = 0
		_DetailNormalMapScale("Detail Normal Map Scale", Range( 0 , 1)) = 0
		_PBRMap("Packed PBR Map", 2D) = "white" {}
		_Metallic("Metallic", Range( 0 , 1)) = 0
		_SpecularCorretive("Specular Corretive", Float) = 0.1
		_Specular("Specular", Range( 0 , 1)) = 0.5
		[Enum(UnityEngine.Rendering.CullMode)]_Culling("Culling", Float) = 2
		_Roughness("Roughness", Range( 0 , 1)) = 0.5
		_QGlowMap("GlowMap", 2D) = "black" {}
		_QDirection("Direction", 2D) = "black" {}
		[HDR]_QuantumGlowColor("QuantumGlowColor", Color) = (1,1,1,0)
		[ToggleUI]_QSmoothHistory("Q Smooth History", Float) = 1
		[HDR]_QGlowColorBand1("QGlowColorBand1", Color) = (1,1,1,0)
		[Toggle]_QUseColorRotation1("QUseColorRotation1", Float) = 0
		[Toggle]_QUseColorRotation2("QUseColorRotation2", Float) = 0
		[Toggle]_QUseColorRotation3("QUseColorRotation3", Float) = 0
		[Toggle]_QInvertDirection1("QInvertDirection1", Float) = 0
		[Toggle]_QUseColorRotation4("QUseColorRotation4", Float) = 0
		[Enum(Whole Color,0,Whole Color Direction,1,Gradient Wave,2,Gradient Direction,3,Static Color,4,Hue Rotation,5)]_QType1("QType1", Int) = 0
		[Enum(Overlay,0,Multiply,1,Direct no wave,2)]_QBlendMode4("QBlendMode1", Int) = 0
		[Enum(Overlay,0,Multiply,1,Direct no wave,2)]_QBlendMode1("QBlendMode1", Int) = 0
		[Enum(Band 1,0,Band 2,1,Band 3,2,Band 4,3)]_QBand1("QBand1", Int) = 0
		[Enum(Whole color,0,Whole color direction,1,Gradient wave,2,Gradient direction,3,Static Color,4,Hue Rotation,5)]_QType2("QType2", Int) = 0
		[Enum(Overlay,0,Multiply,1,Direct no wave,2)]_QBlendMode2("QBlendMode1", Int) = 0
		[Enum(Whole Color,0,Whole Color Direction,1,Gradient Wave,2,Gradient Direction,3,Static Color,4,Hue Rotation,5)]_QType4("QType4", Int) = 0
		[Enum(Whole Color,0,Whole Color Direction,1,Gradient Wave,2,Gradient Direction,3,Static Color,4,Hue Rotation,5)]_QType3("QType3", Int) = 0
		[Enum(Overlay,0,Multiply,1,Direct no wave,2)]_QBlendMode3("QBlendMode1", Int) = 0
		_QColorOffset1("QColorOffset1", Range( 0 , 1)) = 0
		_QEffectScale1("QEffectScale1", Range( 0 , 1)) = 1
		[IntRange]_QColorRotationMode4("QColorRotationMode4", Range( 0 , 3)) = 0
		_QColorRotationSpeed4("QColorRotationSpeed4", Range( 0 , 1)) = 0
		_QEffectScale2("QEffectScale2", Range( 0 , 1)) = 1
		_QEffectScale4("QEffectScale4", Range( 0 , 1)) = 1
		[IntRange]_QColorRotationMode1("QColorRotationMode1", Range( 0 , 3)) = 0
		[IntRange]_QColorRotationMode2("QColorRotationMode2", Range( 0 , 3)) = 0
		_QEffectScale3("QEffectScale3", Range( 0 , 1)) = 1
		_QColorRotationSpeed3("QColorRotationSpeed3", Range( 0 , 1)) = 0
		[IntRange]_QColorRotationMode3("QColorRotationMode3", Range( 0 , 3)) = 0
		_QHistory1("QHistory1", Range( 0 , 128)) = 32
		_QColorRotationSpeed2("QColorRotationSpeed2", Range( 0 , 1)) = 0
		_QColorRotationSpeed1("QColorRotationSpeed1", Range( 0 , 1)) = 0
		[Enum(Band 1,0,Band 2,1,Band 3,2,Band 4,3)]_QBand2("QBand2", Int) = 1
		[HDR]_QGlowColorBand2("QGlowColorBand2", Color) = (1,1,1,0)
		[Toggle]_QBandEnable3("QBandEnable3", Float) = 0
		[Toggle]_QBandEnable2("QBandEnable2", Float) = 0
		[Toggle]_QBandEnable1("QBandEnable1", Float) = 0
		[Toggle]_QBandEnable4("QBandEnable4", Float) = 0
		[Toggle]_QEnableGlobal("QEnableGlobal", Float) = 0
		[Toggle]_QInvertDirection2("QInvertDirection2", Float) = 0
		_QColorOffset2("QColorOffset2", Range( 0 , 1)) = 0
		_QHistory2("QHistory2", Range( 0 , 128)) = 32
		[Enum(Band 1,0,Band 2,1,Band 3,2,Band 4,3)]_QBand3("QBand3", Int) = 2
		[HDR]_QGlowColorBand3("QGlowColorBand3", Color) = (1,1,1,0)
		[Toggle]_QInvertDirection3("QInvertDirection3", Float) = 0
		_QColorOffset3("QColorOffset3", Range( 0 , 1)) = 0
		_QHistory3("QHistory3", Range( 0 , 128)) = 32
		[Enum(Band 1,0,Band 2,1,Band 3,2,Band 4,3)]_QBand4("QBand4", Int) = 3
		[HDR]_QGlowColorBand4("QGlowColorBand4", Color) = (1,1,1,0)
		[Toggle]_QInvertDirection4("QInvertDirection4", Float) = 0
		_QuantumGlowMultiply3("QuantumGlowMultiply3", Float) = 1
		_QuantumGlowMultiply4("QuantumGlowMultiply4", Float) = 1
		_QColorOffset4("QColorOffset4", Range( 0 , 1)) = 0
		_QuantumGlowMultiply1("QuantumGlowMultiply1", Float) = 1
		_QuantumGlowMultiply2("QuantumGlowMultiply2", Float) = 1
		_QHistory4("QHistory4", Range( 0 , 128)) = 32
		_ShowQuantumBand3("ShowQuantumBand3", Float) = 0
		_ShowQuantumBand4("ShowQuantumBand4", Float) = 0
		_ShowQuantum("ShowQuantum", Float) = 0
		_ShowQuantumBand1("ShowQuantumBand1", Float) = 0
		_ShowQuantumBand2("ShowQuantumBand2", Float) = 0
		_QuantumGlowMultiplyGlobal("QuantumGlowMultiplyGlobal", Float) = 1
		[Toggle]_UseUVAsDirectionUV("UseUVAsDirectionUV", Float) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[Toggle]_UseUVAsDirection("UseUVAsDirection", Float) = 0
		_ShaderType("ShaderType", Float) = 2
		_RenderType("RenderType", Float) = 2
		[Enum(UnityEngine.Rendering.BlendMode)]_BlendModeDst("BlendModeDst", Float) = 10
		[Enum(UnityEngine.Rendering.BlendMode)]_BlendModeSrc("BlendModeSrc", Float) = 5
		_BlendMode("BlendMode", Float) = 0
		_ShowMain("ShowMain", Float) = 0
		[Toggle]_EnableEmission("EnableEmission", Float) = 0
		_Emission("Emission", Float) = 1
		[Toggle]_EnableEmission2("EnableEmission2", Float) = 0
		_ShowRendering("ShowRendering", Float) = 0
		_Emission2("Emission2", Float) = 1
		_ShowParallax("ShowParallax", Float) = 0
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Custom"  "Queue" = "Transparent+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
		Cull [_Culling]
		Blend [_BlendModeSrc] [_BlendModeDst]
		
		CGINCLUDE
		#include "UnityStandardUtils.cginc"
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 4.0
		#pragma shader_feature_local _PARALLAXENABLE_ON
		#include "Packages/com.llealloo.audiolink/Runtime/Shaders/AudioLink.cginc"
		#ifdef UNITY_PASS_SHADOWCASTER
			#undef INTERNAL_DATA
			#undef WorldReflectionVector
			#undef WorldNormalVector
			#define INTERNAL_DATA half3 internalSurfaceTtoW0; half3 internalSurfaceTtoW1; half3 internalSurfaceTtoW2;
			#define WorldReflectionVector(data,normal) reflect (data.worldRefl, half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal)))
			#define WorldNormalVector(data,normal) half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal))
		#endif
		struct Input
		{
			float2 uv_texcoord;
			float3 worldNormal;
			INTERNAL_DATA
			float3 worldPos;
		};

		uniform float _ShowQuantumBand3;
		uniform float _ShowQuantumBand4;
		uniform float _ShowQuantumBand1;
		uniform float _ShowQuantumBand2;
		uniform float _ShowQuantum;
		uniform int _QBlendMode2;
		uniform float _ShowRendering;
		uniform float _ShowMain;
		uniform float _Cutoff;
		uniform float _Culling;
		uniform float _BlendMode;
		uniform float _BlendModeSrc;
		uniform float _BlendModeDst;
		uniform float _ShaderType;
		uniform float _RenderType;
		uniform float _ShowParallax;
		uniform sampler2D _BumpMap;
		uniform sampler2D _MainTex;
		uniform float4 _MainTex_ST;
		uniform sampler2D _ParallaxMap;
		uniform float _Parallax;
		uniform float _ParallaxMinSamples;
		uniform float _ParallaxMaxSamples;
		uniform float _ParallaxSideWallSteps;
		uniform float _ParallaxRefPlane;
		uniform float4 _ParallaxMap_ST;
		uniform float _BumpScale;
		uniform sampler2D _DetailNormalMap;
		uniform float4 _DetailNormalMap_ST;
		uniform float _DetailNormalMapScale;
		uniform float4 _Color;
		uniform sampler2D _PBRMap;
		uniform float _Metallic;
		uniform float _EnableEmission;
		uniform sampler2D _EmissionMap;
		uniform float4 _EmissionColor;
		uniform float _Emission;
		uniform float _EnableEmission2;
		uniform sampler2D _EmissionMap2;
		uniform float4 _EmissionColor2;
		uniform float _Emission2;
		uniform float _QEnableGlobal;
		uniform float4 _QuantumGlowColor;
		uniform float _QBandEnable1;
		uniform float4 _QGlowColorBand1;
		uniform sampler2D _QGlowMap;
		uniform int _QBlendMode1;
		uniform int _QBand1;
		uniform float _QSmoothHistory;
		uniform float _QHistory1;
		uniform float _QInvertDirection1;
		uniform float _UseUVAsDirection;
		uniform sampler2D _QDirection;
		uniform float _UseUVAsDirectionUV;
		uniform int _QType1;
		uniform float _QColorOffset1;
		uniform float _QColorRotationMode1;
		uniform float _QColorRotationSpeed1;
		uniform float _QUseColorRotation1;
		uniform float _QEffectScale1;
		uniform float _QuantumGlowMultiply1;
		uniform float _QBandEnable2;
		uniform float4 _QGlowColorBand2;
		uniform int _QBand2;
		uniform float _QHistory2;
		uniform float _QInvertDirection2;
		uniform int _QType2;
		uniform float _QColorOffset2;
		uniform float _QColorRotationMode2;
		uniform float _QColorRotationSpeed2;
		uniform float _QUseColorRotation2;
		uniform float _QEffectScale2;
		uniform float _QuantumGlowMultiply2;
		uniform float _QBandEnable3;
		uniform float4 _QGlowColorBand3;
		uniform int _QBlendMode3;
		uniform int _QBand3;
		uniform float _QHistory3;
		uniform float _QInvertDirection3;
		uniform int _QType3;
		uniform float _QColorOffset3;
		uniform float _QColorRotationMode3;
		uniform float _QColorRotationSpeed3;
		uniform float _QUseColorRotation3;
		uniform float _QEffectScale3;
		uniform float _QuantumGlowMultiply3;
		uniform float _QBandEnable4;
		uniform float4 _QGlowColorBand4;
		uniform int _QBlendMode4;
		uniform int _QBand4;
		uniform float _QHistory4;
		uniform float _QInvertDirection4;
		uniform int _QType4;
		uniform float _QColorOffset4;
		uniform float _QColorRotationMode4;
		uniform float _QColorRotationSpeed4;
		uniform float _QUseColorRotation4;
		uniform float _QEffectScale4;
		uniform float _QuantumGlowMultiply4;
		uniform float _QuantumGlowMultiplyGlobal;
		uniform float _SpecularCorretive;
		uniform float _Specular;
		uniform float _Roughness;
		uniform sampler2D _AlphaMap;
		uniform float _Opacity;


inline float2 POM( sampler2D heightMap, float2 uvs, float2 dx, float2 dy, float3 normalWorld, float3 viewWorld, float3 viewDirTan, int minSamples, int maxSamples, int sidewallSteps, float parallax, float refPlane, float2 tilling, float2 curv, int index )
{
	float3 result = 0;
	int stepIndex = 0;
	int numSteps = ( int )lerp( (float)maxSamples, (float)minSamples, saturate( dot( normalWorld, viewWorld ) ) );
	float layerHeight = 1.0 / numSteps;
	float2 plane = parallax * ( viewDirTan.xy / viewDirTan.z );
	uvs.xy += refPlane * plane;
	float2 deltaTex = -plane * layerHeight;
	float2 prevTexOffset = 0;
	float prevRayZ = 1.0f;
	float prevHeight = 0.0f;
	float2 currTexOffset = deltaTex;
	float currRayZ = 1.0f - layerHeight;
	float currHeight = 0.0f;
	float intersection = 0;
	float2 finalTexOffset = 0;
	while ( stepIndex < numSteps + 1 )
	{
	 	currHeight = tex2Dgrad( heightMap, uvs + currTexOffset, dx, dy ).r;
	 	if ( currHeight > currRayZ )
	 	{
	 	 	stepIndex = numSteps + 1;
	 	}
	 	else
	 	{
	 	 	stepIndex++;
	 	 	prevTexOffset = currTexOffset;
	 	 	prevRayZ = currRayZ;
	 	 	prevHeight = currHeight;
	 	 	currTexOffset += deltaTex;
	 	 	currRayZ -= layerHeight;
	 	}
	}
	int sectionSteps = sidewallSteps;
	int sectionIndex = 0;
	float newZ = 0;
	float newHeight = 0;
	while ( sectionIndex < sectionSteps )
	{
	 	intersection = ( prevHeight - prevRayZ ) / ( prevHeight - currHeight + currRayZ - prevRayZ );
	 	finalTexOffset = prevTexOffset + intersection * deltaTex;
	 	newZ = prevRayZ - intersection * layerHeight;
	 	newHeight = tex2Dgrad( heightMap, uvs + finalTexOffset, dx, dy ).r;
	 	if ( newHeight > newZ )
	 	{
	 	 	currTexOffset = finalTexOffset;
	 	 	currHeight = newHeight;
	 	 	currRayZ = newZ;
	 	 	deltaTex = intersection * deltaTex;
	 	 	layerHeight = intersection * layerHeight;
	 	}
	 	else
	 	{
	 	 	prevTexOffset = finalTexOffset;
	 	 	prevHeight = newHeight;
	 	 	prevRayZ = newZ;
	 	 	deltaTex = ( 1 - intersection ) * deltaTex;
	 	 	layerHeight = ( 1 - intersection ) * layerHeight;
	 	}
	 	sectionIndex++;
	}
	return uvs.xy + finalTexOffset;
}


		inline float AudioLinkLerp3_g279( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g276( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g273( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g277( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g274( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g275( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		float3 HSVToRGB( float3 c )
		{
			float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
			float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
			return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
		}


		inline float AudioLinkLerp3_g287( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g284( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g281( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g285( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g282( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g283( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g271( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g268( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g265( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g269( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g266( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g267( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g263( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g260( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g257( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g261( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g258( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g259( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		float IfAudioLinkv2Exists1_g255(  )
		{
			int w = 0; 
			int h; 
			int res = 0;
			#ifndef SHADER_TARGET_SURFACE_ANALYSIS
			_AudioTexture.GetDimensions(w, h); 
			#endif
			if (w == 128) res = 1;
			return res;
		}


		void surf( Input i , inout SurfaceOutputStandardSpecular o )
		{
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST.xy + _MainTex_ST.zw;
			float2 MainUV238 = uv_MainTex;
			float2 temp_output_1_0_g253 = MainUV238;
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = Unity_SafeNormalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 ase_worldTangent = WorldNormalVector( i, float3( 1, 0, 0 ) );
			float3 ase_worldBitangent = WorldNormalVector( i, float3( 0, 1, 0 ) );
			float3x3 ase_worldToTangent = float3x3( ase_worldTangent, ase_worldBitangent, ase_worldNormal );
			float3 ase_tanViewDir = mul( ase_worldToTangent, ase_worldViewDir );
			float2 OffsetPOM7_g253 = POM( _ParallaxMap, temp_output_1_0_g253, ddx(temp_output_1_0_g253), ddy(temp_output_1_0_g253), ase_worldNormal, ase_worldViewDir, ase_tanViewDir, (int)_ParallaxMinSamples, (int)_ParallaxMaxSamples, (int)_ParallaxSideWallSteps, _Parallax, _ParallaxRefPlane, _ParallaxMap_ST.xy, float2(0,0), 0 );
			#ifdef _PARALLAXENABLE_ON
				float2 staticSwitch10_g253 = OffsetPOM7_g253;
			#else
				float2 staticSwitch10_g253 = temp_output_1_0_g253;
			#endif
			float2 MainUVFinal236 = staticSwitch10_g253;
			float2 uv_DetailNormalMap = i.uv_texcoord * _DetailNormalMap_ST.xy + _DetailNormalMap_ST.zw;
			float3 Normal64 = BlendNormals( UnpackScaleNormal( tex2D( _BumpMap, MainUVFinal236 ), _BumpScale ) , UnpackScaleNormal( tex2D( _DetailNormalMap, uv_DetailNormalMap ), _DetailNormalMapScale ) );
			o.Normal = Normal64;
			float4 Albedo63 = ( tex2D( _MainTex, uv_MainTex ) * _Color );
			float4 tex2DNode18 = tex2D( _PBRMap, MainUVFinal236 );
			float MetallicValue82 = tex2DNode18.r;
			float MetallicResult68 = ( MetallicValue82 * _Metallic );
			float4 lerpResult19 = lerp( Albedo63 , float4( 0,0,0,0 ) , MetallicResult68);
			float4 SpecularAlbedo72 = lerpResult19;
			o.Albedo = SpecularAlbedo72.rgb;
			float4 MainEmission88 = (( _EnableEmission )?( ( ( tex2D( _EmissionMap, MainUVFinal236 ) * _EmissionColor ) * _Emission ) ):( float4( 0,0,0,0 ) ));
			float4 MainEmission2222 = (( _EnableEmission2 )?( ( ( tex2D( _EmissionMap2, MainUVFinal236 ) * _EmissionColor2 ) * _Emission2 ) ):( float4( 0,0,0,0 ) ));
			float2 temp_output_286_0_g254 = MainUVFinal236;
			float4 GlowMap7_g254 = tex2D( _QGlowMap, temp_output_286_0_g254 );
			float4 break12_g254 = GlowMap7_g254;
			float GlowMap130_g254 = break12_g254.r;
			int temp_output_106_0_g272 = _QBlendMode1;
			int temp_output_27_0_g272 = _QBand1;
			int Band3_g279 = temp_output_27_0_g272;
			float4 DirectionMap5_g254 = tex2D( _QDirection, temp_output_286_0_g254 );
			float2 break287_g254 = temp_output_286_0_g254;
			float Direction11_g254 = (( _UseUVAsDirection )?( (( _UseUVAsDirectionUV )?( break287_g254.y ):( break287_g254.x )) ):( DirectionMap5_g254.r ));
			float temp_output_1_0_g272 = (( _QInvertDirection1 )?( ( 1.0 - Direction11_g254 ) ):( Direction11_g254 ));
			float temp_output_5_0_g272 = ( _QHistory1 * temp_output_1_0_g272 );
			float Delay3_g279 = (( _QSmoothHistory )?( temp_output_5_0_g272 ):( floor( temp_output_5_0_g272 ) ));
			float localAudioLinkLerp3_g279 = AudioLinkLerp3_g279( Band3_g279 , Delay3_g279 );
			float temp_output_8_0_g272 = localAudioLinkLerp3_g279;
			float4 temp_cast_4 = (temp_output_8_0_g272).xxxx;
			float4 temp_output_1_0_g278 = temp_cast_4;
			float4 break5_g278 = temp_output_1_0_g278;
			int temp_output_52_0_g272 = _QType1;
			float temp_output_29_0_g272 = _QColorOffset1;
			int Band6_g276 = temp_output_27_0_g272;
			int Mode6_g276 = ( ( (int)_QColorRotationMode1 * 2 ) + (int)_QColorRotationSpeed1 );
			int localAudioLinkDecodeDataAsUInt6_g276 = AudioLinkDecodeDataAsUInt6_g276( Band6_g276 , Mode6_g276 );
			float temp_output_55_0_g272 = ( ( ( localAudioLinkDecodeDataAsUInt6_g276 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g272 = ( temp_output_55_0_g272 * (int)(( _QUseColorRotation1 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g272 = _QEffectScale1;
			int Index1_g273 = (int)floor( ( frac( ( ( temp_output_29_0_g272 + temp_output_95_0_g272 ) * temp_output_103_0_g272 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g273 = AudioLinkData1_g273( Index1_g273 );
			float4 ifLocalVar49_g272 = 0;
			if( temp_output_52_0_g272 == 0.0 )
				ifLocalVar49_g272 = localAudioLinkData1_g273;
			int Index1_g277 = (int)floor( ( frac( ( ( temp_output_29_0_g272 + temp_output_95_0_g272 + temp_output_1_0_g272 ) * temp_output_103_0_g272 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g277 = AudioLinkData1_g277( Index1_g277 );
			float4 ifLocalVar79_g272 = 0;
			if( temp_output_52_0_g272 == 1.0 )
				ifLocalVar79_g272 = localAudioLinkData1_g277;
			float Position1_g274 = saturate( frac( ( ( temp_output_8_0_g272 + temp_output_29_0_g272 + temp_output_95_0_g272 ) * temp_output_103_0_g272 ) ) );
			float4 localAudioLinkLerp1_g274 = AudioLinkLerp1_g274( Position1_g274 );
			float4 ifLocalVar50_g272 = 0;
			if( temp_output_52_0_g272 == 2.0 )
				ifLocalVar50_g272 = localAudioLinkLerp1_g274;
			float Position1_g275 = saturate( frac( ( ( temp_output_29_0_g272 + temp_output_1_0_g272 + temp_output_95_0_g272 ) * temp_output_103_0_g272 ) ) );
			float4 localAudioLinkLerp1_g275 = AudioLinkLerp1_g275( Position1_g275 );
			float4 ifLocalVar51_g272 = 0;
			if( temp_output_52_0_g272 == 3.0 )
				ifLocalVar51_g272 = localAudioLinkLerp1_g275;
			float4 color111_g272 = IsGammaSpace() ? float4(1,1,1,0) : float4(1,1,1,0);
			float4 ifLocalVar110_g272 = 0;
			if( temp_output_52_0_g272 == 4.0 )
				ifLocalVar110_g272 = color111_g272;
			float3 hsvTorgb116_g272 = HSVToRGB( float3(temp_output_55_0_g272,1.0,1.0) );
			float3 ifLocalVar117_g272 = 0;
			if( temp_output_52_0_g272 == 5.0 )
				ifLocalVar117_g272 = hsvTorgb116_g272;
			float4 temp_output_53_0_g272 = ( ifLocalVar49_g272 + ifLocalVar79_g272 + ifLocalVar50_g272 + ifLocalVar51_g272 + ifLocalVar110_g272 + float4( ifLocalVar117_g272 , 0.0 ) );
			float4 temp_output_2_0_g278 = temp_output_53_0_g272;
			float4 ifLocalVar107_g272 = 0;
			if( temp_output_106_0_g272 == 0.0 )
				ifLocalVar107_g272 = ( ( ( break5_g278.r * 0.2 ) + ( break5_g278.g * 0.7 ) + ( break5_g278.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g278 * temp_output_2_0_g278 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g278 ) * ( 1.0 - temp_output_2_0_g278 ) ) ) );
			float4 ifLocalVar108_g272 = 0;
			if( temp_output_106_0_g272 == 1.0 )
				ifLocalVar108_g272 = ( temp_output_8_0_g272 * temp_output_53_0_g272 );
			float4 ifLocalVar112_g272 = 0;
			if( temp_output_106_0_g272 == 2.0 )
				ifLocalVar112_g272 = temp_output_53_0_g272;
			float GlowMap232_g254 = break12_g254.g;
			int temp_output_106_0_g280 = _QBlendMode2;
			int temp_output_27_0_g280 = _QBand2;
			int Band3_g287 = temp_output_27_0_g280;
			float temp_output_1_0_g280 = (( _QInvertDirection2 )?( ( 1.0 - Direction11_g254 ) ):( Direction11_g254 ));
			float temp_output_5_0_g280 = ( _QHistory2 * temp_output_1_0_g280 );
			float Delay3_g287 = (( _QSmoothHistory )?( temp_output_5_0_g280 ):( floor( temp_output_5_0_g280 ) ));
			float localAudioLinkLerp3_g287 = AudioLinkLerp3_g287( Band3_g287 , Delay3_g287 );
			float temp_output_8_0_g280 = localAudioLinkLerp3_g287;
			float4 temp_cast_19 = (temp_output_8_0_g280).xxxx;
			float4 temp_output_1_0_g286 = temp_cast_19;
			float4 break5_g286 = temp_output_1_0_g286;
			int temp_output_52_0_g280 = _QType2;
			float temp_output_29_0_g280 = _QColorOffset2;
			int Band6_g284 = temp_output_27_0_g280;
			int Mode6_g284 = ( ( (int)_QColorRotationMode2 * 2 ) + (int)_QColorRotationSpeed2 );
			int localAudioLinkDecodeDataAsUInt6_g284 = AudioLinkDecodeDataAsUInt6_g284( Band6_g284 , Mode6_g284 );
			float temp_output_55_0_g280 = ( ( ( localAudioLinkDecodeDataAsUInt6_g284 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g280 = ( temp_output_55_0_g280 * (int)(( _QUseColorRotation2 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g280 = _QEffectScale2;
			int Index1_g281 = (int)floor( ( frac( ( ( temp_output_29_0_g280 + temp_output_95_0_g280 ) * temp_output_103_0_g280 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g281 = AudioLinkData1_g281( Index1_g281 );
			float4 ifLocalVar49_g280 = 0;
			if( temp_output_52_0_g280 == 0.0 )
				ifLocalVar49_g280 = localAudioLinkData1_g281;
			int Index1_g285 = (int)floor( ( frac( ( ( temp_output_29_0_g280 + temp_output_95_0_g280 + temp_output_1_0_g280 ) * temp_output_103_0_g280 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g285 = AudioLinkData1_g285( Index1_g285 );
			float4 ifLocalVar79_g280 = 0;
			if( temp_output_52_0_g280 == 1.0 )
				ifLocalVar79_g280 = localAudioLinkData1_g285;
			float Position1_g282 = saturate( frac( ( ( temp_output_8_0_g280 + temp_output_29_0_g280 + temp_output_95_0_g280 ) * temp_output_103_0_g280 ) ) );
			float4 localAudioLinkLerp1_g282 = AudioLinkLerp1_g282( Position1_g282 );
			float4 ifLocalVar50_g280 = 0;
			if( temp_output_52_0_g280 == 2.0 )
				ifLocalVar50_g280 = localAudioLinkLerp1_g282;
			float Position1_g283 = saturate( frac( ( ( temp_output_29_0_g280 + temp_output_1_0_g280 + temp_output_95_0_g280 ) * temp_output_103_0_g280 ) ) );
			float4 localAudioLinkLerp1_g283 = AudioLinkLerp1_g283( Position1_g283 );
			float4 ifLocalVar51_g280 = 0;
			if( temp_output_52_0_g280 == 3.0 )
				ifLocalVar51_g280 = localAudioLinkLerp1_g283;
			float4 color111_g280 = IsGammaSpace() ? float4(1,1,1,0) : float4(1,1,1,0);
			float4 ifLocalVar110_g280 = 0;
			if( temp_output_52_0_g280 == 4.0 )
				ifLocalVar110_g280 = color111_g280;
			float3 hsvTorgb116_g280 = HSVToRGB( float3(temp_output_55_0_g280,1.0,1.0) );
			float3 ifLocalVar117_g280 = 0;
			if( temp_output_52_0_g280 == 5.0 )
				ifLocalVar117_g280 = hsvTorgb116_g280;
			float4 temp_output_53_0_g280 = ( ifLocalVar49_g280 + ifLocalVar79_g280 + ifLocalVar50_g280 + ifLocalVar51_g280 + ifLocalVar110_g280 + float4( ifLocalVar117_g280 , 0.0 ) );
			float4 temp_output_2_0_g286 = temp_output_53_0_g280;
			float4 ifLocalVar107_g280 = 0;
			if( temp_output_106_0_g280 == 0.0 )
				ifLocalVar107_g280 = ( ( ( break5_g286.r * 0.2 ) + ( break5_g286.g * 0.7 ) + ( break5_g286.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g286 * temp_output_2_0_g286 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g286 ) * ( 1.0 - temp_output_2_0_g286 ) ) ) );
			float4 ifLocalVar108_g280 = 0;
			if( temp_output_106_0_g280 == 1.0 )
				ifLocalVar108_g280 = ( temp_output_8_0_g280 * temp_output_53_0_g280 );
			float4 ifLocalVar112_g280 = 0;
			if( temp_output_106_0_g280 == 2.0 )
				ifLocalVar112_g280 = temp_output_53_0_g280;
			float GlowMap331_g254 = break12_g254.b;
			int temp_output_106_0_g264 = _QBlendMode3;
			int temp_output_27_0_g264 = _QBand3;
			int Band3_g271 = temp_output_27_0_g264;
			float temp_output_1_0_g264 = (( _QInvertDirection3 )?( ( 1.0 - Direction11_g254 ) ):( Direction11_g254 ));
			float temp_output_5_0_g264 = ( _QHistory3 * temp_output_1_0_g264 );
			float Delay3_g271 = (( _QSmoothHistory )?( temp_output_5_0_g264 ):( floor( temp_output_5_0_g264 ) ));
			float localAudioLinkLerp3_g271 = AudioLinkLerp3_g271( Band3_g271 , Delay3_g271 );
			float temp_output_8_0_g264 = localAudioLinkLerp3_g271;
			float4 temp_cast_34 = (temp_output_8_0_g264).xxxx;
			float4 temp_output_1_0_g270 = temp_cast_34;
			float4 break5_g270 = temp_output_1_0_g270;
			int temp_output_52_0_g264 = _QType3;
			float temp_output_29_0_g264 = _QColorOffset3;
			int Band6_g268 = temp_output_27_0_g264;
			int Mode6_g268 = ( ( (int)_QColorRotationMode3 * 2 ) + (int)_QColorRotationSpeed3 );
			int localAudioLinkDecodeDataAsUInt6_g268 = AudioLinkDecodeDataAsUInt6_g268( Band6_g268 , Mode6_g268 );
			float temp_output_55_0_g264 = ( ( ( localAudioLinkDecodeDataAsUInt6_g268 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g264 = ( temp_output_55_0_g264 * (int)(( _QUseColorRotation3 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g264 = _QEffectScale3;
			int Index1_g265 = (int)floor( ( frac( ( ( temp_output_29_0_g264 + temp_output_95_0_g264 ) * temp_output_103_0_g264 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g265 = AudioLinkData1_g265( Index1_g265 );
			float4 ifLocalVar49_g264 = 0;
			if( temp_output_52_0_g264 == 0.0 )
				ifLocalVar49_g264 = localAudioLinkData1_g265;
			int Index1_g269 = (int)floor( ( frac( ( ( temp_output_29_0_g264 + temp_output_95_0_g264 + temp_output_1_0_g264 ) * temp_output_103_0_g264 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g269 = AudioLinkData1_g269( Index1_g269 );
			float4 ifLocalVar79_g264 = 0;
			if( temp_output_52_0_g264 == 1.0 )
				ifLocalVar79_g264 = localAudioLinkData1_g269;
			float Position1_g266 = saturate( frac( ( ( temp_output_8_0_g264 + temp_output_29_0_g264 + temp_output_95_0_g264 ) * temp_output_103_0_g264 ) ) );
			float4 localAudioLinkLerp1_g266 = AudioLinkLerp1_g266( Position1_g266 );
			float4 ifLocalVar50_g264 = 0;
			if( temp_output_52_0_g264 == 2.0 )
				ifLocalVar50_g264 = localAudioLinkLerp1_g266;
			float Position1_g267 = saturate( frac( ( ( temp_output_29_0_g264 + temp_output_1_0_g264 + temp_output_95_0_g264 ) * temp_output_103_0_g264 ) ) );
			float4 localAudioLinkLerp1_g267 = AudioLinkLerp1_g267( Position1_g267 );
			float4 ifLocalVar51_g264 = 0;
			if( temp_output_52_0_g264 == 3.0 )
				ifLocalVar51_g264 = localAudioLinkLerp1_g267;
			float4 color111_g264 = IsGammaSpace() ? float4(1,1,1,0) : float4(1,1,1,0);
			float4 ifLocalVar110_g264 = 0;
			if( temp_output_52_0_g264 == 4.0 )
				ifLocalVar110_g264 = color111_g264;
			float3 hsvTorgb116_g264 = HSVToRGB( float3(temp_output_55_0_g264,1.0,1.0) );
			float3 ifLocalVar117_g264 = 0;
			if( temp_output_52_0_g264 == 5.0 )
				ifLocalVar117_g264 = hsvTorgb116_g264;
			float4 temp_output_53_0_g264 = ( ifLocalVar49_g264 + ifLocalVar79_g264 + ifLocalVar50_g264 + ifLocalVar51_g264 + ifLocalVar110_g264 + float4( ifLocalVar117_g264 , 0.0 ) );
			float4 temp_output_2_0_g270 = temp_output_53_0_g264;
			float4 ifLocalVar107_g264 = 0;
			if( temp_output_106_0_g264 == 0.0 )
				ifLocalVar107_g264 = ( ( ( break5_g270.r * 0.2 ) + ( break5_g270.g * 0.7 ) + ( break5_g270.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g270 * temp_output_2_0_g270 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g270 ) * ( 1.0 - temp_output_2_0_g270 ) ) ) );
			float4 ifLocalVar108_g264 = 0;
			if( temp_output_106_0_g264 == 1.0 )
				ifLocalVar108_g264 = ( temp_output_8_0_g264 * temp_output_53_0_g264 );
			float4 ifLocalVar112_g264 = 0;
			if( temp_output_106_0_g264 == 2.0 )
				ifLocalVar112_g264 = temp_output_53_0_g264;
			float GlowMap433_g254 = break12_g254.a;
			int temp_output_106_0_g256 = _QBlendMode4;
			int temp_output_27_0_g256 = _QBand4;
			int Band3_g263 = temp_output_27_0_g256;
			float temp_output_1_0_g256 = (( _QInvertDirection4 )?( ( 1.0 - Direction11_g254 ) ):( Direction11_g254 ));
			float temp_output_5_0_g256 = ( _QHistory4 * temp_output_1_0_g256 );
			float Delay3_g263 = (( _QSmoothHistory )?( temp_output_5_0_g256 ):( floor( temp_output_5_0_g256 ) ));
			float localAudioLinkLerp3_g263 = AudioLinkLerp3_g263( Band3_g263 , Delay3_g263 );
			float temp_output_8_0_g256 = localAudioLinkLerp3_g263;
			float4 temp_cast_49 = (temp_output_8_0_g256).xxxx;
			float4 temp_output_1_0_g262 = temp_cast_49;
			float4 break5_g262 = temp_output_1_0_g262;
			int temp_output_52_0_g256 = _QType4;
			float temp_output_29_0_g256 = _QColorOffset4;
			int Band6_g260 = temp_output_27_0_g256;
			int Mode6_g260 = ( ( (int)_QColorRotationMode4 * 2 ) + (int)_QColorRotationSpeed4 );
			int localAudioLinkDecodeDataAsUInt6_g260 = AudioLinkDecodeDataAsUInt6_g260( Band6_g260 , Mode6_g260 );
			float temp_output_55_0_g256 = ( ( ( localAudioLinkDecodeDataAsUInt6_g260 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g256 = ( temp_output_55_0_g256 * (int)(( _QUseColorRotation4 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g256 = _QEffectScale4;
			int Index1_g257 = (int)floor( ( frac( ( ( temp_output_29_0_g256 + temp_output_95_0_g256 ) * temp_output_103_0_g256 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g257 = AudioLinkData1_g257( Index1_g257 );
			float4 ifLocalVar49_g256 = 0;
			if( temp_output_52_0_g256 == 0.0 )
				ifLocalVar49_g256 = localAudioLinkData1_g257;
			int Index1_g261 = (int)floor( ( frac( ( ( temp_output_29_0_g256 + temp_output_95_0_g256 + temp_output_1_0_g256 ) * temp_output_103_0_g256 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g261 = AudioLinkData1_g261( Index1_g261 );
			float4 ifLocalVar79_g256 = 0;
			if( temp_output_52_0_g256 == 1.0 )
				ifLocalVar79_g256 = localAudioLinkData1_g261;
			float Position1_g258 = saturate( frac( ( ( temp_output_8_0_g256 + temp_output_29_0_g256 + temp_output_95_0_g256 ) * temp_output_103_0_g256 ) ) );
			float4 localAudioLinkLerp1_g258 = AudioLinkLerp1_g258( Position1_g258 );
			float4 ifLocalVar50_g256 = 0;
			if( temp_output_52_0_g256 == 2.0 )
				ifLocalVar50_g256 = localAudioLinkLerp1_g258;
			float Position1_g259 = saturate( frac( ( ( temp_output_29_0_g256 + temp_output_1_0_g256 + temp_output_95_0_g256 ) * temp_output_103_0_g256 ) ) );
			float4 localAudioLinkLerp1_g259 = AudioLinkLerp1_g259( Position1_g259 );
			float4 ifLocalVar51_g256 = 0;
			if( temp_output_52_0_g256 == 3.0 )
				ifLocalVar51_g256 = localAudioLinkLerp1_g259;
			float4 color111_g256 = IsGammaSpace() ? float4(1,1,1,0) : float4(1,1,1,0);
			float4 ifLocalVar110_g256 = 0;
			if( temp_output_52_0_g256 == 4.0 )
				ifLocalVar110_g256 = color111_g256;
			float3 hsvTorgb116_g256 = HSVToRGB( float3(temp_output_55_0_g256,1.0,1.0) );
			float3 ifLocalVar117_g256 = 0;
			if( temp_output_52_0_g256 == 5.0 )
				ifLocalVar117_g256 = hsvTorgb116_g256;
			float4 temp_output_53_0_g256 = ( ifLocalVar49_g256 + ifLocalVar79_g256 + ifLocalVar50_g256 + ifLocalVar51_g256 + ifLocalVar110_g256 + float4( ifLocalVar117_g256 , 0.0 ) );
			float4 temp_output_2_0_g262 = temp_output_53_0_g256;
			float4 ifLocalVar107_g256 = 0;
			if( temp_output_106_0_g256 == 0.0 )
				ifLocalVar107_g256 = ( ( ( break5_g262.r * 0.2 ) + ( break5_g262.g * 0.7 ) + ( break5_g262.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g262 * temp_output_2_0_g262 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g262 ) * ( 1.0 - temp_output_2_0_g262 ) ) ) );
			float4 ifLocalVar108_g256 = 0;
			if( temp_output_106_0_g256 == 1.0 )
				ifLocalVar108_g256 = ( temp_output_8_0_g256 * temp_output_53_0_g256 );
			float4 ifLocalVar112_g256 = 0;
			if( temp_output_106_0_g256 == 2.0 )
				ifLocalVar112_g256 = temp_output_53_0_g256;
			float localIfAudioLinkv2Exists1_g255 = IfAudioLinkv2Exists1_g255();
			float4 lerpResult55_g254 = lerp( float4( 0,0,0,0 ) , ( _QuantumGlowColor * ( (( _QBandEnable1 )?( ( _QGlowColorBand1 * ( GlowMap130_g254 * ( ifLocalVar107_g272 + ifLocalVar108_g272 + ifLocalVar112_g272 ) ) * _QuantumGlowMultiply1 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable2 )?( ( _QGlowColorBand2 * ( GlowMap232_g254 * ( ifLocalVar107_g280 + ifLocalVar108_g280 + ifLocalVar112_g280 ) ) * _QuantumGlowMultiply2 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable3 )?( ( _QGlowColorBand3 * ( GlowMap331_g254 * ( ifLocalVar107_g264 + ifLocalVar108_g264 + ifLocalVar112_g264 ) ) * _QuantumGlowMultiply3 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable4 )?( ( _QGlowColorBand4 * ( GlowMap433_g254 * ( ifLocalVar107_g256 + ifLocalVar108_g256 + ifLocalVar112_g256 ) ) * _QuantumGlowMultiply4 ) ):( float4( 0,0,0,0 ) )) ) * _QuantumGlowMultiplyGlobal ) , localIfAudioLinkv2Exists1_g255);
			float4 Emission179 = ( MainEmission88 + MainEmission2222 + (( _QEnableGlobal )?( lerpResult55_g254 ):( float4( 0,0,0,0 ) )) );
			o.Emission = Emission179.rgb;
			float SpecularValue83 = tex2DNode18.g;
			float SpecularResult78 = ( SpecularValue83 * _SpecularCorretive * _Specular );
			float4 temp_cast_65 = (SpecularResult78).xxxx;
			float4 lerpResult20 = lerp( temp_cast_65 , Albedo63 , MetallicResult68);
			float4 SpecularMap73 = lerpResult20;
			o.Specular = SpecularMap73.rgb;
			float RoghnessValue84 = tex2DNode18.b;
			float Smoothness76 = ( 1.0 - ( RoghnessValue84 * _Roughness ) );
			o.Smoothness = Smoothness76;
			float4 tex2DNode211 = tex2D( _AlphaMap, MainUVFinal236 );
			float AlphaMap210 = saturate( ( tex2DNode211.r * _Opacity ) );
			o.Alpha = AlphaMap210;
			float AlphaMask224 = tex2DNode211.r;
			clip( AlphaMask224 - _Cutoff );
		}

		ENDCG
		CGPROGRAM
		#pragma surface surf StandardSpecular keepalpha fullforwardshadows 

		ENDCG
		Pass
		{
			Name "ShadowCaster"
			Tags{ "LightMode" = "ShadowCaster" }
			ZWrite On
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma target 4.0
			#pragma multi_compile_shadowcaster
			#pragma multi_compile UNITY_PASS_SHADOWCASTER
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#include "HLSLSupport.cginc"
			#if ( SHADER_API_D3D11 || SHADER_API_GLCORE || SHADER_API_GLES || SHADER_API_GLES3 || SHADER_API_METAL || SHADER_API_VULKAN )
				#define CAN_SKIP_VPOS
			#endif
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			sampler3D _DitherMaskLOD;
			struct v2f
			{
				V2F_SHADOW_CASTER;
				float2 customPack1 : TEXCOORD1;
				float4 tSpace0 : TEXCOORD2;
				float4 tSpace1 : TEXCOORD3;
				float4 tSpace2 : TEXCOORD4;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
			v2f vert( appdata_full v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_INITIALIZE_OUTPUT( v2f, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				Input customInputData;
				float3 worldPos = mul( unity_ObjectToWorld, v.vertex ).xyz;
				half3 worldNormal = UnityObjectToWorldNormal( v.normal );
				half3 worldTangent = UnityObjectToWorldDir( v.tangent.xyz );
				half tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				half3 worldBinormal = cross( worldNormal, worldTangent ) * tangentSign;
				o.tSpace0 = float4( worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x );
				o.tSpace1 = float4( worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y );
				o.tSpace2 = float4( worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z );
				o.customPack1.xy = customInputData.uv_texcoord;
				o.customPack1.xy = v.texcoord;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET( o )
				return o;
			}
			half4 frag( v2f IN
			#if !defined( CAN_SKIP_VPOS )
			, UNITY_VPOS_TYPE vpos : VPOS
			#endif
			) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				Input surfIN;
				UNITY_INITIALIZE_OUTPUT( Input, surfIN );
				surfIN.uv_texcoord = IN.customPack1.xy;
				float3 worldPos = float3( IN.tSpace0.w, IN.tSpace1.w, IN.tSpace2.w );
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
				surfIN.worldPos = worldPos;
				surfIN.worldNormal = float3( IN.tSpace0.z, IN.tSpace1.z, IN.tSpace2.z );
				surfIN.internalSurfaceTtoW0 = IN.tSpace0.xyz;
				surfIN.internalSurfaceTtoW1 = IN.tSpace1.xyz;
				surfIN.internalSurfaceTtoW2 = IN.tSpace2.xyz;
				SurfaceOutputStandardSpecular o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputStandardSpecular, o )
				surf( surfIN, o );
				#if defined( CAN_SKIP_VPOS )
				float2 vpos = IN.pos;
				#endif
				half alphaRef = tex3D( _DitherMaskLOD, float3( vpos.xy * 0.25, o.Alpha * 0.9375 ) ).a;
				clip( alphaRef - 0.01 );
				SHADOW_CASTER_FRAGMENT( IN )
			}
			ENDCG
		}
	}
	Fallback "Diffuse"
	CustomEditor "Saphi.QuantumShader.QuantumShaderUI"
}
/*ASEBEGIN
Version=19603
Node;AmplifyShaderEditor.CommentaryNode;202;-3118.295,158;Inherit;False;2872.75;2538.139;Base Textures;54;209;204;195;203;210;64;211;208;212;207;14;15;205;206;12;88;63;201;84;10;200;9;11;82;83;199;56;5;18;53;52;4;16;55;215;225;226;227;229;230;231;232;233;234;235;236;237;238;239;240;241;242;244;245;;1,1,1,1;0;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;234;-1888,400;Inherit;False;0;4;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;238;-1616,400;Inherit;False;MainUV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;235;-2016,528;Inherit;False;238;MainUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;244;-1808,528;Inherit;False;UVHandling;0;;252;c17d079c1ac3cf440936a2325286a38a;0;1;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;236;-1616,528;Inherit;False;MainUVFinal;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexturePropertyNode;55;-1936,1552;Inherit;True;Property;_EmissionMap;Emission Map;11;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;16;-1936,1296;Inherit;True;Property;_PBRMap;Packed PBR Map;22;0;Create;False;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;215;-1968,1984;Inherit;True;Property;_EmissionMap2;Emission Map 2;12;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode;239;-1648,1344;Inherit;False;236;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;240;-1648,1600;Inherit;False;236;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;241;-1680,2048;Inherit;False;236;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexturePropertyNode;4;-1920,208;Inherit;True;Property;_MainTex;Main Tex;9;0;Create;True;0;0;0;False;0;False;None;a16b3161c8c05f54ba87ec06bfdd6b82;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.ColorNode;52;-1392,1760;Inherit;False;Property;_EmissionColor;Emission Color;16;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;4,4,4,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;53;-1424,1552;Inherit;True;Property;_TextureSample5;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;18;-1424,1296;Inherit;True;Property;_TextureSample2;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;216;-1456,1984;Inherit;True;Property;_TextureSample10;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;217;-1424,2192;Inherit;False;Property;_EmissionColor2;Emission Color2;15;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;4,4,4,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.CommentaryNode;98;-144,1280;Inherit;False;852;339;Specular Color;5;36;50;86;78;38;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;93;-160,960;Inherit;False;820;243;Metallic Map;4;34;35;85;68;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;5;-1616,208;Inherit;False;MainTexTex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;56;-1040,1552;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;199;-1040,1680;Inherit;False;Property;_Emission;Emission;108;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;83;-816,1312;Inherit;False;SpecularValue;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;82;-816,1232;Inherit;False;MetallicValue;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;218;-1168,1984;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;219;-1168,2096;Inherit;False;Property;_Emission2;Emission2;111;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;86;-96,1328;Inherit;False;83;SpecularValue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;85;-112,1008;Inherit;False;82;MetallicValue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;50;-96,1504;Inherit;False;Property;_Specular;Specular;25;0;Create;False;0;0;0;False;0;False;0.5;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;36;-96,1424;Inherit;False;Property;_SpecularCorretive;Specular Corretive;24;0;Create;False;0;0;0;False;0;False;0.1;0.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;11;-1344,416;Inherit;False;Property;_Color;Color;10;0;Create;False;0;0;0;False;0;False;0,0,0,0;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;9;-1408,208;Inherit;True;Property;_TextureSample0;Texture Sample 0;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;200;-848,1552;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;35;-112,1088;Inherit;False;Property;_Metallic;Metallic;23;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;220;-1008,1984;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;95;-144,1712;Inherit;False;1044;259;Roughness;5;37;87;39;42;76;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;38;240,1328;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;34;192,1008;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;10;-928,208;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;84;-816,1392;Inherit;False;RoghnessValue;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;201;-704,1552;Inherit;False;Property;_EnableEmission;EnableEmission;107;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;221;-864,1984;Inherit;False;Property;_EnableEmission2;EnableEmission2;109;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;212;-1936,2448;Inherit;True;Property;_AlphaMap;AlphaMap;13;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode;242;-1648,2464;Inherit;False;236;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;92;-160,496;Inherit;False;788;323;Specular Map (dielectric = grayscale | metallic = albedo);5;70;67;79;20;73;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;91;-160,160;Inherit;False;820;243;Specular albedo (metallic = black);4;66;69;19;72;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;68;416,1008;Inherit;False;MetallicResult;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;78;464,1328;Inherit;False;SpecularResult;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;87;-96,1760;Inherit;False;84;RoghnessValue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;37;-96,1856;Inherit;False;Property;_Roughness;Roughness;27;0;Create;True;0;0;0;False;0;False;0.5;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;63;-736,208;Inherit;False;Albedo;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;88;-480,1552;Inherit;False;MainEmission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;12;-1920,656;Inherit;True;Property;_BumpMap;NormalMap;17;0;Create;False;0;0;0;False;0;False;None;aef25913bc0271f498e5006238d33577;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;206;-1920,896;Inherit;True;Property;_DetailNormalMap;Detail Normal Map;18;0;Create;False;0;0;0;False;0;False;None;aef25913bc0271f498e5006238d33577;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;205;-1680,1008;Inherit;False;Property;_DetailNormalMapScale;Detail Normal Map Scale;21;0;Create;False;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;15;-1696,768;Inherit;False;Property;_BumpScale;Normal Scale;19;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;222;-656,1984;Inherit;False;MainEmission2;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;211;-1456,2448;Inherit;True;Property;_TextureSample9;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RangedFloatNode;227;-1168,2480;Inherit;False;Property;_Opacity;Opacity;14;0;Create;True;0;0;0;False;0;False;1;8.33;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;237;-1632,704;Inherit;False;236;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;243;-208,2384;Inherit;False;236;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;70;-112,704;Inherit;False;68;MetallicResult;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;67;-80,624;Inherit;False;63;Albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;79;-112,544;Inherit;False;78;SpecularResult;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;66;-96,208;Inherit;False;63;Albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;69;-112,288;Inherit;False;68;MetallicResult;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;39;256,1760;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;14;-1408,656;Inherit;True;Property;_TextureSample1;Texture Sample 1;3;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;207;-1408,896;Inherit;True;Property;_TextureSample8;Texture Sample 1;3;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.GetLocalVarNode;89;-64,2224;Inherit;False;88;MainEmission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;223;-64,2304;Inherit;False;222;MainEmission2;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;214;-32,2384;Inherit;False;QuatumGlow;28;;254;7730a8711ab108044bac907ea573069c;0;1;286;FLOAT2;0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;226;-864,2464;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;20;192,544;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;19;160,208;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;42;448,1760;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendNormalsNode;208;-1024,656;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;176;192,2224;Inherit;True;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;225;-688,2464;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;97;912,160;Inherit;False;660;675;Output;8;77;75;65;74;81;0;213;228;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;76;656,1760;Inherit;False;Smoothness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;72;416,208;Inherit;False;SpecularAlbedo;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;73;384,544;Inherit;False;SpecularMap;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;64;-768,656;Inherit;False;Normal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;179;416,2224;Inherit;False;Emission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;210;-528,2464;Inherit;False;AlphaMap;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;224;-576,2560;Inherit;False;AlphaMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;77;992,560;Inherit;False;76;Smoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;75;992,464;Inherit;False;73;SpecularMap;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;74;960,208;Inherit;False;72;SpecularAlbedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;65;992,288;Inherit;False;64;Normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;81;960,384;Inherit;False;179;Emission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;203;-2672,336;Inherit;False;Property;_ShowRendering;ShowRendering;110;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;195;-2672,240;Inherit;False;Property;_ShowMain;ShowMain;106;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;228;976,736;Inherit;False;224;AlphaMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;213;976,656;Inherit;False;210;AlphaMap;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;209;-3024,240;Inherit;False;Property;_Cutoff;Cutoff;20;0;Create;True;0;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;204;-2848,336;Inherit;False;Property;_Culling;Culling;26;1;[Enum];Create;False;0;1;Option1;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;229;-3024,704;Inherit;False;Property;_BlendMode;BlendMode;105;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;230;-3040,800;Inherit;False;Property;_BlendModeSrc;BlendModeSrc;104;1;[Enum];Create;True;0;1;Option1;0;1;UnityEngine.Rendering.BlendMode;True;0;False;5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;231;-2816,800;Inherit;False;Property;_BlendModeDst;BlendModeDst;103;1;[Enum];Create;True;0;1;Option1;0;1;UnityEngine.Rendering.BlendMode;True;0;False;10;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;232;-2880,528;Inherit;False;Property;_ShaderType;ShaderType;101;0;Create;True;0;0;0;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;233;-2880,432;Inherit;False;Property;_RenderType;RenderType;102;0;Create;True;0;0;0;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;245;-2672,432;Inherit;False;Property;_ShowParallax;ShowParallax;112;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;1296,336;Float;False;True;-1;4;Saphi.QuantumShader.QuantumShaderUI;0;0;StandardSpecular;Saphi/QuantumShaderPackedPBRTransparent;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;Back;0;False;;0;False;;False;0;False;;0;False;;False;0;Custom;0.5;True;True;0;True;Custom;;Transparent;All;12;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;1;5;True;_BlendModeSrc;10;True;_BlendModeDst;0;0;False;;0;False;;0;False;;0;False;;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;;-1;-1;-1;-1;0;False;0;0;True;_Culling;-1;0;True;_Cutoff;1;Include;;True;1ec20832dfbb48343b8e0764e0864276;Custom;False;0;0;;0;0;False;0.1;False;;0;False;;False;17;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;16;FLOAT4;0,0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;238;0;234;0
WireConnection;244;1;235;0
WireConnection;236;0;244;0
WireConnection;53;0;55;0
WireConnection;53;1;240;0
WireConnection;18;0;16;0
WireConnection;18;1;239;0
WireConnection;216;0;215;0
WireConnection;216;1;241;0
WireConnection;5;0;4;0
WireConnection;56;0;53;0
WireConnection;56;1;52;0
WireConnection;83;0;18;2
WireConnection;82;0;18;1
WireConnection;218;0;216;0
WireConnection;218;1;217;0
WireConnection;9;0;5;0
WireConnection;200;0;56;0
WireConnection;200;1;199;0
WireConnection;220;0;218;0
WireConnection;220;1;219;0
WireConnection;38;0;86;0
WireConnection;38;1;36;0
WireConnection;38;2;50;0
WireConnection;34;0;85;0
WireConnection;34;1;35;0
WireConnection;10;0;9;0
WireConnection;10;1;11;0
WireConnection;84;0;18;3
WireConnection;201;1;200;0
WireConnection;221;1;220;0
WireConnection;68;0;34;0
WireConnection;78;0;38;0
WireConnection;63;0;10;0
WireConnection;88;0;201;0
WireConnection;222;0;221;0
WireConnection;211;0;212;0
WireConnection;211;1;242;0
WireConnection;39;0;87;0
WireConnection;39;1;37;0
WireConnection;14;0;12;0
WireConnection;14;1;237;0
WireConnection;14;5;15;0
WireConnection;207;0;206;0
WireConnection;207;5;205;0
WireConnection;214;286;243;0
WireConnection;226;0;211;1
WireConnection;226;1;227;0
WireConnection;20;0;79;0
WireConnection;20;1;67;0
WireConnection;20;2;70;0
WireConnection;19;0;66;0
WireConnection;19;2;69;0
WireConnection;42;0;39;0
WireConnection;208;0;14;0
WireConnection;208;1;207;0
WireConnection;176;0;89;0
WireConnection;176;1;223;0
WireConnection;176;2;214;0
WireConnection;225;0;226;0
WireConnection;76;0;42;0
WireConnection;72;0;19;0
WireConnection;73;0;20;0
WireConnection;64;0;208;0
WireConnection;179;0;176;0
WireConnection;210;0;225;0
WireConnection;224;0;211;1
WireConnection;0;0;74;0
WireConnection;0;1;65;0
WireConnection;0;2;81;0
WireConnection;0;3;75;0
WireConnection;0;4;77;0
WireConnection;0;9;213;0
WireConnection;0;10;228;0
ASEEND*/
//CHKSM=5365D62AD516BF6376ED58D5A6FEFF3CC4667CE3