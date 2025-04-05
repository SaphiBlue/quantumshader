// Made with Amplify Shader Editor v1.9.8.1
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Saphi/QuantumShaderSpecularCutout"
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
		_EmissionMap2("Emission Map 2", 2D) = "black" {}
		_EmissionMap("Emission Map", 2D) = "white" {}
		_AlphaMap("AlphaMap", 2D) = "white" {}
		[HDR]_EmissionColor2("Emission Color2", Color) = (0,0,0,0)
		[HDR]_EmissionColor("Emission Color", Color) = (0,0,0,0)
		_BumpMap("NormalMap", 2D) = "bump" {}
		_BumpScale("Normal Scale", Range( 0 , 1)) = 1
		_Cutoff("Cutoff", Range( 0 , 1)) = 0.5
		_DetailNormalMap("Detail Normal Map", 2D) = "bump" {}
		_SpecularTextureChannel("Specular Map", 2D) = "black" {}
		_DetailNormalMapScale("Detail Normal Map Scale", Range( 0 , 1)) = 1
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
		[Toggle]_UseUVAsDirection("UseUVAsDirection", Float) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_QDirectionUVIndex("DirectionUVIndex", Int) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_QGlowMapUVIndex("GlowMapUVIndex", Int) = 0
		_ShaderType("ShaderType", Float) = 0
		_RenderType("RenderType", Float) = 1
		_Glossiness("Glossiness", Range( 0 , 1)) = 1
		[HideInInspector] _texcoord2( "", 2D ) = "white" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] _texcoord3( "", 2D ) = "white" {}
		[HideInInspector] _texcoord4( "", 2D ) = "white" {}
		[Enum(UnityEngine.Rendering.CullMode)]_Culling("Culling", Float) = 2
		_ShowMain("ShowMain", Float) = 0
		[Toggle]_EnableEmission("EnableEmission", Float) = 0
		_Emission("Emission", Float) = 1
		_ShowRendering("ShowRendering", Float) = 0
		[Toggle]_EnableEmission2("EnableEmission2", Float) = 0
		_Emission2("Emission2", Float) = 1
		_ShowParallax("ShowParallax", Float) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_DetailUVIndex("DetailUVIndex", Int) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_AlphaUVIndex("AlphaUVIndex", Int) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_MainUVIndex("MainUVIndex", Int) = 0
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "TransparentCutout"  "Queue" = "AlphaTest+0" "IsEmissive" = "true"  }
		Cull [_Culling]
		CGINCLUDE
		#include "UnityStandardUtils.cginc"
		#include "UnityStandardBRDF.cginc"
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 4.0
		#pragma shader_feature_local _PARALLAXENABLE_ON
		#define ASE_VERSION 19801
		#include "Packages/com.llealloo.audiolink/Runtime/Shaders/AudioLink.cginc"
		#ifdef UNITY_PASS_SHADOWCASTER
			#undef INTERNAL_DATA
			#undef WorldReflectionVector
			#undef WorldNormalVector
			#define INTERNAL_DATA half3 internalSurfaceTtoW0; half3 internalSurfaceTtoW1; half3 internalSurfaceTtoW2;
			#define WorldReflectionVector(data,normal) reflect (data.worldRefl, half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal)))
			#define WorldNormalVector(data,normal) half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal))
		#endif

		struct appdata_full_custom
		{
			float4 vertex : POSITION;
			float4 tangent : TANGENT;
			float3 normal : NORMAL;
			float4 texcoord : TEXCOORD0;
			float4 texcoord1 : TEXCOORD1;
			float4 texcoord2 : TEXCOORD2;
			float4 texcoord3 : TEXCOORD3;
			float4 color : COLOR;
			UNITY_VERTEX_INPUT_INSTANCE_ID
			float4 ase_texcoord4 : TEXCOORD4;
		};
		struct Input
		{
			float2 uv_texcoord;
			float2 uv2_texcoord2;
			float2 uv3_texcoord3;
			float2 uv4_texcoord4;
			float2 ase_texcoord5;
			float3 viewDir;
			INTERNAL_DATA
			float3 worldNormal;
			float3 worldPos;
		};

		uniform float _ShowQuantumBand3;
		uniform float _ShowQuantumBand4;
		uniform float _ShowQuantumBand2;
		uniform int _QBlendMode2;
		uniform float _ShowQuantum;
		uniform float _ShowQuantumBand1;
		uniform int _QGlowMapUVIndex;
		uniform int _QDirectionUVIndex;
		uniform float _ShowRendering;
		uniform float _Culling;
		uniform float _ShowMain;
		uniform float _ShaderType;
		uniform float _RenderType;
		uniform float _ShowParallax;
		uniform sampler2D _BumpMap;
		uniform sampler2D _MainTex;
		uniform float4 _MainTex_ST;
		uniform int _MainUVIndex;
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
		uniform int _DetailUVIndex;
		uniform float _DetailNormalMapScale;
		uniform float4 _Color;
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
		uniform float4 _QGlowMap_ST;
		uniform int _QBlendMode1;
		uniform int _QBand1;
		uniform float _QSmoothHistory;
		uniform float _QHistory1;
		uniform float _QInvertDirection1;
		uniform float _UseUVAsDirection;
		uniform sampler2D _QDirection;
		uniform float4 _QDirection_ST;
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
		uniform sampler2D _SpecularTextureChannel;
		uniform float _Glossiness;
		uniform sampler2D _AlphaMap;
		uniform float4 _AlphaMap_ST;
		uniform int _AlphaUVIndex;
		uniform float _Cutoff;


		inline float2 POM( sampler2D heightMap, float2 uvs, float2 dx, float2 dy, float3 normalWorld, float3 viewWorld, float3 viewDirTan, int minSamples, int maxSamples, int sidewallSteps, float parallax, float refPlane, float2 tilling, float2 curv, int index )
		{
			float3 result = 0;
			float stepIndex = 0;
			float numSteps = floor( lerp( (float)maxSamples, (float)minSamples, saturate( dot( normalWorld, viewWorld ) ) ) );
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
			float sectionSteps = sidewallSteps;
			float sectionIndex = 0;
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


		inline float AudioLinkLerp3_g402( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g399( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g396( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g400( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g397( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g398( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		float3 HSVToRGB( float3 c )
		{
			float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
			float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
			return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
		}


		inline float AudioLinkLerp3_g410( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g407( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g404( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g408( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g405( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g406( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g394( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g391( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g388( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g392( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g389( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g390( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g386( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g383( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g380( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g384( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g381( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g382( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		float IfAudioLinkv2Exists1_g378(  )
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


		void vertexDataFunc( inout appdata_full_custom v, out Input o )
		{
			UNITY_INITIALIZE_OUTPUT( Input, o );
			o.ase_texcoord5 = v.ase_texcoord4;
		}

		void surf( Input i , inout SurfaceOutputStandardSpecular o )
		{
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST.xy + _MainTex_ST.zw;
			float2 uv2_MainTex = i.uv2_texcoord2 * _MainTex_ST.xy + _MainTex_ST.zw;
			int temp_output_18_0_g369 = _MainUVIndex;
			float2 lerpResult22_g369 = lerp( uv_MainTex , uv2_MainTex , (float)saturate( temp_output_18_0_g369 ));
			float2 uv3_MainTex = i.uv3_texcoord3 * _MainTex_ST.xy + _MainTex_ST.zw;
			int temp_output_26_0_g369 = ( temp_output_18_0_g369 - 1 );
			float2 lerpResult25_g369 = lerp( lerpResult22_g369 , uv3_MainTex , (float)saturate( temp_output_26_0_g369 ));
			float2 uv4_MainTex = i.uv4_texcoord4 * _MainTex_ST.xy + _MainTex_ST.zw;
			int temp_output_31_0_g369 = ( temp_output_26_0_g369 - 1 );
			float2 lerpResult29_g369 = lerp( lerpResult25_g369 , uv4_MainTex , (float)saturate( temp_output_31_0_g369 ));
			float2 uv5_MainTex = i.ase_texcoord5 * _MainTex_ST.xy + _MainTex_ST.zw;
			float2 lerpResult35_g369 = lerp( lerpResult29_g369 , uv5_MainTex.xy , (float)saturate( ( temp_output_31_0_g369 - 1 ) ));
			float2 MainUV233 = lerpResult35_g369;
			float2 temp_output_1_0_g371 = MainUV233;
			float3 ase_normalWS = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 ase_positionWS = i.worldPos;
			float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_positionWS );
			float3 ase_viewDirWS = normalize( ase_viewVectorWS );
			float2 OffsetPOM7_g371 = POM( _ParallaxMap, temp_output_1_0_g371, ddx(temp_output_1_0_g371), ddy(temp_output_1_0_g371), ase_normalWS, ase_viewDirWS, Unity_SafeNormalize( i.viewDir ), (int)_ParallaxMinSamples, (int)_ParallaxMaxSamples, (int)_ParallaxSideWallSteps, _Parallax, _ParallaxRefPlane, _ParallaxMap_ST.xy, float2(0,0), 0 );
			#ifdef _PARALLAXENABLE_ON
				float2 staticSwitch10_g371 = OffsetPOM7_g371;
			#else
				float2 staticSwitch10_g371 = temp_output_1_0_g371;
			#endif
			float2 MainUVFinal234 = staticSwitch10_g371;
			float2 uv_DetailNormalMap = i.uv_texcoord * _DetailNormalMap_ST.xy + _DetailNormalMap_ST.zw;
			float2 uv2_DetailNormalMap = i.uv2_texcoord2 * _DetailNormalMap_ST.xy + _DetailNormalMap_ST.zw;
			int temp_output_18_0_g373 = _DetailUVIndex;
			float2 lerpResult22_g373 = lerp( uv_DetailNormalMap , uv2_DetailNormalMap , (float)saturate( temp_output_18_0_g373 ));
			float2 uv3_DetailNormalMap = i.uv3_texcoord3 * _DetailNormalMap_ST.xy + _DetailNormalMap_ST.zw;
			int temp_output_26_0_g373 = ( temp_output_18_0_g373 - 1 );
			float2 lerpResult25_g373 = lerp( lerpResult22_g373 , uv3_DetailNormalMap , (float)saturate( temp_output_26_0_g373 ));
			float2 uv4_DetailNormalMap = i.uv4_texcoord4 * _DetailNormalMap_ST.xy + _DetailNormalMap_ST.zw;
			int temp_output_31_0_g373 = ( temp_output_26_0_g373 - 1 );
			float2 lerpResult29_g373 = lerp( lerpResult25_g373 , uv4_DetailNormalMap , (float)saturate( temp_output_31_0_g373 ));
			float2 uv5_DetailNormalMap = i.ase_texcoord5 * _DetailNormalMap_ST.xy + _DetailNormalMap_ST.zw;
			float2 lerpResult35_g373 = lerp( lerpResult29_g373 , uv5_DetailNormalMap.xy , (float)saturate( ( temp_output_31_0_g373 - 1 ) ));
			float3 Normal64 = BlendNormals( UnpackScaleNormal( tex2D( _BumpMap, MainUVFinal234 ), _BumpScale ) , UnpackScaleNormal( tex2D( _DetailNormalMap, lerpResult35_g373 ), _DetailNormalMapScale ) );
			o.Normal = Normal64;
			float4 Albedo63 = ( tex2D( _MainTex, MainUVFinal234 ) * _Color );
			o.Albedo = Albedo63.rgb;
			float4 MainEmission88 = (( _EnableEmission )?( ( ( tex2D( _EmissionMap, MainUVFinal234 ) * _EmissionColor ) * _Emission ) ):( float4( 0,0,0,0 ) ));
			float4 MainEmission2226 = (( _EnableEmission2 )?( ( ( tex2D( _EmissionMap2, MainUVFinal234 ) * _EmissionColor2 ) * _Emission2 ) ):( float4( 0,0,0,0 ) ));
			float2 uv_QGlowMap = i.uv_texcoord * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			float2 uv2_QGlowMap = i.uv2_texcoord2 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			int temp_output_18_0_g412 = _QGlowMapUVIndex;
			float2 lerpResult22_g412 = lerp( uv_QGlowMap , uv2_QGlowMap , (float)saturate( temp_output_18_0_g412 ));
			float2 uv3_QGlowMap = i.uv3_texcoord3 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			int temp_output_26_0_g412 = ( temp_output_18_0_g412 - 1 );
			float2 lerpResult25_g412 = lerp( lerpResult22_g412 , uv3_QGlowMap , (float)saturate( temp_output_26_0_g412 ));
			float2 uv4_QGlowMap = i.uv4_texcoord4 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			int temp_output_31_0_g412 = ( temp_output_26_0_g412 - 1 );
			float2 lerpResult29_g412 = lerp( lerpResult25_g412 , uv4_QGlowMap , (float)saturate( temp_output_31_0_g412 ));
			float2 uv5_QGlowMap = i.ase_texcoord5 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			float2 lerpResult35_g412 = lerp( lerpResult29_g412 , uv5_QGlowMap.xy , (float)saturate( ( temp_output_31_0_g412 - 1 ) ));
			float4 GlowMap7_g377 = tex2D( _QGlowMap, lerpResult35_g412 );
			float4 break12_g377 = GlowMap7_g377;
			float GlowMap130_g377 = break12_g377.r;
			int temp_output_106_0_g395 = _QBlendMode1;
			int temp_output_27_0_g395 = _QBand1;
			int Band3_g402 = temp_output_27_0_g395;
			float2 uv_QDirection = i.uv_texcoord * _QDirection_ST.xy + _QDirection_ST.zw;
			float2 uv2_QDirection = i.uv2_texcoord2 * _QDirection_ST.xy + _QDirection_ST.zw;
			int temp_output_18_0_g411 = _QDirectionUVIndex;
			float2 lerpResult22_g411 = lerp( uv_QDirection , uv2_QDirection , (float)saturate( temp_output_18_0_g411 ));
			float2 uv3_QDirection = i.uv3_texcoord3 * _QDirection_ST.xy + _QDirection_ST.zw;
			int temp_output_26_0_g411 = ( temp_output_18_0_g411 - 1 );
			float2 lerpResult25_g411 = lerp( lerpResult22_g411 , uv3_QDirection , (float)saturate( temp_output_26_0_g411 ));
			float2 uv4_QDirection = i.uv4_texcoord4 * _QDirection_ST.xy + _QDirection_ST.zw;
			int temp_output_31_0_g411 = ( temp_output_26_0_g411 - 1 );
			float2 lerpResult29_g411 = lerp( lerpResult25_g411 , uv4_QDirection , (float)saturate( temp_output_31_0_g411 ));
			float2 uv5_QDirection = i.ase_texcoord5 * _QDirection_ST.xy + _QDirection_ST.zw;
			float2 lerpResult35_g411 = lerp( lerpResult29_g411 , uv5_QDirection.xy , (float)saturate( ( temp_output_31_0_g411 - 1 ) ));
			float2 temp_output_288_0_g377 = lerpResult35_g411;
			float4 DirectionMap5_g377 = tex2D( _QDirection, temp_output_288_0_g377 );
			float2 break287_g377 = temp_output_288_0_g377;
			float Direction11_g377 = (( _UseUVAsDirection )?( (( _UseUVAsDirectionUV )?( break287_g377.y ):( break287_g377.x )) ):( DirectionMap5_g377.r ));
			float temp_output_1_0_g395 = (( _QInvertDirection1 )?( ( 1.0 - Direction11_g377 ) ):( Direction11_g377 ));
			float temp_output_5_0_g395 = ( _QHistory1 * temp_output_1_0_g395 );
			float Delay3_g402 = (( _QSmoothHistory )?( temp_output_5_0_g395 ):( floor( temp_output_5_0_g395 ) ));
			float localAudioLinkLerp3_g402 = AudioLinkLerp3_g402( Band3_g402 , Delay3_g402 );
			float temp_output_8_0_g395 = localAudioLinkLerp3_g402;
			float4 temp_cast_20 = (temp_output_8_0_g395).xxxx;
			float4 temp_output_1_0_g401 = temp_cast_20;
			float4 break5_g401 = temp_output_1_0_g401;
			int temp_output_52_0_g395 = _QType1;
			float temp_output_29_0_g395 = _QColorOffset1;
			int Band6_g399 = temp_output_27_0_g395;
			int Mode6_g399 = ( ( (int)_QColorRotationMode1 * 2 ) + (int)_QColorRotationSpeed1 );
			int localAudioLinkDecodeDataAsUInt6_g399 = AudioLinkDecodeDataAsUInt6_g399( Band6_g399 , Mode6_g399 );
			float temp_output_55_0_g395 = ( ( ( localAudioLinkDecodeDataAsUInt6_g399 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g395 = ( temp_output_55_0_g395 * (int)(( _QUseColorRotation1 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g395 = _QEffectScale1;
			int Index1_g396 = (int)floor( ( frac( ( ( temp_output_29_0_g395 + temp_output_95_0_g395 ) * temp_output_103_0_g395 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g396 = AudioLinkData1_g396( Index1_g396 );
			float4 ifLocalVar49_g395 = 0;
			if( temp_output_52_0_g395 == 0.0 )
				ifLocalVar49_g395 = localAudioLinkData1_g396;
			int Index1_g400 = (int)floor( ( frac( ( ( temp_output_29_0_g395 + temp_output_95_0_g395 + temp_output_1_0_g395 ) * temp_output_103_0_g395 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g400 = AudioLinkData1_g400( Index1_g400 );
			float4 ifLocalVar79_g395 = 0;
			if( temp_output_52_0_g395 == 1.0 )
				ifLocalVar79_g395 = localAudioLinkData1_g400;
			float Position1_g397 = saturate( frac( ( ( temp_output_8_0_g395 + temp_output_29_0_g395 + temp_output_95_0_g395 ) * temp_output_103_0_g395 ) ) );
			float4 localAudioLinkLerp1_g397 = AudioLinkLerp1_g397( Position1_g397 );
			float4 ifLocalVar50_g395 = 0;
			if( temp_output_52_0_g395 == 2.0 )
				ifLocalVar50_g395 = localAudioLinkLerp1_g397;
			float Position1_g398 = saturate( frac( ( ( temp_output_29_0_g395 + temp_output_1_0_g395 + temp_output_95_0_g395 ) * temp_output_103_0_g395 ) ) );
			float4 localAudioLinkLerp1_g398 = AudioLinkLerp1_g398( Position1_g398 );
			float4 ifLocalVar51_g395 = 0;
			if( temp_output_52_0_g395 == 3.0 )
				ifLocalVar51_g395 = localAudioLinkLerp1_g398;
			float4 color111_g395 = IsGammaSpace() ? float4(1,1,1,0) : float4(1,1,1,0);
			float4 ifLocalVar110_g395 = 0;
			if( temp_output_52_0_g395 == 4.0 )
				ifLocalVar110_g395 = color111_g395;
			float3 hsvTorgb116_g395 = HSVToRGB( float3(temp_output_55_0_g395,1.0,1.0) );
			float3 ifLocalVar117_g395 = 0;
			if( temp_output_52_0_g395 == 5.0 )
				ifLocalVar117_g395 = hsvTorgb116_g395;
			float4 temp_output_53_0_g395 = ( ifLocalVar49_g395 + ifLocalVar79_g395 + ifLocalVar50_g395 + ifLocalVar51_g395 + ifLocalVar110_g395 + float4( ifLocalVar117_g395 , 0.0 ) );
			float4 temp_output_2_0_g401 = temp_output_53_0_g395;
			float4 ifLocalVar107_g395 = 0;
			if( temp_output_106_0_g395 == 0.0 )
				ifLocalVar107_g395 = ( ( ( break5_g401.r * 0.2 ) + ( break5_g401.g * 0.7 ) + ( break5_g401.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g401 * temp_output_2_0_g401 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g401 ) * ( 1.0 - temp_output_2_0_g401 ) ) ) );
			float4 ifLocalVar108_g395 = 0;
			if( temp_output_106_0_g395 == 1.0 )
				ifLocalVar108_g395 = ( temp_output_8_0_g395 * temp_output_53_0_g395 );
			float4 ifLocalVar112_g395 = 0;
			if( temp_output_106_0_g395 == 2.0 )
				ifLocalVar112_g395 = temp_output_53_0_g395;
			float GlowMap232_g377 = break12_g377.g;
			int temp_output_106_0_g403 = _QBlendMode2;
			int temp_output_27_0_g403 = _QBand2;
			int Band3_g410 = temp_output_27_0_g403;
			float temp_output_1_0_g403 = (( _QInvertDirection2 )?( ( 1.0 - Direction11_g377 ) ):( Direction11_g377 ));
			float temp_output_5_0_g403 = ( _QHistory2 * temp_output_1_0_g403 );
			float Delay3_g410 = (( _QSmoothHistory )?( temp_output_5_0_g403 ):( floor( temp_output_5_0_g403 ) ));
			float localAudioLinkLerp3_g410 = AudioLinkLerp3_g410( Band3_g410 , Delay3_g410 );
			float temp_output_8_0_g403 = localAudioLinkLerp3_g410;
			float4 temp_cast_35 = (temp_output_8_0_g403).xxxx;
			float4 temp_output_1_0_g409 = temp_cast_35;
			float4 break5_g409 = temp_output_1_0_g409;
			int temp_output_52_0_g403 = _QType2;
			float temp_output_29_0_g403 = _QColorOffset2;
			int Band6_g407 = temp_output_27_0_g403;
			int Mode6_g407 = ( ( (int)_QColorRotationMode2 * 2 ) + (int)_QColorRotationSpeed2 );
			int localAudioLinkDecodeDataAsUInt6_g407 = AudioLinkDecodeDataAsUInt6_g407( Band6_g407 , Mode6_g407 );
			float temp_output_55_0_g403 = ( ( ( localAudioLinkDecodeDataAsUInt6_g407 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g403 = ( temp_output_55_0_g403 * (int)(( _QUseColorRotation2 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g403 = _QEffectScale2;
			int Index1_g404 = (int)floor( ( frac( ( ( temp_output_29_0_g403 + temp_output_95_0_g403 ) * temp_output_103_0_g403 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g404 = AudioLinkData1_g404( Index1_g404 );
			float4 ifLocalVar49_g403 = 0;
			if( temp_output_52_0_g403 == 0.0 )
				ifLocalVar49_g403 = localAudioLinkData1_g404;
			int Index1_g408 = (int)floor( ( frac( ( ( temp_output_29_0_g403 + temp_output_95_0_g403 + temp_output_1_0_g403 ) * temp_output_103_0_g403 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g408 = AudioLinkData1_g408( Index1_g408 );
			float4 ifLocalVar79_g403 = 0;
			if( temp_output_52_0_g403 == 1.0 )
				ifLocalVar79_g403 = localAudioLinkData1_g408;
			float Position1_g405 = saturate( frac( ( ( temp_output_8_0_g403 + temp_output_29_0_g403 + temp_output_95_0_g403 ) * temp_output_103_0_g403 ) ) );
			float4 localAudioLinkLerp1_g405 = AudioLinkLerp1_g405( Position1_g405 );
			float4 ifLocalVar50_g403 = 0;
			if( temp_output_52_0_g403 == 2.0 )
				ifLocalVar50_g403 = localAudioLinkLerp1_g405;
			float Position1_g406 = saturate( frac( ( ( temp_output_29_0_g403 + temp_output_1_0_g403 + temp_output_95_0_g403 ) * temp_output_103_0_g403 ) ) );
			float4 localAudioLinkLerp1_g406 = AudioLinkLerp1_g406( Position1_g406 );
			float4 ifLocalVar51_g403 = 0;
			if( temp_output_52_0_g403 == 3.0 )
				ifLocalVar51_g403 = localAudioLinkLerp1_g406;
			float4 color111_g403 = IsGammaSpace() ? float4(1,1,1,0) : float4(1,1,1,0);
			float4 ifLocalVar110_g403 = 0;
			if( temp_output_52_0_g403 == 4.0 )
				ifLocalVar110_g403 = color111_g403;
			float3 hsvTorgb116_g403 = HSVToRGB( float3(temp_output_55_0_g403,1.0,1.0) );
			float3 ifLocalVar117_g403 = 0;
			if( temp_output_52_0_g403 == 5.0 )
				ifLocalVar117_g403 = hsvTorgb116_g403;
			float4 temp_output_53_0_g403 = ( ifLocalVar49_g403 + ifLocalVar79_g403 + ifLocalVar50_g403 + ifLocalVar51_g403 + ifLocalVar110_g403 + float4( ifLocalVar117_g403 , 0.0 ) );
			float4 temp_output_2_0_g409 = temp_output_53_0_g403;
			float4 ifLocalVar107_g403 = 0;
			if( temp_output_106_0_g403 == 0.0 )
				ifLocalVar107_g403 = ( ( ( break5_g409.r * 0.2 ) + ( break5_g409.g * 0.7 ) + ( break5_g409.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g409 * temp_output_2_0_g409 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g409 ) * ( 1.0 - temp_output_2_0_g409 ) ) ) );
			float4 ifLocalVar108_g403 = 0;
			if( temp_output_106_0_g403 == 1.0 )
				ifLocalVar108_g403 = ( temp_output_8_0_g403 * temp_output_53_0_g403 );
			float4 ifLocalVar112_g403 = 0;
			if( temp_output_106_0_g403 == 2.0 )
				ifLocalVar112_g403 = temp_output_53_0_g403;
			float GlowMap331_g377 = break12_g377.b;
			int temp_output_106_0_g387 = _QBlendMode3;
			int temp_output_27_0_g387 = _QBand3;
			int Band3_g394 = temp_output_27_0_g387;
			float temp_output_1_0_g387 = (( _QInvertDirection3 )?( ( 1.0 - Direction11_g377 ) ):( Direction11_g377 ));
			float temp_output_5_0_g387 = ( _QHistory3 * temp_output_1_0_g387 );
			float Delay3_g394 = (( _QSmoothHistory )?( temp_output_5_0_g387 ):( floor( temp_output_5_0_g387 ) ));
			float localAudioLinkLerp3_g394 = AudioLinkLerp3_g394( Band3_g394 , Delay3_g394 );
			float temp_output_8_0_g387 = localAudioLinkLerp3_g394;
			float4 temp_cast_50 = (temp_output_8_0_g387).xxxx;
			float4 temp_output_1_0_g393 = temp_cast_50;
			float4 break5_g393 = temp_output_1_0_g393;
			int temp_output_52_0_g387 = _QType3;
			float temp_output_29_0_g387 = _QColorOffset3;
			int Band6_g391 = temp_output_27_0_g387;
			int Mode6_g391 = ( ( (int)_QColorRotationMode3 * 2 ) + (int)_QColorRotationSpeed3 );
			int localAudioLinkDecodeDataAsUInt6_g391 = AudioLinkDecodeDataAsUInt6_g391( Band6_g391 , Mode6_g391 );
			float temp_output_55_0_g387 = ( ( ( localAudioLinkDecodeDataAsUInt6_g391 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g387 = ( temp_output_55_0_g387 * (int)(( _QUseColorRotation3 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g387 = _QEffectScale3;
			int Index1_g388 = (int)floor( ( frac( ( ( temp_output_29_0_g387 + temp_output_95_0_g387 ) * temp_output_103_0_g387 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g388 = AudioLinkData1_g388( Index1_g388 );
			float4 ifLocalVar49_g387 = 0;
			if( temp_output_52_0_g387 == 0.0 )
				ifLocalVar49_g387 = localAudioLinkData1_g388;
			int Index1_g392 = (int)floor( ( frac( ( ( temp_output_29_0_g387 + temp_output_95_0_g387 + temp_output_1_0_g387 ) * temp_output_103_0_g387 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g392 = AudioLinkData1_g392( Index1_g392 );
			float4 ifLocalVar79_g387 = 0;
			if( temp_output_52_0_g387 == 1.0 )
				ifLocalVar79_g387 = localAudioLinkData1_g392;
			float Position1_g389 = saturate( frac( ( ( temp_output_8_0_g387 + temp_output_29_0_g387 + temp_output_95_0_g387 ) * temp_output_103_0_g387 ) ) );
			float4 localAudioLinkLerp1_g389 = AudioLinkLerp1_g389( Position1_g389 );
			float4 ifLocalVar50_g387 = 0;
			if( temp_output_52_0_g387 == 2.0 )
				ifLocalVar50_g387 = localAudioLinkLerp1_g389;
			float Position1_g390 = saturate( frac( ( ( temp_output_29_0_g387 + temp_output_1_0_g387 + temp_output_95_0_g387 ) * temp_output_103_0_g387 ) ) );
			float4 localAudioLinkLerp1_g390 = AudioLinkLerp1_g390( Position1_g390 );
			float4 ifLocalVar51_g387 = 0;
			if( temp_output_52_0_g387 == 3.0 )
				ifLocalVar51_g387 = localAudioLinkLerp1_g390;
			float4 color111_g387 = IsGammaSpace() ? float4(1,1,1,0) : float4(1,1,1,0);
			float4 ifLocalVar110_g387 = 0;
			if( temp_output_52_0_g387 == 4.0 )
				ifLocalVar110_g387 = color111_g387;
			float3 hsvTorgb116_g387 = HSVToRGB( float3(temp_output_55_0_g387,1.0,1.0) );
			float3 ifLocalVar117_g387 = 0;
			if( temp_output_52_0_g387 == 5.0 )
				ifLocalVar117_g387 = hsvTorgb116_g387;
			float4 temp_output_53_0_g387 = ( ifLocalVar49_g387 + ifLocalVar79_g387 + ifLocalVar50_g387 + ifLocalVar51_g387 + ifLocalVar110_g387 + float4( ifLocalVar117_g387 , 0.0 ) );
			float4 temp_output_2_0_g393 = temp_output_53_0_g387;
			float4 ifLocalVar107_g387 = 0;
			if( temp_output_106_0_g387 == 0.0 )
				ifLocalVar107_g387 = ( ( ( break5_g393.r * 0.2 ) + ( break5_g393.g * 0.7 ) + ( break5_g393.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g393 * temp_output_2_0_g393 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g393 ) * ( 1.0 - temp_output_2_0_g393 ) ) ) );
			float4 ifLocalVar108_g387 = 0;
			if( temp_output_106_0_g387 == 1.0 )
				ifLocalVar108_g387 = ( temp_output_8_0_g387 * temp_output_53_0_g387 );
			float4 ifLocalVar112_g387 = 0;
			if( temp_output_106_0_g387 == 2.0 )
				ifLocalVar112_g387 = temp_output_53_0_g387;
			float GlowMap433_g377 = break12_g377.a;
			int temp_output_106_0_g379 = _QBlendMode4;
			int temp_output_27_0_g379 = _QBand4;
			int Band3_g386 = temp_output_27_0_g379;
			float temp_output_1_0_g379 = (( _QInvertDirection4 )?( ( 1.0 - Direction11_g377 ) ):( Direction11_g377 ));
			float temp_output_5_0_g379 = ( _QHistory4 * temp_output_1_0_g379 );
			float Delay3_g386 = (( _QSmoothHistory )?( temp_output_5_0_g379 ):( floor( temp_output_5_0_g379 ) ));
			float localAudioLinkLerp3_g386 = AudioLinkLerp3_g386( Band3_g386 , Delay3_g386 );
			float temp_output_8_0_g379 = localAudioLinkLerp3_g386;
			float4 temp_cast_65 = (temp_output_8_0_g379).xxxx;
			float4 temp_output_1_0_g385 = temp_cast_65;
			float4 break5_g385 = temp_output_1_0_g385;
			int temp_output_52_0_g379 = _QType4;
			float temp_output_29_0_g379 = _QColorOffset4;
			int Band6_g383 = temp_output_27_0_g379;
			int Mode6_g383 = ( ( (int)_QColorRotationMode4 * 2 ) + (int)_QColorRotationSpeed4 );
			int localAudioLinkDecodeDataAsUInt6_g383 = AudioLinkDecodeDataAsUInt6_g383( Band6_g383 , Mode6_g383 );
			float temp_output_55_0_g379 = ( ( ( localAudioLinkDecodeDataAsUInt6_g383 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g379 = ( temp_output_55_0_g379 * (int)(( _QUseColorRotation4 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g379 = _QEffectScale4;
			int Index1_g380 = (int)floor( ( frac( ( ( temp_output_29_0_g379 + temp_output_95_0_g379 ) * temp_output_103_0_g379 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g380 = AudioLinkData1_g380( Index1_g380 );
			float4 ifLocalVar49_g379 = 0;
			if( temp_output_52_0_g379 == 0.0 )
				ifLocalVar49_g379 = localAudioLinkData1_g380;
			int Index1_g384 = (int)floor( ( frac( ( ( temp_output_29_0_g379 + temp_output_95_0_g379 + temp_output_1_0_g379 ) * temp_output_103_0_g379 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g384 = AudioLinkData1_g384( Index1_g384 );
			float4 ifLocalVar79_g379 = 0;
			if( temp_output_52_0_g379 == 1.0 )
				ifLocalVar79_g379 = localAudioLinkData1_g384;
			float Position1_g381 = saturate( frac( ( ( temp_output_8_0_g379 + temp_output_29_0_g379 + temp_output_95_0_g379 ) * temp_output_103_0_g379 ) ) );
			float4 localAudioLinkLerp1_g381 = AudioLinkLerp1_g381( Position1_g381 );
			float4 ifLocalVar50_g379 = 0;
			if( temp_output_52_0_g379 == 2.0 )
				ifLocalVar50_g379 = localAudioLinkLerp1_g381;
			float Position1_g382 = saturate( frac( ( ( temp_output_29_0_g379 + temp_output_1_0_g379 + temp_output_95_0_g379 ) * temp_output_103_0_g379 ) ) );
			float4 localAudioLinkLerp1_g382 = AudioLinkLerp1_g382( Position1_g382 );
			float4 ifLocalVar51_g379 = 0;
			if( temp_output_52_0_g379 == 3.0 )
				ifLocalVar51_g379 = localAudioLinkLerp1_g382;
			float4 color111_g379 = IsGammaSpace() ? float4(1,1,1,0) : float4(1,1,1,0);
			float4 ifLocalVar110_g379 = 0;
			if( temp_output_52_0_g379 == 4.0 )
				ifLocalVar110_g379 = color111_g379;
			float3 hsvTorgb116_g379 = HSVToRGB( float3(temp_output_55_0_g379,1.0,1.0) );
			float3 ifLocalVar117_g379 = 0;
			if( temp_output_52_0_g379 == 5.0 )
				ifLocalVar117_g379 = hsvTorgb116_g379;
			float4 temp_output_53_0_g379 = ( ifLocalVar49_g379 + ifLocalVar79_g379 + ifLocalVar50_g379 + ifLocalVar51_g379 + ifLocalVar110_g379 + float4( ifLocalVar117_g379 , 0.0 ) );
			float4 temp_output_2_0_g385 = temp_output_53_0_g379;
			float4 ifLocalVar107_g379 = 0;
			if( temp_output_106_0_g379 == 0.0 )
				ifLocalVar107_g379 = ( ( ( break5_g385.r * 0.2 ) + ( break5_g385.g * 0.7 ) + ( break5_g385.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g385 * temp_output_2_0_g385 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g385 ) * ( 1.0 - temp_output_2_0_g385 ) ) ) );
			float4 ifLocalVar108_g379 = 0;
			if( temp_output_106_0_g379 == 1.0 )
				ifLocalVar108_g379 = ( temp_output_8_0_g379 * temp_output_53_0_g379 );
			float4 ifLocalVar112_g379 = 0;
			if( temp_output_106_0_g379 == 2.0 )
				ifLocalVar112_g379 = temp_output_53_0_g379;
			float localIfAudioLinkv2Exists1_g378 = IfAudioLinkv2Exists1_g378();
			float4 lerpResult55_g377 = lerp( float4( 0,0,0,0 ) , ( _QuantumGlowColor * ( (( _QBandEnable1 )?( ( _QGlowColorBand1 * ( GlowMap130_g377 * ( ifLocalVar107_g395 + ifLocalVar108_g395 + ifLocalVar112_g395 ) ) * _QuantumGlowMultiply1 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable2 )?( ( _QGlowColorBand2 * ( GlowMap232_g377 * ( ifLocalVar107_g403 + ifLocalVar108_g403 + ifLocalVar112_g403 ) ) * _QuantumGlowMultiply2 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable3 )?( ( _QGlowColorBand3 * ( GlowMap331_g377 * ( ifLocalVar107_g387 + ifLocalVar108_g387 + ifLocalVar112_g387 ) ) * _QuantumGlowMultiply3 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable4 )?( ( _QGlowColorBand4 * ( GlowMap433_g377 * ( ifLocalVar107_g379 + ifLocalVar108_g379 + ifLocalVar112_g379 ) ) * _QuantumGlowMultiply4 ) ):( float4( 0,0,0,0 ) )) ) * _QuantumGlowMultiplyGlobal ) , localIfAudioLinkv2Exists1_g378);
			float4 Emission179 = ( MainEmission88 + MainEmission2226 + (( _QEnableGlobal )?( lerpResult55_g377 ):( float4( 0,0,0,0 ) )) );
			o.Emission = Emission179.rgb;
			float4 Specular83 = tex2D( _SpecularTextureChannel, MainUVFinal234 );
			float4 break199 = Specular83;
			float4 appendResult200 = (float4(break199.r , break199.g , break199.b , 0.0));
			o.Specular = appendResult200.xyz;
			o.Smoothness = ( break199.a * _Glossiness );
			o.Alpha = 1;
			float2 uv_AlphaMap = i.uv_texcoord * _AlphaMap_ST.xy + _AlphaMap_ST.zw;
			float2 uv2_AlphaMap = i.uv2_texcoord2 * _AlphaMap_ST.xy + _AlphaMap_ST.zw;
			int temp_output_18_0_g374 = _AlphaUVIndex;
			float2 lerpResult22_g374 = lerp( uv_AlphaMap , uv2_AlphaMap , (float)saturate( temp_output_18_0_g374 ));
			float2 uv3_AlphaMap = i.uv3_texcoord3 * _AlphaMap_ST.xy + _AlphaMap_ST.zw;
			int temp_output_26_0_g374 = ( temp_output_18_0_g374 - 1 );
			float2 lerpResult25_g374 = lerp( lerpResult22_g374 , uv3_AlphaMap , (float)saturate( temp_output_26_0_g374 ));
			float2 uv4_AlphaMap = i.uv4_texcoord4 * _AlphaMap_ST.xy + _AlphaMap_ST.zw;
			int temp_output_31_0_g374 = ( temp_output_26_0_g374 - 1 );
			float2 lerpResult29_g374 = lerp( lerpResult25_g374 , uv4_AlphaMap , (float)saturate( temp_output_31_0_g374 ));
			float2 uv5_AlphaMap = i.ase_texcoord5 * _AlphaMap_ST.xy + _AlphaMap_ST.zw;
			float2 lerpResult35_g374 = lerp( lerpResult29_g374 , uv5_AlphaMap.xy , (float)saturate( ( temp_output_31_0_g374 - 1 ) ));
			float AlphaMap214 = tex2D( _AlphaMap, lerpResult35_g374 ).r;
			clip( AlphaMap214 - _Cutoff );
		}

		ENDCG
		CGPROGRAM
		#pragma surface surf StandardSpecular keepalpha fullforwardshadows vertex:vertexDataFunc 

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
			struct v2f
			{
				V2F_SHADOW_CASTER;
				float4 customPack1 : TEXCOORD1;
				float4 customPack2 : TEXCOORD2;
				float2 customPack3 : TEXCOORD3;
				float4 tSpace0 : TEXCOORD4;
				float4 tSpace1 : TEXCOORD5;
				float4 tSpace2 : TEXCOORD6;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
			v2f vert( appdata_full_custom v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_INITIALIZE_OUTPUT( v2f, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				Input customInputData;
				vertexDataFunc( v, customInputData );
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
				o.customPack1.zw = customInputData.uv2_texcoord2;
				o.customPack1.zw = v.texcoord1;
				o.customPack2.xy = customInputData.uv3_texcoord3;
				o.customPack2.xy = v.texcoord2;
				o.customPack2.zw = customInputData.uv4_texcoord4;
				o.customPack2.zw = v.texcoord3;
				o.customPack3.xy = customInputData.ase_texcoord5;
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
				surfIN.uv2_texcoord2 = IN.customPack1.zw;
				surfIN.uv3_texcoord3 = IN.customPack2.xy;
				surfIN.uv4_texcoord4 = IN.customPack2.zw;
				surfIN.ase_texcoord5 = IN.customPack3.xy;
				float3 worldPos = float3( IN.tSpace0.w, IN.tSpace1.w, IN.tSpace2.w );
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
				surfIN.viewDir = IN.tSpace0.xyz * worldViewDir.x + IN.tSpace1.xyz * worldViewDir.y + IN.tSpace2.xyz * worldViewDir.z;
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
				SHADOW_CASTER_FRAGMENT( IN )
			}
			ENDCG
		}
	}
	Fallback "Diffuse"
	CustomEditor "Saphi.QuantumShader.QuantumShaderUI"
}
/*ASEBEGIN
Version=19801
Node;AmplifyShaderEditor.CommentaryNode;204;-2639.555,158;Inherit;False;2616.409;2740.468;Base Textures;58;250;249;248;236;247;246;243;231;230;212;195;206;205;214;64;63;215;210;10;216;209;83;14;9;11;226;207;15;208;28;12;88;5;237;225;29;203;4;224;202;223;222;201;56;221;220;53;52;239;238;219;55;234;242;235;233;253;252;;1,1,1,1;0;0
Node;AmplifyShaderEditor.TexturePropertyNode;4;-1920,208;Inherit;True;Property;_MainTex;Main Tex;9;0;Create;True;0;0;0;False;0;False;None;a16b3161c8c05f54ba87ec06bfdd6b82;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.IntNode;246;-1856,416;Inherit;False;Property;_MainUVIndex;MainUVIndex;110;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.FunctionNode;247;-1664,400;Inherit;False;UVSelect;-1;;369;be9f0a2bbb8e0f340a2211011430e00a;0;2;3;SAMPLER2D;_Sampler3247;False;18;INT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;233;-1456,416;Inherit;False;MainUV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;235;-1808,544;Inherit;False;233;MainUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;242;-1600,544;Inherit;False;UVHandling;0;;370;c17d079c1ac3cf440936a2325286a38a;0;1;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;234;-1392,544;Inherit;False;MainUVFinal;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexturePropertyNode;55;-1776,1552;Inherit;True;Property;_EmissionMap;Emission Map;12;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;219;-1776,1984;Inherit;True;Property;_EmissionMap2;Emission Map 2;11;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode;238;-1488,1616;Inherit;False;234;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;239;-1504,2048;Inherit;False;234;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ColorNode;52;-1232,1760;Inherit;False;Property;_EmissionColor;Emission Color;15;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;4,4,4,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;53;-1264,1552;Inherit;True;Property;_TextureSample5;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;220;-1264,1984;Inherit;True;Property;_TextureSample10;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;221;-1232,2192;Inherit;False;Property;_EmissionColor2;Emission Color2;14;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;4,4,4,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;56;-880,1552;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;201;-864,1664;Inherit;False;Property;_Emission;Emission;103;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;222;-976,1984;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;223;-976,2096;Inherit;False;Property;_Emission2;Emission2;106;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;202;-704,1552;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;224;-816,1984;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;208;-1904,896;Inherit;True;Property;_DetailNormalMap;Detail Normal Map;19;0;Create;False;0;0;0;False;0;False;None;aef25913bc0271f498e5006238d33577;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.IntNode;252;-1856,1088;Inherit;False;Property;_DetailUVIndex;DetailUVIndex;108;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;203;-560,1552;Inherit;False;Property;_EnableEmission;EnableEmission;102;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;29;-1776,1312;Inherit;True;Property;_SpecularTextureChannel;Specular Map;20;0;Create;False;0;0;0;False;0;False;None;95bc897e80af50446bc05c7e8d2649ae;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.ToggleSwitchNode;225;-672,1984;Inherit;False;Property;_EnableEmission2;EnableEmission2;105;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;237;-1488,1376;Inherit;False;234;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.IntNode;249;-1872,2640;Inherit;False;Property;_AlphaUVIndex;AlphaUVIndex;109;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.FunctionNode;253;-1664,976;Inherit;False;UVSelect;-1;;373;be9f0a2bbb8e0f340a2211011430e00a;0;2;3;SAMPLER2D;_Sampler3241;False;18;INT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexturePropertyNode;216;-1904,2432;Inherit;True;Property;_AlphaMap;AlphaMap;13;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RegisterLocalVarNode;5;-1456,208;Inherit;False;MainTexTex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;88;-288,1552;Inherit;False;MainEmission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;12;-1760,656;Inherit;True;Property;_BumpMap;NormalMap;16;0;Create;False;0;0;0;False;0;False;None;aef25913bc0271f498e5006238d33577;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SamplerNode;28;-1264,1312;Inherit;True;Property;_TextureSample3;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RegisterLocalVarNode;226;-464,1984;Inherit;False;MainEmission2;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;236;-1456,672;Inherit;False;234;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;248;-1440,288;Inherit;False;234;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;15;-1536,768;Inherit;False;Property;_BumpScale;Normal Scale;17;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;207;-1552,1120;Inherit;False;Property;_DetailNormalMapScale;Detail Normal Map Scale;21;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;250;-1664,2624;Inherit;False;UVSelect;-1;;374;be9f0a2bbb8e0f340a2211011430e00a;0;2;3;SAMPLER2D;_Sampler3250;False;18;INT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;213;494,158;Inherit;False;1963;673;Output;10;0;217;200;74;81;65;199;75;244;245;;1,1,1,1;0;0
Node;AmplifyShaderEditor.ColorNode;11;-1184,416;Inherit;False;Property;_Color;Color;10;0;Create;False;0;0;0;False;0;False;0,0,0,0;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;9;-1248,208;Inherit;True;Property;_TextureSample0;Texture Sample 0;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;14;-1248,656;Inherit;True;Property;_TextureSample1;Texture Sample 1;3;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RegisterLocalVarNode;83;-784,1312;Inherit;False;Specular;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;209;-1248,896;Inherit;True;Property;_TextureSample8;Texture Sample 1;3;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.GetLocalVarNode;89;240,2064;Inherit;False;88;MainEmission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;227;240,2144;Inherit;False;226;MainEmission2;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;218;272,2224;Inherit;False;QuatumGlow;22;;377;7730a8711ab108044bac907ea573069c;0;0;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;10;-768,208;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendNormalsNode;210;-864,656;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;75;544,576;Inherit;False;83;Specular;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;176;496,2064;Inherit;True;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;215;-1248,2432;Inherit;True;Property;_TextureSample9;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RegisterLocalVarNode;63;-576,208;Inherit;False;Albedo;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;64;-544,656;Inherit;False;Normal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BreakToComponentsNode;199;760.534,552.9935;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.RegisterLocalVarNode;179;720,2064;Inherit;False;Emission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;214;-672,2480;Inherit;False;AlphaMap;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;244;1328,544;Inherit;False;Property;_Glossiness;Glossiness;99;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;65;992,288;Inherit;False;64;Normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;81;960,384;Inherit;False;179;Emission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;74;960,208;Inherit;False;63;Albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.DynamicAppendNode;200;912,464;Inherit;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;205;-2304,336;Inherit;False;Property;_ShowRendering;ShowRendering;104;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;206;-2464,336;Inherit;False;Property;_Culling;Culling;100;1;[Enum];Create;False;0;1;Option1;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;195;-2192,240;Inherit;False;Property;_ShowMain;ShowMain;101;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;212;-2464,240;Inherit;False;Property;_Cutoff;Cutoff;18;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;230;-2464,560;Inherit;False;Property;_ShaderType;ShaderType;97;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;231;-2464,464;Inherit;False;Property;_RenderType;RenderType;98;0;Create;True;0;0;0;True;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;243;-2272,464;Inherit;False;Property;_ShowParallax;ShowParallax;107;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;245;1616,432;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;217;1552,688;Inherit;False;214;AlphaMap;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;2160,208;Float;False;True;-1;4;Saphi.QuantumShader.QuantumShaderUI;0;0;StandardSpecular;Saphi/QuantumShaderSpecularCutout;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;;0;False;;False;0;False;;0;False;;False;0;Masked;0.5;True;True;0;False;TransparentCutout;;AlphaTest;All;12;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;0;0;False;;0;False;;0;0;False;;0;False;;0;False;;0;False;;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;;-1;-1;-1;-1;0;False;0;0;True;_Culling;-1;0;True;_Cutoff;1;Include;audio;True;1ec20832dfbb48343b8e0764e0864276;Custom;False;0;0;;0;0;False;0.1;False;;0;False;;False;17;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;16;FLOAT4;0,0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;247;3;4;0
WireConnection;247;18;246;0
WireConnection;233;0;247;0
WireConnection;242;1;235;0
WireConnection;234;0;242;0
WireConnection;53;0;55;0
WireConnection;53;1;238;0
WireConnection;220;0;219;0
WireConnection;220;1;239;0
WireConnection;56;0;53;0
WireConnection;56;1;52;0
WireConnection;222;0;220;0
WireConnection;222;1;221;0
WireConnection;202;0;56;0
WireConnection;202;1;201;0
WireConnection;224;0;222;0
WireConnection;224;1;223;0
WireConnection;203;1;202;0
WireConnection;225;1;224;0
WireConnection;253;3;208;0
WireConnection;253;18;252;0
WireConnection;5;0;4;0
WireConnection;88;0;203;0
WireConnection;28;0;29;0
WireConnection;28;1;237;0
WireConnection;226;0;225;0
WireConnection;250;3;216;0
WireConnection;250;18;249;0
WireConnection;9;0;5;0
WireConnection;9;1;248;0
WireConnection;14;0;12;0
WireConnection;14;1;236;0
WireConnection;14;5;15;0
WireConnection;83;0;28;0
WireConnection;209;0;208;0
WireConnection;209;1;253;0
WireConnection;209;5;207;0
WireConnection;10;0;9;0
WireConnection;10;1;11;0
WireConnection;210;0;14;0
WireConnection;210;1;209;0
WireConnection;176;0;89;0
WireConnection;176;1;227;0
WireConnection;176;2;218;0
WireConnection;215;0;216;0
WireConnection;215;1;250;0
WireConnection;63;0;10;0
WireConnection;64;0;210;0
WireConnection;199;0;75;0
WireConnection;179;0;176;0
WireConnection;214;0;215;1
WireConnection;200;0;199;0
WireConnection;200;1;199;1
WireConnection;200;2;199;2
WireConnection;245;0;199;3
WireConnection;245;1;244;0
WireConnection;0;0;74;0
WireConnection;0;1;65;0
WireConnection;0;2;81;0
WireConnection;0;3;200;0
WireConnection;0;4;245;0
WireConnection;0;10;217;0
ASEEND*/
//CHKSM=58DE1233C571B782399C06F736874BF56C3C630D