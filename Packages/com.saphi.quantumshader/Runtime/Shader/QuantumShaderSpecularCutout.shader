// Made with Amplify Shader Editor v1.9.9.1
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Saphi/QuantumShaderSpecularCutout"
{
	Properties
	{
		_ParallaxMap( "ParallaxMap", 2D ) = "white" {}
		_Parallax( "Parallax", Range( 0, 0.08 ) ) = 0
		_ParallaxMinSamples( "ParallaxMinSamples", Range( 1, 128 ) ) = 8
		_ParallaxMaxSamples( "ParallaxMaxSamples", Range( 1, 128 ) ) = 16
		_ParallaxSideWallSteps( "ParallaxSideWallSteps", Range( 0, 10 ) ) = 2
		_ParallaxRefPlane( "ParallaxRefPlane", Range( 0, 1 ) ) = 0
		[Toggle( _PARALLAXENABLE_ON )] _ParallaxEnable( "ParallaxEnable", Float ) = 0
		_MainTex( "Main Tex", 2D ) = "white" {}
		[Toggle( _LIGHTVOLUMES_ON )] _LightVolumes( "Enable Light Volumes", Float ) = 1
		_LightVolumesBias( "Light Volumes Bias", Float ) = 0
		[Toggle( _SPECULARS_ON )] _Speculars( "Speculars", Float ) = 1
		[Toggle( _DOMINANTDIRSPECULARS_ON )] _DominantDirSpeculars( "Dominant Dir Speculars", Float ) = 0
		_ShowLightVolumes( "ShowLightVolumes", Float ) = 0
		_Color( "Color", Color ) = ( 0, 0, 0, 0 )
		_EmissionMap2( "Emission Map 2", 2D ) = "black" {}
		_EmissionMap( "Emission Map", 2D ) = "white" {}
		_AlphaMap( "AlphaMap", 2D ) = "white" {}
		[HDR] _EmissionColor2( "Emission Color2", Color ) = ( 0, 0, 0, 0 )
		[HDR] _EmissionColor( "Emission Color", Color ) = ( 0, 0, 0, 0 )
		_BumpMap( "NormalMap", 2D ) = "bump" {}
		_BumpScale( "Normal Scale", Range( 0, 1 ) ) = 1
		_Cutoff( "Cutoff", Range( 0, 1 ) ) = 0.5
		_DetailNormalMap( "Detail Normal Map", 2D ) = "bump" {}
		_SpecularTextureChannel( "Specular Map", 2D ) = "black" {}
		_DetailNormalMapScale( "Detail Normal Map Scale", Range( 0, 1 ) ) = 1
		_QGlowMap( "GlowMap", 2D ) = "black" {}
		_QDirection( "Direction", 2D ) = "black" {}
		[HDR] _QuantumGlowColor( "QuantumGlowColor", Color ) = ( 1, 1, 1, 0 )
		[ToggleUI] _QSmoothHistory( "Q Smooth History", Float ) = 1
		[HDR] _QGlowColorBand1( "QGlowColorBand1", Color ) = ( 1, 1, 1, 0 )
		[Toggle] _QUseColorRotation1( "QUseColorRotation1", Float ) = 0
		[Toggle] _QUseColorRotation2( "QUseColorRotation2", Float ) = 0
		[Toggle] _QUseColorRotation3( "QUseColorRotation3", Float ) = 0
		[Toggle] _QInvertDirection1( "QInvertDirection1", Float ) = 0
		[Toggle] _QUseColorRotation4( "QUseColorRotation4", Float ) = 0
		[Enum(Whole Color,0,Whole Color Direction,1,Gradient Wave,2,Gradient Direction,3,Static Color,4,Hue Rotation,5)] _QType1( "QType1", Int ) = 0
		[Enum(Overlay,0,Multiply,1,Direct no wave,2)] _QBlendMode4( "QBlendMode1", Int ) = 0
		[Enum(Overlay,0,Multiply,1,Direct no wave,2)] _QBlendMode1( "QBlendMode1", Int ) = 0
		[Enum(Band 1,0,Band 2,1,Band 3,2,Band 4,3)] _QBand1( "QBand1", Int ) = 0
		[Enum(Whole color,0,Whole color Direction,1,Gradient wave,2,Gradient direction,3,Static Color,4,Hue Rotation,5)] _QType2( "QType2", Int ) = 0
		[Enum(Overlay,0,Multiply,1,Direct no wave,2)] _QBlendMode2( "QBlendMode1", Int ) = 0
		[Enum(Whole Color,0,Whole Color Direction,1,Gradient Wave,2,Gradient Direction,3,Static Color,4,Hue Rotation,5)] _QType4( "QType4", Int ) = 0
		[Enum(Whole Color,0,Whole Color Direction,1,Gradient Wave,2,Gradient Direction,3,Static Color,4,Hue Rotation,5)] _QType3( "QType3", Int ) = 0
		[Enum(Overlay,0,Multiply,1,Direct no wave,2)] _QBlendMode3( "QBlendMode1", Int ) = 0
		_QColorOffset1( "QColorOffset1", Range( 0, 1 ) ) = 0
		_QEffectScale1( "QEffectScale1", Range( 0, 1 ) ) = 1
		[IntRange] _QColorRotationMode4( "QColorRotationMode4", Range( 0, 3 ) ) = 0
		_QColorRotationSpeed4( "QColorRotationSpeed4", Range( 0, 1 ) ) = 0
		_QEffectScale2( "QEffectScale2", Range( 0, 1 ) ) = 1
		_QEffectScale4( "QEffectScale4", Range( 0, 1 ) ) = 1
		[IntRange] _QColorRotationMode1( "QColorRotationMode1", Range( 0, 3 ) ) = 0
		[IntRange] _QColorRotationMode2( "QColorRotationMode2", Range( 0, 3 ) ) = 0
		_QEffectScale3( "QEffectScale3", Range( 0, 1 ) ) = 1
		_QColorRotationSpeed3( "QColorRotationSpeed3", Range( 0, 1 ) ) = 0
		[IntRange] _QColorRotationMode3( "QColorRotationMode3", Range( 0, 3 ) ) = 0
		_QHistory1( "QHistory1", Range( 0, 128 ) ) = 32
		_QColorRotationSpeed2( "QColorRotationSpeed2", Range( 0, 1 ) ) = 0
		_QColorRotationSpeed1( "QColorRotationSpeed1", Range( 0, 1 ) ) = 0
		[Enum(Band 1,0,Band 2,1,Band 3,2,Band 4,3)] _QBand2( "QBand2", Int ) = 1
		[HDR] _QGlowColorBand2( "QGlowColorBand2", Color ) = ( 1, 1, 1, 0 )
		[Toggle] _QBandEnable3( "QBandEnable3", Float ) = 0
		[Toggle] _QBandEnable2( "QBandEnable2", Float ) = 0
		[Toggle] _QBandEnable1( "QBandEnable1", Float ) = 0
		[Toggle] _QBandEnable4( "QBandEnable4", Float ) = 0
		[Toggle] _QEnableGlobal( "QEnableGlobal", Float ) = 0
		[Toggle] _QInvertDirection2( "QInvertDirection2", Float ) = 0
		_QColorOffset2( "QColorOffset2", Range( 0, 1 ) ) = 0
		_QHistory2( "QHistory2", Range( 0, 128 ) ) = 32
		[Enum(Band 1,0,Band 2,1,Band 3,2,Band 4,3)] _QBand3( "QBand3", Int ) = 2
		[HDR] _QGlowColorBand3( "QGlowColorBand3", Color ) = ( 1, 1, 1, 0 )
		[Toggle] _QInvertDirection3( "QInvertDirection3", Float ) = 0
		_QColorOffset3( "QColorOffset3", Range( 0, 1 ) ) = 0
		_QHistory3( "QHistory3", Range( 0, 128 ) ) = 32
		[Enum(Band 1,0,Band 2,1,Band 3,2,Band 4,3)] _QBand4( "QBand4", Int ) = 3
		[HDR] _QGlowColorBand4( "QGlowColorBand4", Color ) = ( 1, 1, 1, 0 )
		[Toggle] _QInvertDirection4( "QInvertDirection4", Float ) = 0
		_QuantumGlowMultiply3( "QuantumGlowMultiply3", Float ) = 1
		_QuantumGlowMultiply4( "QuantumGlowMultiply4", Float ) = 1
		_QColorOffset4( "QColorOffset4", Range( 0, 1 ) ) = 0
		_QuantumGlowMultiply1( "QuantumGlowMultiply1", Float ) = 1
		_QuantumGlowMultiply2( "QuantumGlowMultiply2", Float ) = 1
		_QHistory4( "QHistory4", Range( 0, 128 ) ) = 32
		_ShowQuantumBand3( "ShowQuantumBand3", Float ) = 0
		_ShowQuantumBand4( "ShowQuantumBand4", Float ) = 0
		_ShowQuantum( "ShowQuantum", Float ) = 0
		_ShowQuantumBand1( "ShowQuantumBand1", Float ) = 0
		_ShowQuantumBand2( "ShowQuantumBand2", Float ) = 0
		_QuantumGlowMultiplyGlobal( "QuantumGlowMultiplyGlobal", Float ) = 1
		[Toggle] _UseUVAsDirectionUV( "UseUVAsDirectionUV", Float ) = 0
		[Toggle] _UseUVAsDirection( "UseUVAsDirection", Float ) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] _texcoord2( "", 2D ) = "white" {}
		[HideInInspector] _texcoord3( "", 2D ) = "white" {}
		[HideInInspector] _texcoord4( "", 2D ) = "white" {}
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)] _QDirectionUVIndex( "DirectionUVIndex", Int ) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)] _QGlowMapUVIndex( "GlowMapUVIndex", Int ) = 0
		_ShaderType( "ShaderType", Float ) = 0
		_RenderType( "RenderType", Float ) = 1
		_Glossiness( "Glossiness", Range( 0, 1 ) ) = 1
		[Enum(UnityEngine.Rendering.CullMode)] _Culling( "Culling", Float ) = 2
		_ShowMain( "ShowMain", Float ) = 0
		[Toggle] _EnableEmission( "EnableEmission", Float ) = 0
		_Emission( "Emission", Float ) = 1
		_ShowRendering( "ShowRendering", Float ) = 0
		[Toggle] _EnableEmission2( "EnableEmission2", Float ) = 0
		_Emission2( "Emission2", Float ) = 1
		_ShowParallax( "ShowParallax", Float ) = 0
		[Toggle( _Q_LIGHTVOLUMES_ON )] _Q_LightVolumes( "Q_LightVolumes", Float ) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)] _DetailUVIndex( "DetailUVIndex", Int ) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)] _AlphaUVIndex( "AlphaUVIndex", Int ) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)] _MainUVIndex( "MainUVIndex", Int ) = 0
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "TransparentCutout"  "Queue" = "AlphaTest+0" "IsEmissive" = "true"  }
		Cull [_Culling]
		CGINCLUDE
		#include "UnityStandardUtils.cginc"
		#include "UnityStandardBRDF.cginc"
		#include "Packages/com.saphi.quantumshader/Runtime/Shader/ThirdParty/LightVolumes/LightVolumes.cginc"
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 4.0
		#pragma shader_feature_local _PARALLAXENABLE_ON
		#pragma shader_feature_local _Q_LIGHTVOLUMES_ON
		#pragma shader_feature_local _SPECULARS_ON
		#pragma shader_feature_local _LIGHTVOLUMES_ON
		#pragma shader_feature_local _DOMINANTDIRSPECULARS_ON
		#define ASE_VERSION 19901
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

		uniform float _ShowRendering;
		uniform float _Culling;
		uniform float _ShowMain;
		uniform float _ShaderType;
		uniform float _RenderType;
		uniform float _ShowParallax;
		uniform int _QGlowMapUVIndex;
		uniform int _QDirectionUVIndex;
		uniform float _ShowQuantumBand1;
		uniform float _ShowQuantumBand2;
		uniform float _ShowQuantumBand3;
		uniform float _ShowQuantumBand4;
		uniform float _ShowQuantum;
		uniform int _QBlendMode2;
		uniform float _ShowLightVolumes;
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
		uniform float _LightVolumesBias;
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


		inline float AudioLinkLerp3_g444( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g441( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g438( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g442( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g439( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g440( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		float3 HSVToRGB( float3 c )
		{
			float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
			float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
			return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
		}


		inline float AudioLinkLerp3_g452( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g449( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g446( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g450( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g447( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g448( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g436( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g433( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g430( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g434( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g431( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g432( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g428( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g425( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g422( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g426( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g423( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g424( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		float IfAudioLinkv2Exists1_g420(  )
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
			float2 OffsetPOM7_g371 = POM( _ParallaxMap, temp_output_1_0_g371, ddx( temp_output_1_0_g371 ), ddy( temp_output_1_0_g371 ), ase_normalWS, ase_viewDirWS, Unity_SafeNormalize( i.viewDir ), (int)_ParallaxMinSamples, (int)_ParallaxMaxSamples, (int)_ParallaxSideWallSteps, _Parallax, _ParallaxRefPlane, _ParallaxMap_ST.xy, float2( 0, 0 ), 0 );
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
			float3 Albedo63 = ( tex2D( _MainTex, MainUVFinal234 ).rgb * _Color.rgb );
			o.Albedo = Albedo63;
			float3 MainEmission88 = (( _EnableEmission )?( ( ( tex2D( _EmissionMap, MainUVFinal234 ).rgb * _EmissionColor.rgb ) * _Emission ) ):( float3( 0,0,0 ) ));
			float3 MainEmission2226 = (( _EnableEmission2 )?( ( ( tex2D( _EmissionMap2, MainUVFinal234 ).rgb * _EmissionColor2.rgb ) * _Emission2 ) ):( float3( 0,0,0 ) ));
			float2 uv_QGlowMap = i.uv_texcoord * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			float2 uv2_QGlowMap = i.uv2_texcoord2 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			int temp_output_18_0_g454 = _QGlowMapUVIndex;
			float2 lerpResult22_g454 = lerp( uv_QGlowMap , uv2_QGlowMap , (float)saturate( temp_output_18_0_g454 ));
			float2 uv3_QGlowMap = i.uv3_texcoord3 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			int temp_output_26_0_g454 = ( temp_output_18_0_g454 - 1 );
			float2 lerpResult25_g454 = lerp( lerpResult22_g454 , uv3_QGlowMap , (float)saturate( temp_output_26_0_g454 ));
			float2 uv4_QGlowMap = i.uv4_texcoord4 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			int temp_output_31_0_g454 = ( temp_output_26_0_g454 - 1 );
			float2 lerpResult29_g454 = lerp( lerpResult25_g454 , uv4_QGlowMap , (float)saturate( temp_output_31_0_g454 ));
			float2 uv5_QGlowMap = i.ase_texcoord5 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			float2 lerpResult35_g454 = lerp( lerpResult29_g454 , uv5_QGlowMap.xy , (float)saturate( ( temp_output_31_0_g454 - 1 ) ));
			float4 GlowMap7_g419 = tex2D( _QGlowMap, lerpResult35_g454 );
			float4 break12_g419 = GlowMap7_g419;
			float GlowMap130_g419 = break12_g419.r;
			int temp_output_106_0_g437 = _QBlendMode1;
			int temp_output_27_0_g437 = _QBand1;
			int Band3_g444 = temp_output_27_0_g437;
			float2 uv_QDirection = i.uv_texcoord * _QDirection_ST.xy + _QDirection_ST.zw;
			float2 uv2_QDirection = i.uv2_texcoord2 * _QDirection_ST.xy + _QDirection_ST.zw;
			int temp_output_18_0_g453 = _QDirectionUVIndex;
			float2 lerpResult22_g453 = lerp( uv_QDirection , uv2_QDirection , (float)saturate( temp_output_18_0_g453 ));
			float2 uv3_QDirection = i.uv3_texcoord3 * _QDirection_ST.xy + _QDirection_ST.zw;
			int temp_output_26_0_g453 = ( temp_output_18_0_g453 - 1 );
			float2 lerpResult25_g453 = lerp( lerpResult22_g453 , uv3_QDirection , (float)saturate( temp_output_26_0_g453 ));
			float2 uv4_QDirection = i.uv4_texcoord4 * _QDirection_ST.xy + _QDirection_ST.zw;
			int temp_output_31_0_g453 = ( temp_output_26_0_g453 - 1 );
			float2 lerpResult29_g453 = lerp( lerpResult25_g453 , uv4_QDirection , (float)saturate( temp_output_31_0_g453 ));
			float2 uv5_QDirection = i.ase_texcoord5 * _QDirection_ST.xy + _QDirection_ST.zw;
			float2 lerpResult35_g453 = lerp( lerpResult29_g453 , uv5_QDirection.xy , (float)saturate( ( temp_output_31_0_g453 - 1 ) ));
			float2 temp_output_288_0_g419 = lerpResult35_g453;
			float4 DirectionMap5_g419 = tex2D( _QDirection, temp_output_288_0_g419 );
			float2 break287_g419 = temp_output_288_0_g419;
			float Direction11_g419 = (( _UseUVAsDirection )?( (( _UseUVAsDirectionUV )?( break287_g419.y ):( break287_g419.x )) ):( DirectionMap5_g419.r ));
			float temp_output_1_0_g437 = (( _QInvertDirection1 )?( ( 1.0 - Direction11_g419 ) ):( Direction11_g419 ));
			float temp_output_5_0_g437 = ( _QHistory1 * temp_output_1_0_g437 );
			float Delay3_g444 = (( _QSmoothHistory )?( temp_output_5_0_g437 ):( floor( temp_output_5_0_g437 ) ));
			float localAudioLinkLerp3_g444 = AudioLinkLerp3_g444( Band3_g444 , Delay3_g444 );
			float temp_output_8_0_g437 = localAudioLinkLerp3_g444;
			float4 temp_cast_21 = (temp_output_8_0_g437).xxxx;
			float4 temp_output_1_0_g443 = temp_cast_21;
			float4 break5_g443 = temp_output_1_0_g443;
			int temp_output_52_0_g437 = _QType1;
			float temp_output_29_0_g437 = _QColorOffset1;
			int Band6_g441 = temp_output_27_0_g437;
			int Mode6_g441 = ( ( (int)_QColorRotationMode1 * 2 ) + (int)_QColorRotationSpeed1 );
			int localAudioLinkDecodeDataAsUInt6_g441 = AudioLinkDecodeDataAsUInt6_g441( Band6_g441 , Mode6_g441 );
			float temp_output_55_0_g437 = ( ( ( localAudioLinkDecodeDataAsUInt6_g441 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g437 = ( temp_output_55_0_g437 * (int)(( _QUseColorRotation1 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g437 = _QEffectScale1;
			int Index1_g438 = (int)floor( ( frac( ( ( temp_output_29_0_g437 + temp_output_95_0_g437 ) * temp_output_103_0_g437 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g438 = AudioLinkData1_g438( Index1_g438 );
			float4 ifLocalVar49_g437 = 0;
			if( temp_output_52_0_g437 == 0.0 )
				ifLocalVar49_g437 = localAudioLinkData1_g438;
			int Index1_g442 = (int)floor( ( frac( ( ( temp_output_29_0_g437 + temp_output_95_0_g437 + temp_output_1_0_g437 ) * temp_output_103_0_g437 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g442 = AudioLinkData1_g442( Index1_g442 );
			float4 ifLocalVar79_g437 = 0;
			if( temp_output_52_0_g437 == 1.0 )
				ifLocalVar79_g437 = localAudioLinkData1_g442;
			float Position1_g439 = saturate( frac( ( ( temp_output_8_0_g437 + temp_output_29_0_g437 + temp_output_95_0_g437 ) * temp_output_103_0_g437 ) ) );
			float4 localAudioLinkLerp1_g439 = AudioLinkLerp1_g439( Position1_g439 );
			float4 ifLocalVar50_g437 = 0;
			if( temp_output_52_0_g437 == 2.0 )
				ifLocalVar50_g437 = localAudioLinkLerp1_g439;
			float Position1_g440 = saturate( frac( ( ( temp_output_29_0_g437 + temp_output_1_0_g437 + temp_output_95_0_g437 ) * temp_output_103_0_g437 ) ) );
			float4 localAudioLinkLerp1_g440 = AudioLinkLerp1_g440( Position1_g440 );
			float4 ifLocalVar51_g437 = 0;
			if( temp_output_52_0_g437 == 3.0 )
				ifLocalVar51_g437 = localAudioLinkLerp1_g440;
			float4 color111_g437 = IsGammaSpace() ? float4( 1, 1, 1, 0 ) : float4( 1, 1, 1, 0 );
			float4 ifLocalVar110_g437 = 0;
			if( temp_output_52_0_g437 == 4.0 )
				ifLocalVar110_g437 = color111_g437;
			float3 hsvTorgb116_g437 = HSVToRGB( float3(temp_output_55_0_g437,1.0,1.0) );
			float3 ifLocalVar117_g437 = 0;
			if( temp_output_52_0_g437 == 5.0 )
				ifLocalVar117_g437 = hsvTorgb116_g437;
			float4 temp_output_53_0_g437 = ( ifLocalVar49_g437 + ifLocalVar79_g437 + ifLocalVar50_g437 + ifLocalVar51_g437 + ifLocalVar110_g437 + float4( ifLocalVar117_g437 , 0.0 ) );
			float4 temp_output_2_0_g443 = temp_output_53_0_g437;
			float4 ifLocalVar107_g437 = 0;
			if( temp_output_106_0_g437 == 0.0 )
				ifLocalVar107_g437 = ( ( ( break5_g443.r * 0.2 ) + ( break5_g443.g * 0.7 ) + ( break5_g443.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g443 * temp_output_2_0_g443 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g443 ) * ( 1.0 - temp_output_2_0_g443 ) ) ) );
			float4 ifLocalVar108_g437 = 0;
			if( temp_output_106_0_g437 == 1.0 )
				ifLocalVar108_g437 = ( temp_output_8_0_g437 * temp_output_53_0_g437 );
			float4 ifLocalVar112_g437 = 0;
			if( temp_output_106_0_g437 == 2.0 )
				ifLocalVar112_g437 = temp_output_53_0_g437;
			float GlowMap232_g419 = break12_g419.g;
			int temp_output_106_0_g445 = _QBlendMode2;
			int temp_output_27_0_g445 = _QBand2;
			int Band3_g452 = temp_output_27_0_g445;
			float temp_output_1_0_g445 = (( _QInvertDirection2 )?( ( 1.0 - Direction11_g419 ) ):( Direction11_g419 ));
			float temp_output_5_0_g445 = ( _QHistory2 * temp_output_1_0_g445 );
			float Delay3_g452 = (( _QSmoothHistory )?( temp_output_5_0_g445 ):( floor( temp_output_5_0_g445 ) ));
			float localAudioLinkLerp3_g452 = AudioLinkLerp3_g452( Band3_g452 , Delay3_g452 );
			float temp_output_8_0_g445 = localAudioLinkLerp3_g452;
			float4 temp_cast_36 = (temp_output_8_0_g445).xxxx;
			float4 temp_output_1_0_g451 = temp_cast_36;
			float4 break5_g451 = temp_output_1_0_g451;
			int temp_output_52_0_g445 = _QType2;
			float temp_output_29_0_g445 = _QColorOffset2;
			int Band6_g449 = temp_output_27_0_g445;
			int Mode6_g449 = ( ( (int)_QColorRotationMode2 * 2 ) + (int)_QColorRotationSpeed2 );
			int localAudioLinkDecodeDataAsUInt6_g449 = AudioLinkDecodeDataAsUInt6_g449( Band6_g449 , Mode6_g449 );
			float temp_output_55_0_g445 = ( ( ( localAudioLinkDecodeDataAsUInt6_g449 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g445 = ( temp_output_55_0_g445 * (int)(( _QUseColorRotation2 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g445 = _QEffectScale2;
			int Index1_g446 = (int)floor( ( frac( ( ( temp_output_29_0_g445 + temp_output_95_0_g445 ) * temp_output_103_0_g445 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g446 = AudioLinkData1_g446( Index1_g446 );
			float4 ifLocalVar49_g445 = 0;
			if( temp_output_52_0_g445 == 0.0 )
				ifLocalVar49_g445 = localAudioLinkData1_g446;
			int Index1_g450 = (int)floor( ( frac( ( ( temp_output_29_0_g445 + temp_output_95_0_g445 + temp_output_1_0_g445 ) * temp_output_103_0_g445 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g450 = AudioLinkData1_g450( Index1_g450 );
			float4 ifLocalVar79_g445 = 0;
			if( temp_output_52_0_g445 == 1.0 )
				ifLocalVar79_g445 = localAudioLinkData1_g450;
			float Position1_g447 = saturate( frac( ( ( temp_output_8_0_g445 + temp_output_29_0_g445 + temp_output_95_0_g445 ) * temp_output_103_0_g445 ) ) );
			float4 localAudioLinkLerp1_g447 = AudioLinkLerp1_g447( Position1_g447 );
			float4 ifLocalVar50_g445 = 0;
			if( temp_output_52_0_g445 == 2.0 )
				ifLocalVar50_g445 = localAudioLinkLerp1_g447;
			float Position1_g448 = saturate( frac( ( ( temp_output_29_0_g445 + temp_output_1_0_g445 + temp_output_95_0_g445 ) * temp_output_103_0_g445 ) ) );
			float4 localAudioLinkLerp1_g448 = AudioLinkLerp1_g448( Position1_g448 );
			float4 ifLocalVar51_g445 = 0;
			if( temp_output_52_0_g445 == 3.0 )
				ifLocalVar51_g445 = localAudioLinkLerp1_g448;
			float4 color111_g445 = IsGammaSpace() ? float4( 1, 1, 1, 0 ) : float4( 1, 1, 1, 0 );
			float4 ifLocalVar110_g445 = 0;
			if( temp_output_52_0_g445 == 4.0 )
				ifLocalVar110_g445 = color111_g445;
			float3 hsvTorgb116_g445 = HSVToRGB( float3(temp_output_55_0_g445,1.0,1.0) );
			float3 ifLocalVar117_g445 = 0;
			if( temp_output_52_0_g445 == 5.0 )
				ifLocalVar117_g445 = hsvTorgb116_g445;
			float4 temp_output_53_0_g445 = ( ifLocalVar49_g445 + ifLocalVar79_g445 + ifLocalVar50_g445 + ifLocalVar51_g445 + ifLocalVar110_g445 + float4( ifLocalVar117_g445 , 0.0 ) );
			float4 temp_output_2_0_g451 = temp_output_53_0_g445;
			float4 ifLocalVar107_g445 = 0;
			if( temp_output_106_0_g445 == 0.0 )
				ifLocalVar107_g445 = ( ( ( break5_g451.r * 0.2 ) + ( break5_g451.g * 0.7 ) + ( break5_g451.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g451 * temp_output_2_0_g451 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g451 ) * ( 1.0 - temp_output_2_0_g451 ) ) ) );
			float4 ifLocalVar108_g445 = 0;
			if( temp_output_106_0_g445 == 1.0 )
				ifLocalVar108_g445 = ( temp_output_8_0_g445 * temp_output_53_0_g445 );
			float4 ifLocalVar112_g445 = 0;
			if( temp_output_106_0_g445 == 2.0 )
				ifLocalVar112_g445 = temp_output_53_0_g445;
			float GlowMap331_g419 = break12_g419.b;
			int temp_output_106_0_g429 = _QBlendMode3;
			int temp_output_27_0_g429 = _QBand3;
			int Band3_g436 = temp_output_27_0_g429;
			float temp_output_1_0_g429 = (( _QInvertDirection3 )?( ( 1.0 - Direction11_g419 ) ):( Direction11_g419 ));
			float temp_output_5_0_g429 = ( _QHistory3 * temp_output_1_0_g429 );
			float Delay3_g436 = (( _QSmoothHistory )?( temp_output_5_0_g429 ):( floor( temp_output_5_0_g429 ) ));
			float localAudioLinkLerp3_g436 = AudioLinkLerp3_g436( Band3_g436 , Delay3_g436 );
			float temp_output_8_0_g429 = localAudioLinkLerp3_g436;
			float4 temp_cast_51 = (temp_output_8_0_g429).xxxx;
			float4 temp_output_1_0_g435 = temp_cast_51;
			float4 break5_g435 = temp_output_1_0_g435;
			int temp_output_52_0_g429 = _QType3;
			float temp_output_29_0_g429 = _QColorOffset3;
			int Band6_g433 = temp_output_27_0_g429;
			int Mode6_g433 = ( ( (int)_QColorRotationMode3 * 2 ) + (int)_QColorRotationSpeed3 );
			int localAudioLinkDecodeDataAsUInt6_g433 = AudioLinkDecodeDataAsUInt6_g433( Band6_g433 , Mode6_g433 );
			float temp_output_55_0_g429 = ( ( ( localAudioLinkDecodeDataAsUInt6_g433 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g429 = ( temp_output_55_0_g429 * (int)(( _QUseColorRotation3 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g429 = _QEffectScale3;
			int Index1_g430 = (int)floor( ( frac( ( ( temp_output_29_0_g429 + temp_output_95_0_g429 ) * temp_output_103_0_g429 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g430 = AudioLinkData1_g430( Index1_g430 );
			float4 ifLocalVar49_g429 = 0;
			if( temp_output_52_0_g429 == 0.0 )
				ifLocalVar49_g429 = localAudioLinkData1_g430;
			int Index1_g434 = (int)floor( ( frac( ( ( temp_output_29_0_g429 + temp_output_95_0_g429 + temp_output_1_0_g429 ) * temp_output_103_0_g429 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g434 = AudioLinkData1_g434( Index1_g434 );
			float4 ifLocalVar79_g429 = 0;
			if( temp_output_52_0_g429 == 1.0 )
				ifLocalVar79_g429 = localAudioLinkData1_g434;
			float Position1_g431 = saturate( frac( ( ( temp_output_8_0_g429 + temp_output_29_0_g429 + temp_output_95_0_g429 ) * temp_output_103_0_g429 ) ) );
			float4 localAudioLinkLerp1_g431 = AudioLinkLerp1_g431( Position1_g431 );
			float4 ifLocalVar50_g429 = 0;
			if( temp_output_52_0_g429 == 2.0 )
				ifLocalVar50_g429 = localAudioLinkLerp1_g431;
			float Position1_g432 = saturate( frac( ( ( temp_output_29_0_g429 + temp_output_1_0_g429 + temp_output_95_0_g429 ) * temp_output_103_0_g429 ) ) );
			float4 localAudioLinkLerp1_g432 = AudioLinkLerp1_g432( Position1_g432 );
			float4 ifLocalVar51_g429 = 0;
			if( temp_output_52_0_g429 == 3.0 )
				ifLocalVar51_g429 = localAudioLinkLerp1_g432;
			float4 color111_g429 = IsGammaSpace() ? float4( 1, 1, 1, 0 ) : float4( 1, 1, 1, 0 );
			float4 ifLocalVar110_g429 = 0;
			if( temp_output_52_0_g429 == 4.0 )
				ifLocalVar110_g429 = color111_g429;
			float3 hsvTorgb116_g429 = HSVToRGB( float3(temp_output_55_0_g429,1.0,1.0) );
			float3 ifLocalVar117_g429 = 0;
			if( temp_output_52_0_g429 == 5.0 )
				ifLocalVar117_g429 = hsvTorgb116_g429;
			float4 temp_output_53_0_g429 = ( ifLocalVar49_g429 + ifLocalVar79_g429 + ifLocalVar50_g429 + ifLocalVar51_g429 + ifLocalVar110_g429 + float4( ifLocalVar117_g429 , 0.0 ) );
			float4 temp_output_2_0_g435 = temp_output_53_0_g429;
			float4 ifLocalVar107_g429 = 0;
			if( temp_output_106_0_g429 == 0.0 )
				ifLocalVar107_g429 = ( ( ( break5_g435.r * 0.2 ) + ( break5_g435.g * 0.7 ) + ( break5_g435.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g435 * temp_output_2_0_g435 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g435 ) * ( 1.0 - temp_output_2_0_g435 ) ) ) );
			float4 ifLocalVar108_g429 = 0;
			if( temp_output_106_0_g429 == 1.0 )
				ifLocalVar108_g429 = ( temp_output_8_0_g429 * temp_output_53_0_g429 );
			float4 ifLocalVar112_g429 = 0;
			if( temp_output_106_0_g429 == 2.0 )
				ifLocalVar112_g429 = temp_output_53_0_g429;
			float GlowMap433_g419 = break12_g419.a;
			int temp_output_106_0_g421 = _QBlendMode4;
			int temp_output_27_0_g421 = _QBand4;
			int Band3_g428 = temp_output_27_0_g421;
			float temp_output_1_0_g421 = (( _QInvertDirection4 )?( ( 1.0 - Direction11_g419 ) ):( Direction11_g419 ));
			float temp_output_5_0_g421 = ( _QHistory4 * temp_output_1_0_g421 );
			float Delay3_g428 = (( _QSmoothHistory )?( temp_output_5_0_g421 ):( floor( temp_output_5_0_g421 ) ));
			float localAudioLinkLerp3_g428 = AudioLinkLerp3_g428( Band3_g428 , Delay3_g428 );
			float temp_output_8_0_g421 = localAudioLinkLerp3_g428;
			float4 temp_cast_66 = (temp_output_8_0_g421).xxxx;
			float4 temp_output_1_0_g427 = temp_cast_66;
			float4 break5_g427 = temp_output_1_0_g427;
			int temp_output_52_0_g421 = _QType4;
			float temp_output_29_0_g421 = _QColorOffset4;
			int Band6_g425 = temp_output_27_0_g421;
			int Mode6_g425 = ( ( (int)_QColorRotationMode4 * 2 ) + (int)_QColorRotationSpeed4 );
			int localAudioLinkDecodeDataAsUInt6_g425 = AudioLinkDecodeDataAsUInt6_g425( Band6_g425 , Mode6_g425 );
			float temp_output_55_0_g421 = ( ( ( localAudioLinkDecodeDataAsUInt6_g425 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g421 = ( temp_output_55_0_g421 * (int)(( _QUseColorRotation4 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g421 = _QEffectScale4;
			int Index1_g422 = (int)floor( ( frac( ( ( temp_output_29_0_g421 + temp_output_95_0_g421 ) * temp_output_103_0_g421 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g422 = AudioLinkData1_g422( Index1_g422 );
			float4 ifLocalVar49_g421 = 0;
			if( temp_output_52_0_g421 == 0.0 )
				ifLocalVar49_g421 = localAudioLinkData1_g422;
			int Index1_g426 = (int)floor( ( frac( ( ( temp_output_29_0_g421 + temp_output_95_0_g421 + temp_output_1_0_g421 ) * temp_output_103_0_g421 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g426 = AudioLinkData1_g426( Index1_g426 );
			float4 ifLocalVar79_g421 = 0;
			if( temp_output_52_0_g421 == 1.0 )
				ifLocalVar79_g421 = localAudioLinkData1_g426;
			float Position1_g423 = saturate( frac( ( ( temp_output_8_0_g421 + temp_output_29_0_g421 + temp_output_95_0_g421 ) * temp_output_103_0_g421 ) ) );
			float4 localAudioLinkLerp1_g423 = AudioLinkLerp1_g423( Position1_g423 );
			float4 ifLocalVar50_g421 = 0;
			if( temp_output_52_0_g421 == 2.0 )
				ifLocalVar50_g421 = localAudioLinkLerp1_g423;
			float Position1_g424 = saturate( frac( ( ( temp_output_29_0_g421 + temp_output_1_0_g421 + temp_output_95_0_g421 ) * temp_output_103_0_g421 ) ) );
			float4 localAudioLinkLerp1_g424 = AudioLinkLerp1_g424( Position1_g424 );
			float4 ifLocalVar51_g421 = 0;
			if( temp_output_52_0_g421 == 3.0 )
				ifLocalVar51_g421 = localAudioLinkLerp1_g424;
			float4 color111_g421 = IsGammaSpace() ? float4( 1, 1, 1, 0 ) : float4( 1, 1, 1, 0 );
			float4 ifLocalVar110_g421 = 0;
			if( temp_output_52_0_g421 == 4.0 )
				ifLocalVar110_g421 = color111_g421;
			float3 hsvTorgb116_g421 = HSVToRGB( float3(temp_output_55_0_g421,1.0,1.0) );
			float3 ifLocalVar117_g421 = 0;
			if( temp_output_52_0_g421 == 5.0 )
				ifLocalVar117_g421 = hsvTorgb116_g421;
			float4 temp_output_53_0_g421 = ( ifLocalVar49_g421 + ifLocalVar79_g421 + ifLocalVar50_g421 + ifLocalVar51_g421 + ifLocalVar110_g421 + float4( ifLocalVar117_g421 , 0.0 ) );
			float4 temp_output_2_0_g427 = temp_output_53_0_g421;
			float4 ifLocalVar107_g421 = 0;
			if( temp_output_106_0_g421 == 0.0 )
				ifLocalVar107_g421 = ( ( ( break5_g427.r * 0.2 ) + ( break5_g427.g * 0.7 ) + ( break5_g427.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g427 * temp_output_2_0_g427 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g427 ) * ( 1.0 - temp_output_2_0_g427 ) ) ) );
			float4 ifLocalVar108_g421 = 0;
			if( temp_output_106_0_g421 == 1.0 )
				ifLocalVar108_g421 = ( temp_output_8_0_g421 * temp_output_53_0_g421 );
			float4 ifLocalVar112_g421 = 0;
			if( temp_output_106_0_g421 == 2.0 )
				ifLocalVar112_g421 = temp_output_53_0_g421;
			float localIfAudioLinkv2Exists1_g420 = IfAudioLinkv2Exists1_g420();
			float4 lerpResult55_g419 = lerp( float4( 0,0,0,0 ) , ( _QuantumGlowColor * ( (( _QBandEnable1 )?( ( _QGlowColorBand1 * ( GlowMap130_g419 * ( ifLocalVar107_g437 + ifLocalVar108_g437 + ifLocalVar112_g437 ) ) * _QuantumGlowMultiply1 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable2 )?( ( _QGlowColorBand2 * ( GlowMap232_g419 * ( ifLocalVar107_g445 + ifLocalVar108_g445 + ifLocalVar112_g445 ) ) * _QuantumGlowMultiply2 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable3 )?( ( _QGlowColorBand3 * ( GlowMap331_g419 * ( ifLocalVar107_g429 + ifLocalVar108_g429 + ifLocalVar112_g429 ) ) * _QuantumGlowMultiply3 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable4 )?( ( _QGlowColorBand4 * ( GlowMap433_g419 * ( ifLocalVar107_g421 + ifLocalVar108_g421 + ifLocalVar112_g421 ) ) * _QuantumGlowMultiply4 ) ):( float4( 0,0,0,0 ) )) ) * _QuantumGlowMultiplyGlobal ) , localIfAudioLinkv2Exists1_g420);
			float3 normalizeResult3_g455 = normalize( (WorldNormalVector( i , Normal64 )) );
			float3 World_Normal53_g455 = normalizeResult3_g455;
			float3 worldNormal2_g458 = World_Normal53_g455;
			float3 appendResult13_g455 = (float3(unity_SHAr.w , unity_SHAg.w , unity_SHAb.w));
			float localLightVolumeSH1_g457 = ( 0.0 );
			float3 temp_output_6_0_g457 = ase_positionWS;
			float3 worldPos1_g457 = temp_output_6_0_g457;
			float3 L01_g457 = float3( 0,0,0 );
			float3 L1r1_g457 = float3( 0,0,0 );
			float3 L1g1_g457 = float3( 0,0,0 );
			float3 L1b1_g457 = float3( 0,0,0 );
			float3 temp_output_5_0_g455 = ( _LightVolumesBias * World_Normal53_g455 );
			float3 temp_output_17_0_g457 = temp_output_5_0_g455;
			float3 worldPosOffset1_g457 = temp_output_17_0_g457;
			LightVolumeSH( worldPos1_g457 , L01_g457 , L1r1_g457 , L1g1_g457 , L1b1_g457 , worldPosOffset1_g457 );
			float localLightVolumeSH1_g456 = ( 0.0 );
			float3 temp_output_6_0_g456 = ase_positionWS;
			float3 worldPos1_g456 = temp_output_6_0_g456;
			float3 L01_g456 = float3( 0,0,0 );
			float3 L1r1_g456 = float3( 0,0,0 );
			float3 L1g1_g456 = float3( 0,0,0 );
			float3 L1b1_g456 = float3( 0,0,0 );
			float3 temp_output_17_0_g456 = temp_output_5_0_g455;
			float3 worldPosOffset1_g456 = temp_output_17_0_g456;
			LightVolumeSH( worldPos1_g456 , L01_g456 , L1r1_g456 , L1g1_g456 , L1b1_g456 , worldPosOffset1_g456 );
			#ifdef LIGHTMAP_ON
				float3 staticSwitch17_g455 = L01_g456;
			#else
				float3 staticSwitch17_g455 = L01_g457;
			#endif
			#ifdef _LIGHTVOLUMES_ON
				float3 staticSwitch21_g455 = staticSwitch17_g455;
			#else
				float3 staticSwitch21_g455 = appendResult13_g455;
			#endif
			float3 L025_g455 = staticSwitch21_g455;
			float3 L02_g458 = L025_g455;
			#ifdef LIGHTMAP_ON
				float3 staticSwitch14_g455 = L1r1_g456;
			#else
				float3 staticSwitch14_g455 = L1r1_g457;
			#endif
			#ifdef _LIGHTVOLUMES_ON
				float3 staticSwitch18_g455 = staticSwitch14_g455;
			#else
				float3 staticSwitch18_g455 = (unity_SHAr).xyz;
			#endif
			float3 L1r22_g455 = staticSwitch18_g455;
			float3 L1r2_g458 = L1r22_g455;
			#ifdef LIGHTMAP_ON
				float3 staticSwitch15_g455 = L1g1_g456;
			#else
				float3 staticSwitch15_g455 = L1g1_g457;
			#endif
			#ifdef _LIGHTVOLUMES_ON
				float3 staticSwitch19_g455 = staticSwitch15_g455;
			#else
				float3 staticSwitch19_g455 = (unity_SHAg).xyz;
			#endif
			float3 L1g23_g455 = staticSwitch19_g455;
			float3 L1g2_g458 = L1g23_g455;
			#ifdef LIGHTMAP_ON
				float3 staticSwitch16_g455 = L1b1_g456;
			#else
				float3 staticSwitch16_g455 = L1b1_g457;
			#endif
			#ifdef _LIGHTVOLUMES_ON
				float3 staticSwitch20_g455 = staticSwitch16_g455;
			#else
				float3 staticSwitch20_g455 = (unity_SHAb).xyz;
			#endif
			float3 L1b24_g455 = staticSwitch20_g455;
			float3 L1b2_g458 = L1b24_g455;
			float3 localLightVolumeEvaluate2_g458 = LightVolumeEvaluate( worldNormal2_g458 , L02_g458 , L1r2_g458 , L1g2_g458 , L1b2_g458 );
			float3 Albedo33_g455 = Albedo63.rgb;
			float3 temp_output_82_0_g455 = ( localLightVolumeEvaluate2_g458 * Albedo33_g455 );
			float4 tex2DNode28 = tex2D( _SpecularTextureChannel, MainUVFinal234 );
			float3 Specular83 = tex2DNode28.rgb;
			float3 SpecularMap34_g455 = Specular83.rgb;
			float3 temp_output_138_0_g460 = SpecularMap34_g455;
			float3 f0157_g460 = temp_output_138_0_g460;
			float Smoothnes262 = ( tex2DNode28.a * _Glossiness );
			float Smoothness35_g455 = Smoothnes262;
			float temp_output_3_0_g460 = Smoothness35_g455;
			float smoothness157_g460 = temp_output_3_0_g460;
			float3 temp_output_2_0_g460 = World_Normal53_g455;
			float3 worldNormal157_g460 = temp_output_2_0_g460;
			float3 ase_viewDirSafeWS = Unity_SafeNormalize( ase_viewVectorWS );
			float3 temp_output_9_0_g460 = ase_viewDirSafeWS;
			float3 viewDir157_g460 = temp_output_9_0_g460;
			float3 temp_output_65_0_g460 = L025_g455;
			float3 L0157_g460 = temp_output_65_0_g460;
			float3 temp_output_1_0_g460 = L1r22_g455;
			float3 L1r157_g460 = temp_output_1_0_g460;
			float3 temp_output_36_0_g460 = L1g23_g455;
			float3 L1g157_g460 = temp_output_36_0_g460;
			float3 temp_output_37_0_g460 = L1b24_g455;
			float3 L1b157_g460 = temp_output_37_0_g460;
			float3 localLightVolumeSpecular157_g460 = LightVolumeSpecular( f0157_g460 , smoothness157_g460 , worldNormal157_g460 , viewDir157_g460 , L0157_g460 , L1r157_g460 , L1g157_g460 , L1b157_g460 );
			float3 temp_output_138_0_g459 = SpecularMap34_g455;
			float3 f0158_g459 = temp_output_138_0_g459;
			float temp_output_3_0_g459 = Smoothness35_g455;
			float smoothness158_g459 = temp_output_3_0_g459;
			float3 temp_output_2_0_g459 = World_Normal53_g455;
			float3 worldNormal158_g459 = temp_output_2_0_g459;
			float3 temp_output_9_0_g459 = ase_viewDirSafeWS;
			float3 viewDir158_g459 = temp_output_9_0_g459;
			float3 temp_output_65_0_g459 = L025_g455;
			float3 L0158_g459 = temp_output_65_0_g459;
			float3 temp_output_1_0_g459 = L1r22_g455;
			float3 L1r158_g459 = temp_output_1_0_g459;
			float3 temp_output_36_0_g459 = L1g23_g455;
			float3 L1g158_g459 = temp_output_36_0_g459;
			float3 temp_output_37_0_g459 = L1b24_g455;
			float3 L1b158_g459 = temp_output_37_0_g459;
			float3 localLightVolumeSpecularDominant158_g459 = LightVolumeSpecularDominant( f0158_g459 , smoothness158_g459 , worldNormal158_g459 , viewDir158_g459 , L0158_g459 , L1r158_g459 , L1g158_g459 , L1b158_g459 );
			#ifdef _DOMINANTDIRSPECULARS_ON
				float3 staticSwitch38_g455 = localLightVolumeSpecularDominant158_g459;
			#else
				float3 staticSwitch38_g455 = localLightVolumeSpecular157_g460;
			#endif
			float AO56_g455 = 1.0;
			float3 Speculars40_g455 = ( staticSwitch38_g455 * AO56_g455 );
			#ifdef _SPECULARS_ON
				float3 staticSwitch84_g455 = ( temp_output_82_0_g455 + Speculars40_g455 );
			#else
				float3 staticSwitch84_g455 = temp_output_82_0_g455;
			#endif
			float3 IndirectAndSpeculars86_g455 = ( staticSwitch84_g455 * AO56_g455 );
			#ifdef _Q_LIGHTVOLUMES_ON
				float3 staticSwitch259 = IndirectAndSpeculars86_g455;
			#else
				float3 staticSwitch259 = float3( 0,0,0 );
			#endif
			float4 Emission179 = ( ( float4( MainEmission88 , 0.0 ) + float4( MainEmission2226 , 0.0 ) + (( _QEnableGlobal )?( lerpResult55_g419 ):( float4( 0,0,0,0 ) )) ) + float4( staticSwitch259 , 0.0 ) );
			o.Emission = Emission179.rgb;
			o.Specular = Specular83;
			o.Smoothness = Smoothnes262;
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
Version=19901
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;204;-2639.555,158;Inherit;False;2616.409;2740.468;Base Textures;61;250;249;248;236;247;246;243;231;230;212;195;206;205;214;64;63;215;210;10;216;209;83;14;9;11;226;207;15;208;28;12;88;5;237;225;29;203;4;224;202;223;222;201;56;221;220;53;52;239;238;219;55;234;242;235;233;253;252;244;245;262;;1,1,1,1;0;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;4;-1920,208;Inherit;True;Property;_MainTex;Main Tex;9;0;Create;True;0;0;0;False;0;False;None;a16b3161c8c05f54ba87ec06bfdd6b82;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.IntNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;246;-1856,416;Inherit;False;Property;_MainUVIndex;MainUVIndex;117;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;247;-1664,400;Inherit;False;UVSelect;-1;;369;be9f0a2bbb8e0f340a2211011430e00a;0;2;3;SAMPLER2D;_Sampler3247;False;18;INT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;233;-1456,416;Inherit;False;MainUV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;235;-1808,544;Inherit;False;233;MainUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;242;-1600,544;Inherit;False;UVHandling;0;;370;c17d079c1ac3cf440936a2325286a38a;0;1;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;234;-1392,544;Inherit;False;MainUVFinal;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;55;-1776,1552;Inherit;True;Property;_EmissionMap;Emission Map;18;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;219;-1776,1984;Inherit;True;Property;_EmissionMap2;Emission Map 2;17;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;238;-1488,1616;Inherit;False;234;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;239;-1504,2048;Inherit;False;234;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;208;-1904,896;Inherit;True;Property;_DetailNormalMap;Detail Normal Map;25;0;Create;False;0;0;0;False;0;False;None;aef25913bc0271f498e5006238d33577;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.IntNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;252;-1856,1088;Inherit;False;Property;_DetailUVIndex;DetailUVIndex;115;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;52;-1232,1760;Inherit;False;Property;_EmissionColor;Emission Color;21;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;4,4,4,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;53;-1264,1552;Inherit;True;Property;_TextureSample5;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;220;-1264,1984;Inherit;True;Property;_TextureSample10;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;221;-1232,2192;Inherit;False;Property;_EmissionColor2;Emission Color2;20;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;4,4,4,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;253;-1664,976;Inherit;False;UVSelect;-1;;373;be9f0a2bbb8e0f340a2211011430e00a;0;2;3;SAMPLER2D;_Sampler3241;False;18;INT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;12;-1760,656;Inherit;True;Property;_BumpMap;NormalMap;22;0;Create;False;0;0;0;False;0;False;None;aef25913bc0271f498e5006238d33577;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;236;-1456,672;Inherit;False;234;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;15;-1536,768;Inherit;False;Property;_BumpScale;Normal Scale;23;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;207;-1552,1120;Inherit;False;Property;_DetailNormalMapScale;Detail Normal Map Scale;27;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;29;-1776,1312;Inherit;True;Property;_SpecularTextureChannel;Specular Map;26;0;Create;False;0;0;0;False;0;False;None;95bc897e80af50446bc05c7e8d2649ae;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;237;-1488,1376;Inherit;False;234;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;5;-1456,208;Inherit;False;MainTexTex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;248;-1440,288;Inherit;False;234;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;56;-880,1552;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;201;-864,1664;Inherit;False;Property;_Emission;Emission;109;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;222;-976,1984;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;223;-976,2096;Inherit;False;Property;_Emission2;Emission2;112;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;14;-1248,656;Inherit;True;Property;_TextureSample1;Texture Sample 1;3;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;209;-1248,896;Inherit;True;Property;_TextureSample8;Texture Sample 1;3;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;28;-1264,1312;Inherit;True;Property;_TextureSample3;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;11;-1184,416;Inherit;False;Property;_Color;Color;16;0;Create;False;0;0;0;False;0;False;0,0,0,0;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;9;-1248,208;Inherit;True;Property;_TextureSample0;Texture Sample 0;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;244;-848,1424;Inherit;False;Property;_Glossiness;Glossiness;105;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;202;-704,1552;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;224;-816,1984;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendNormalsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;210;-864,656;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;10;-768,208;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;245;-528,1392;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;203;-560,1552;Inherit;False;Property;_EnableEmission;EnableEmission;108;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;225;-672,1984;Inherit;False;Property;_EnableEmission2;EnableEmission2;111;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;64;-544,656;Inherit;False;Normal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;83;-784,1312;Inherit;False;Specular;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;63;-576,208;Inherit;False;Albedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;262;-382.3958,1362.098;Inherit;False;Smoothnes;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;88;-288,1552;Inherit;False;MainEmission;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;226;-464,1984;Inherit;False;MainEmission2;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;254;272,2384;Inherit;False;63;Albedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;255;272,2464;Inherit;False;83;Specular;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;257;272,2624;Inherit;False;64;Normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;256;240,2544;Inherit;False;262;Smoothnes;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;249;-1872,2640;Inherit;False;Property;_AlphaUVIndex;AlphaUVIndex;116;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;216;-1904,2432;Inherit;True;Property;_AlphaMap;AlphaMap;19;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;227;240,2144;Inherit;False;226;MainEmission2;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;89;240,2064;Inherit;False;88;MainEmission;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;264;272,2224;Inherit;False;QuatumGlow;28;;419;7730a8711ab108044bac907ea573069c;0;0;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;265;528,2384;Inherit;False;LightVolumesSpecularConnector;10;;455;e7830579c7edaa2489fdbf704cb14f73;0;5;32;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;31;FLOAT;0;False;1;FLOAT3;0,0,0;False;90;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;250;-1664,2624;Inherit;False;UVSelect;-1;;374;be9f0a2bbb8e0f340a2211011430e00a;0;2;3;SAMPLER2D;_Sampler3250;False;18;INT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;176;496,2064;Inherit;True;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;259;848,2368;Inherit;False;Property;_Q_LightVolumes;Q_LightVolumes;114;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;215;-1248,2432;Inherit;True;Property;_TextureSample9;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;260;1104,2064;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;213;494,158;Inherit;False;1963;673;Output;7;0;217;74;81;65;75;263;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;214;-672,2480;Inherit;False;AlphaMap;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;179;1360,2064;Inherit;False;Emission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;65;992,288;Inherit;False;64;Normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;205;-2304,336;Inherit;False;Property;_ShowRendering;ShowRendering;110;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;206;-2464,336;Inherit;False;Property;_Culling;Culling;106;1;[Enum];Create;False;0;1;Option1;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;195;-2192,240;Inherit;False;Property;_ShowMain;ShowMain;107;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;212;-2464,240;Inherit;False;Property;_Cutoff;Cutoff;24;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;230;-2464,560;Inherit;False;Property;_ShaderType;ShaderType;103;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;231;-2464,464;Inherit;False;Property;_RenderType;RenderType;104;0;Create;True;0;0;0;True;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;243;-2272,464;Inherit;False;Property;_ShowParallax;ShowParallax;113;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;217;1552,688;Inherit;False;214;AlphaMap;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;75;976,464;Inherit;False;83;Specular;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;263;976,544;Inherit;False;262;Smoothnes;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;81;960,384;Inherit;False;179;Emission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;74;960,208;Inherit;False;63;Albedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;0;2160,208;Float;False;True;-1;4;Saphi.QuantumShader.QuantumShaderUI;0;0;StandardSpecular;Saphi/QuantumShaderSpecularCutout;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;;0;False;;False;0;False;;0;False;;False;0;Masked;0.5;True;True;0;False;TransparentCutout;;AlphaTest;All;12;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;0;0;False;;0;False;;0;0;False;;0;False;;0;False;;0;False;;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;;-1;-1;-1;-1;0;False;0;0;True;_Culling;-1;0;True;_Cutoff;1;Include;audio;True;1ec20832dfbb48343b8e0764e0864276;Custom;False;0;0;;0;0;False;0.1;False;;0;False;;False;17;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;16;FLOAT4;0,0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;247;3;4;0
WireConnection;247;18;246;0
WireConnection;233;0;247;0
WireConnection;242;1;235;0
WireConnection;234;0;242;0
WireConnection;53;0;55;0
WireConnection;53;1;238;0
WireConnection;220;0;219;0
WireConnection;220;1;239;0
WireConnection;253;3;208;0
WireConnection;253;18;252;0
WireConnection;5;0;4;0
WireConnection;56;0;53;5
WireConnection;56;1;52;5
WireConnection;222;0;220;5
WireConnection;222;1;221;5
WireConnection;14;0;12;0
WireConnection;14;1;236;0
WireConnection;14;5;15;0
WireConnection;209;0;208;0
WireConnection;209;1;253;0
WireConnection;209;5;207;0
WireConnection;28;0;29;0
WireConnection;28;1;237;0
WireConnection;9;0;5;0
WireConnection;9;1;248;0
WireConnection;202;0;56;0
WireConnection;202;1;201;0
WireConnection;224;0;222;0
WireConnection;224;1;223;0
WireConnection;210;0;14;0
WireConnection;210;1;209;0
WireConnection;10;0;9;5
WireConnection;10;1;11;5
WireConnection;245;0;28;4
WireConnection;245;1;244;0
WireConnection;203;1;202;0
WireConnection;225;1;224;0
WireConnection;64;0;210;0
WireConnection;83;0;28;5
WireConnection;63;0;10;0
WireConnection;262;0;245;0
WireConnection;88;0;203;0
WireConnection;226;0;225;0
WireConnection;265;32;254;0
WireConnection;265;30;255;0
WireConnection;265;31;256;0
WireConnection;265;1;257;0
WireConnection;250;3;216;0
WireConnection;250;18;249;0
WireConnection;176;0;89;0
WireConnection;176;1;227;0
WireConnection;176;2;264;0
WireConnection;259;0;265;0
WireConnection;215;0;216;0
WireConnection;215;1;250;0
WireConnection;260;0;176;0
WireConnection;260;1;259;0
WireConnection;214;0;215;1
WireConnection;179;0;260;0
WireConnection;0;0;74;0
WireConnection;0;1;65;0
WireConnection;0;2;81;0
WireConnection;0;3;75;0
WireConnection;0;4;263;0
WireConnection;0;10;217;0
ASEEND*/
//CHKSM=344175A54CD28AFBF6125C5B29534065A8E5EC18