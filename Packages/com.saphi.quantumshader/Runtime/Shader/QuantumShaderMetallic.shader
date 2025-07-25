// Made with Amplify Shader Editor v1.9.9.1
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Saphi/QuantumShaderMetallic"
{
	Properties
	{
		[Toggle( _LIGHTVOLUMES_ON )] _LightVolumes( "Enable Light Volumes", Float ) = 1
		_LightVolumesBias( "Light Volumes Bias", Float ) = 0
		[Toggle( _SPECULARS_ON )] _Speculars( "Speculars", Float ) = 1
		[Toggle( _DOMINANTDIRSPECULARS_ON )] _DominantDirSpeculars( "Dominant Dir Speculars", Float ) = 0
		_ShowLightVolumes( "ShowLightVolumes", Float ) = 0
		_LightVolumesMultiplier( "LightVolumesMultiplier", Float ) = 1
		_ParallaxMap( "ParallaxMap", 2D ) = "white" {}
		_Parallax( "Parallax", Range( 0, 0.08 ) ) = 0
		_ParallaxMinSamples( "ParallaxMinSamples", Range( 1, 128 ) ) = 8
		_ParallaxMaxSamples( "ParallaxMaxSamples", Range( 1, 128 ) ) = 16
		_ParallaxSideWallSteps( "ParallaxSideWallSteps", Range( 0, 10 ) ) = 2
		_ParallaxRefPlane( "ParallaxRefPlane", Range( 0, 1 ) ) = 0
		[Toggle( _PARALLAXENABLE_ON )] _ParallaxEnable( "ParallaxEnable", Float ) = 0
		_MainTex( "Main Tex", 2D ) = "white" {}
		_Color( "Color", Color ) = ( 0, 0, 0, 0 )
		_EmissionMap( "Emission Map", 2D ) = "white" {}
		_EmissionMap2( "Emission Map 2", 2D ) = "black" {}
		[HDR] _EmissionColor( "Emission Color", Color ) = ( 0, 0, 0, 0 )
		[HDR] _EmissionColor2( "Emission Color2", Color ) = ( 0, 0, 0, 0 )
		_BumpMap( "NormalMap", 2D ) = "bump" {}
		_BumpScale( "Normal Scale", Range( 0, 1 ) ) = 1
		_DetailNormalMap( "Detail Normal Map", 2D ) = "bump" {}
		_MetallicGlossMap( "Metallic Gloss Map", 2D ) = "black" {}
		_DetailNormalMapScale( "Detail Normal Map Scale", Range( 0, 1 ) ) = 0
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
		[Enum(Overlay,0,Multiply,1,Direct no wave,2)] _QBlendMode4( "QBlendMode4", Int ) = 0
		[Enum(Overlay,0,Multiply,1,Direct no wave,2)] _QBlendMode1( "QBlendMode1", Int ) = 0
		[Enum(Band 1,0,Band 2,1,Band 3,2,Band 4,3)] _QBand1( "QBand1", Int ) = 0
		[Enum(Whole color,0,Whole color Direction,1,Gradient wave,2,Gradient direction,3,Static Color,4,Hue Rotation,5)] _QType2( "QType2", Int ) = 0
		[Enum(Overlay,0,Multiply,1,Direct no wave,2)] _QBlendMode2( "QBlendMode2", Int ) = 0
		[Enum(Whole Color,0,Whole Color Direction,1,Gradient Wave,2,Gradient Direction,3,Static Color,4,Hue Rotation,5)] _QType4( "QType4", Int ) = 0
		[Enum(Whole Color,0,Whole Color Direction,1,Gradient Wave,2,Gradient Direction,3,Static Color,4,Hue Rotation,5)] _QType3( "QType3", Int ) = 0
		[Enum(Overlay,0,Multiply,1,Direct no wave,2)] _QBlendMode3( "QBlendMode3", Int ) = 0
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
		[HideInInspector] _texcoord2( "", 2D ) = "white" {}
		[HideInInspector] _texcoord3( "", 2D ) = "white" {}
		[HideInInspector] _texcoord4( "", 2D ) = "white" {}
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)] _QDirectionUVIndex( "DirectionUVIndex", Int ) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)] _QGlowMapUVIndex( "GlowMapUVIndex", Int ) = 0
		_Glossiness( "Glossiness", Range( 0, 1 ) ) = 1
		[Toggle] _AlbedoAlpha( "AlbedoAlpha", Float ) = 0
		_ShaderType( "ShaderType", Float ) = 1
		_RenderType( "RenderType", Float ) = 0
		_Metallic( "Metallic", Range( 0, 1 ) ) = 1
		[Enum(UnityEngine.Rendering.CullMode)] _Culling( "Culling", Float ) = 2
		_ShowMain( "ShowMain", Float ) = 0
		[Toggle] _EnableEmission( "EnableEmission", Float ) = 0
		_Emission( "Emission", Float ) = 1
		_ShowRendering( "ShowRendering", Float ) = 0
		[Toggle] _EnableEmission2( "EnableEmission2", Float ) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)] _MainUVIndex( "MainUVIndex", Int ) = 0
		_Emission2( "Emission2", Float ) = 1
		_ShowParallax( "ShowParallax", Float ) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)] _DetailUVIndex( "DetailUVIndex", Int ) = 0
		[Toggle( _Q_LIGHTVOLUMES_ON )] _Q_LightVolumes( "Q_LightVolumes", Float ) = 0
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" "IsEmissive" = "true"  }
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

		uniform int _QGlowMapUVIndex;
		uniform int _QDirectionUVIndex;
		uniform float _ShowQuantumBand1;
		uniform float _ShowQuantumBand2;
		uniform float _ShowQuantumBand3;
		uniform float _ShowQuantumBand4;
		uniform float _ShowQuantum;
		uniform int _QBlendMode2;
		uniform float _ShowLightVolumes;
		uniform float _LightVolumesMultiplier;
		uniform float _ShowRendering;
		uniform float _ShowMain;
		uniform float _Culling;
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
		uniform float _LightVolumesBias;
		uniform sampler2D _MetallicGlossMap;
		uniform float _Metallic;
		uniform float _AlbedoAlpha;
		uniform float _Glossiness;


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


		inline float AudioLinkLerp3_g388( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g385( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g382( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g386( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g383( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g384( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		float3 HSVToRGB( float3 c )
		{
			float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
			float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
			return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
		}


		inline float AudioLinkLerp3_g396( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g393( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g390( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g394( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g391( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g392( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g380( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g377( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g374( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g378( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g375( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g376( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g372( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g369( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g366( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g370( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g367( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g368( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		float IfAudioLinkv2Exists1_g364(  )
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

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST.xy + _MainTex_ST.zw;
			float2 uv2_MainTex = i.uv2_texcoord2 * _MainTex_ST.xy + _MainTex_ST.zw;
			int temp_output_18_0_g289 = _MainUVIndex;
			float2 lerpResult22_g289 = lerp( uv_MainTex , uv2_MainTex , (float)saturate( temp_output_18_0_g289 ));
			float2 uv3_MainTex = i.uv3_texcoord3 * _MainTex_ST.xy + _MainTex_ST.zw;
			int temp_output_26_0_g289 = ( temp_output_18_0_g289 - 1 );
			float2 lerpResult25_g289 = lerp( lerpResult22_g289 , uv3_MainTex , (float)saturate( temp_output_26_0_g289 ));
			float2 uv4_MainTex = i.uv4_texcoord4 * _MainTex_ST.xy + _MainTex_ST.zw;
			int temp_output_31_0_g289 = ( temp_output_26_0_g289 - 1 );
			float2 lerpResult29_g289 = lerp( lerpResult25_g289 , uv4_MainTex , (float)saturate( temp_output_31_0_g289 ));
			float2 uv5_MainTex = i.ase_texcoord5 * _MainTex_ST.xy + _MainTex_ST.zw;
			float2 lerpResult35_g289 = lerp( lerpResult29_g289 , uv5_MainTex.xy , (float)saturate( ( temp_output_31_0_g289 - 1 ) ));
			float2 MainUV224 = lerpResult35_g289;
			float2 temp_output_1_0_g291 = MainUV224;
			float3 ase_normalWS = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 ase_positionWS = i.worldPos;
			float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_positionWS );
			float3 ase_viewDirWS = normalize( ase_viewVectorWS );
			float2 OffsetPOM7_g291 = POM( _ParallaxMap, temp_output_1_0_g291, ddx( temp_output_1_0_g291 ), ddy( temp_output_1_0_g291 ), ase_normalWS, ase_viewDirWS, Unity_SafeNormalize( i.viewDir ), (int)_ParallaxMinSamples, (int)_ParallaxMaxSamples, (int)_ParallaxSideWallSteps, _Parallax, _ParallaxRefPlane, _ParallaxMap_ST.xy, float2( 0, 0 ), 0 );
			#ifdef _PARALLAXENABLE_ON
				float2 staticSwitch10_g291 = OffsetPOM7_g291;
			#else
				float2 staticSwitch10_g291 = temp_output_1_0_g291;
			#endif
			float2 MainUVFinal225 = staticSwitch10_g291;
			float2 uv_DetailNormalMap = i.uv_texcoord * _DetailNormalMap_ST.xy + _DetailNormalMap_ST.zw;
			float2 uv2_DetailNormalMap = i.uv2_texcoord2 * _DetailNormalMap_ST.xy + _DetailNormalMap_ST.zw;
			int temp_output_18_0_g326 = _DetailUVIndex;
			float2 lerpResult22_g326 = lerp( uv_DetailNormalMap , uv2_DetailNormalMap , (float)saturate( temp_output_18_0_g326 ));
			float2 uv3_DetailNormalMap = i.uv3_texcoord3 * _DetailNormalMap_ST.xy + _DetailNormalMap_ST.zw;
			int temp_output_26_0_g326 = ( temp_output_18_0_g326 - 1 );
			float2 lerpResult25_g326 = lerp( lerpResult22_g326 , uv3_DetailNormalMap , (float)saturate( temp_output_26_0_g326 ));
			float2 uv4_DetailNormalMap = i.uv4_texcoord4 * _DetailNormalMap_ST.xy + _DetailNormalMap_ST.zw;
			int temp_output_31_0_g326 = ( temp_output_26_0_g326 - 1 );
			float2 lerpResult29_g326 = lerp( lerpResult25_g326 , uv4_DetailNormalMap , (float)saturate( temp_output_31_0_g326 ));
			float2 uv5_DetailNormalMap = i.ase_texcoord5 * _DetailNormalMap_ST.xy + _DetailNormalMap_ST.zw;
			float2 lerpResult35_g326 = lerp( lerpResult29_g326 , uv5_DetailNormalMap.xy , (float)saturate( ( temp_output_31_0_g326 - 1 ) ));
			float3 Normal64 = BlendNormals( UnpackScaleNormal( tex2D( _BumpMap, MainUVFinal225 ), _BumpScale ) , UnpackScaleNormal( tex2D( _DetailNormalMap, lerpResult35_g326 ), _DetailNormalMapScale ) );
			o.Normal = Normal64;
			float4 tex2DNode9 = tex2D( _MainTex, MainUVFinal225 );
			float3 Albedo63 = ( tex2DNode9.rgb * _Color.rgb );
			o.Albedo = Albedo63;
			float3 MainEmission88 = (( _EnableEmission )?( ( ( tex2D( _EmissionMap, MainUVFinal225 ).rgb * _EmissionColor.rgb ) * _Emission ) ):( float3( 0,0,0 ) ));
			float3 MainEmission2219 = (( _EnableEmission2 )?( ( ( tex2D( _EmissionMap2, MainUVFinal225 ).rgb * _EmissionColor2.rgb ) * _Emission2 ) ):( float3( 0,0,0 ) ));
			float2 uv_QGlowMap = i.uv_texcoord * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			float2 uv2_QGlowMap = i.uv2_texcoord2 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			int temp_output_18_0_g398 = _QGlowMapUVIndex;
			float2 lerpResult22_g398 = lerp( uv_QGlowMap , uv2_QGlowMap , (float)saturate( temp_output_18_0_g398 ));
			float2 uv3_QGlowMap = i.uv3_texcoord3 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			int temp_output_26_0_g398 = ( temp_output_18_0_g398 - 1 );
			float2 lerpResult25_g398 = lerp( lerpResult22_g398 , uv3_QGlowMap , (float)saturate( temp_output_26_0_g398 ));
			float2 uv4_QGlowMap = i.uv4_texcoord4 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			int temp_output_31_0_g398 = ( temp_output_26_0_g398 - 1 );
			float2 lerpResult29_g398 = lerp( lerpResult25_g398 , uv4_QGlowMap , (float)saturate( temp_output_31_0_g398 ));
			float2 uv5_QGlowMap = i.ase_texcoord5 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			float2 lerpResult35_g398 = lerp( lerpResult29_g398 , uv5_QGlowMap.xy , (float)saturate( ( temp_output_31_0_g398 - 1 ) ));
			float4 GlowMap7_g363 = tex2D( _QGlowMap, lerpResult35_g398 );
			float4 break12_g363 = GlowMap7_g363;
			float GlowMap130_g363 = break12_g363.r;
			int temp_output_106_0_g381 = _QBlendMode1;
			int temp_output_27_0_g381 = _QBand1;
			int Band3_g388 = temp_output_27_0_g381;
			float2 uv_QDirection = i.uv_texcoord * _QDirection_ST.xy + _QDirection_ST.zw;
			float2 uv2_QDirection = i.uv2_texcoord2 * _QDirection_ST.xy + _QDirection_ST.zw;
			int temp_output_18_0_g397 = _QDirectionUVIndex;
			float2 lerpResult22_g397 = lerp( uv_QDirection , uv2_QDirection , (float)saturate( temp_output_18_0_g397 ));
			float2 uv3_QDirection = i.uv3_texcoord3 * _QDirection_ST.xy + _QDirection_ST.zw;
			int temp_output_26_0_g397 = ( temp_output_18_0_g397 - 1 );
			float2 lerpResult25_g397 = lerp( lerpResult22_g397 , uv3_QDirection , (float)saturate( temp_output_26_0_g397 ));
			float2 uv4_QDirection = i.uv4_texcoord4 * _QDirection_ST.xy + _QDirection_ST.zw;
			int temp_output_31_0_g397 = ( temp_output_26_0_g397 - 1 );
			float2 lerpResult29_g397 = lerp( lerpResult25_g397 , uv4_QDirection , (float)saturate( temp_output_31_0_g397 ));
			float2 uv5_QDirection = i.ase_texcoord5 * _QDirection_ST.xy + _QDirection_ST.zw;
			float2 lerpResult35_g397 = lerp( lerpResult29_g397 , uv5_QDirection.xy , (float)saturate( ( temp_output_31_0_g397 - 1 ) ));
			float2 temp_output_288_0_g363 = lerpResult35_g397;
			float4 DirectionMap5_g363 = tex2D( _QDirection, temp_output_288_0_g363 );
			float2 break287_g363 = temp_output_288_0_g363;
			float Direction11_g363 = (( _UseUVAsDirection )?( (( _UseUVAsDirectionUV )?( break287_g363.y ):( break287_g363.x )) ):( DirectionMap5_g363.r ));
			float temp_output_1_0_g381 = (( _QInvertDirection1 )?( ( 1.0 - Direction11_g363 ) ):( Direction11_g363 ));
			float temp_output_5_0_g381 = ( _QHistory1 * temp_output_1_0_g381 );
			float Delay3_g388 = (( _QSmoothHistory )?( temp_output_5_0_g381 ):( floor( temp_output_5_0_g381 ) ));
			float localAudioLinkLerp3_g388 = AudioLinkLerp3_g388( Band3_g388 , Delay3_g388 );
			float temp_output_8_0_g381 = localAudioLinkLerp3_g388;
			float4 temp_cast_21 = (temp_output_8_0_g381).xxxx;
			float4 temp_output_1_0_g387 = temp_cast_21;
			float4 break5_g387 = temp_output_1_0_g387;
			int temp_output_52_0_g381 = _QType1;
			float temp_output_29_0_g381 = _QColorOffset1;
			int Band6_g385 = temp_output_27_0_g381;
			int Mode6_g385 = ( ( (int)_QColorRotationMode1 * 2 ) + (int)_QColorRotationSpeed1 );
			int localAudioLinkDecodeDataAsUInt6_g385 = AudioLinkDecodeDataAsUInt6_g385( Band6_g385 , Mode6_g385 );
			float temp_output_55_0_g381 = ( ( ( localAudioLinkDecodeDataAsUInt6_g385 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g381 = ( temp_output_55_0_g381 * (int)(( _QUseColorRotation1 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g381 = _QEffectScale1;
			int Index1_g382 = (int)floor( ( frac( ( ( temp_output_29_0_g381 + temp_output_95_0_g381 ) * temp_output_103_0_g381 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g382 = AudioLinkData1_g382( Index1_g382 );
			float4 ifLocalVar49_g381 = 0;
			if( temp_output_52_0_g381 == 0.0 )
				ifLocalVar49_g381 = localAudioLinkData1_g382;
			int Index1_g386 = (int)floor( ( frac( ( ( temp_output_29_0_g381 + temp_output_95_0_g381 + temp_output_1_0_g381 ) * temp_output_103_0_g381 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g386 = AudioLinkData1_g386( Index1_g386 );
			float4 ifLocalVar79_g381 = 0;
			if( temp_output_52_0_g381 == 1.0 )
				ifLocalVar79_g381 = localAudioLinkData1_g386;
			float Position1_g383 = saturate( frac( ( ( temp_output_8_0_g381 + temp_output_29_0_g381 + temp_output_95_0_g381 ) * temp_output_103_0_g381 ) ) );
			float4 localAudioLinkLerp1_g383 = AudioLinkLerp1_g383( Position1_g383 );
			float4 ifLocalVar50_g381 = 0;
			if( temp_output_52_0_g381 == 2.0 )
				ifLocalVar50_g381 = localAudioLinkLerp1_g383;
			float Position1_g384 = saturate( frac( ( ( temp_output_29_0_g381 + temp_output_1_0_g381 + temp_output_95_0_g381 ) * temp_output_103_0_g381 ) ) );
			float4 localAudioLinkLerp1_g384 = AudioLinkLerp1_g384( Position1_g384 );
			float4 ifLocalVar51_g381 = 0;
			if( temp_output_52_0_g381 == 3.0 )
				ifLocalVar51_g381 = localAudioLinkLerp1_g384;
			float4 color111_g381 = IsGammaSpace() ? float4( 1, 1, 1, 0 ) : float4( 1, 1, 1, 0 );
			float4 ifLocalVar110_g381 = 0;
			if( temp_output_52_0_g381 == 4.0 )
				ifLocalVar110_g381 = color111_g381;
			float3 hsvTorgb116_g381 = HSVToRGB( float3(temp_output_55_0_g381,1.0,1.0) );
			float3 ifLocalVar117_g381 = 0;
			if( temp_output_52_0_g381 == 5.0 )
				ifLocalVar117_g381 = hsvTorgb116_g381;
			float4 temp_output_53_0_g381 = ( ifLocalVar49_g381 + ifLocalVar79_g381 + ifLocalVar50_g381 + ifLocalVar51_g381 + ifLocalVar110_g381 + float4( ifLocalVar117_g381 , 0.0 ) );
			float4 temp_output_2_0_g387 = temp_output_53_0_g381;
			float4 ifLocalVar107_g381 = 0;
			if( temp_output_106_0_g381 == 0.0 )
				ifLocalVar107_g381 = ( ( ( break5_g387.r * 0.2 ) + ( break5_g387.g * 0.7 ) + ( break5_g387.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g387 * temp_output_2_0_g387 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g387 ) * ( 1.0 - temp_output_2_0_g387 ) ) ) );
			float4 ifLocalVar108_g381 = 0;
			if( temp_output_106_0_g381 == 1.0 )
				ifLocalVar108_g381 = ( temp_output_8_0_g381 * temp_output_53_0_g381 );
			float4 ifLocalVar112_g381 = 0;
			if( temp_output_106_0_g381 == 2.0 )
				ifLocalVar112_g381 = temp_output_53_0_g381;
			float GlowMap232_g363 = break12_g363.g;
			int temp_output_106_0_g389 = _QBlendMode2;
			int temp_output_27_0_g389 = _QBand2;
			int Band3_g396 = temp_output_27_0_g389;
			float temp_output_1_0_g389 = (( _QInvertDirection2 )?( ( 1.0 - Direction11_g363 ) ):( Direction11_g363 ));
			float temp_output_5_0_g389 = ( _QHistory2 * temp_output_1_0_g389 );
			float Delay3_g396 = (( _QSmoothHistory )?( temp_output_5_0_g389 ):( floor( temp_output_5_0_g389 ) ));
			float localAudioLinkLerp3_g396 = AudioLinkLerp3_g396( Band3_g396 , Delay3_g396 );
			float temp_output_8_0_g389 = localAudioLinkLerp3_g396;
			float4 temp_cast_36 = (temp_output_8_0_g389).xxxx;
			float4 temp_output_1_0_g395 = temp_cast_36;
			float4 break5_g395 = temp_output_1_0_g395;
			int temp_output_52_0_g389 = _QType2;
			float temp_output_29_0_g389 = _QColorOffset2;
			int Band6_g393 = temp_output_27_0_g389;
			int Mode6_g393 = ( ( (int)_QColorRotationMode2 * 2 ) + (int)_QColorRotationSpeed2 );
			int localAudioLinkDecodeDataAsUInt6_g393 = AudioLinkDecodeDataAsUInt6_g393( Band6_g393 , Mode6_g393 );
			float temp_output_55_0_g389 = ( ( ( localAudioLinkDecodeDataAsUInt6_g393 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g389 = ( temp_output_55_0_g389 * (int)(( _QUseColorRotation2 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g389 = _QEffectScale2;
			int Index1_g390 = (int)floor( ( frac( ( ( temp_output_29_0_g389 + temp_output_95_0_g389 ) * temp_output_103_0_g389 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g390 = AudioLinkData1_g390( Index1_g390 );
			float4 ifLocalVar49_g389 = 0;
			if( temp_output_52_0_g389 == 0.0 )
				ifLocalVar49_g389 = localAudioLinkData1_g390;
			int Index1_g394 = (int)floor( ( frac( ( ( temp_output_29_0_g389 + temp_output_95_0_g389 + temp_output_1_0_g389 ) * temp_output_103_0_g389 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g394 = AudioLinkData1_g394( Index1_g394 );
			float4 ifLocalVar79_g389 = 0;
			if( temp_output_52_0_g389 == 1.0 )
				ifLocalVar79_g389 = localAudioLinkData1_g394;
			float Position1_g391 = saturate( frac( ( ( temp_output_8_0_g389 + temp_output_29_0_g389 + temp_output_95_0_g389 ) * temp_output_103_0_g389 ) ) );
			float4 localAudioLinkLerp1_g391 = AudioLinkLerp1_g391( Position1_g391 );
			float4 ifLocalVar50_g389 = 0;
			if( temp_output_52_0_g389 == 2.0 )
				ifLocalVar50_g389 = localAudioLinkLerp1_g391;
			float Position1_g392 = saturate( frac( ( ( temp_output_29_0_g389 + temp_output_1_0_g389 + temp_output_95_0_g389 ) * temp_output_103_0_g389 ) ) );
			float4 localAudioLinkLerp1_g392 = AudioLinkLerp1_g392( Position1_g392 );
			float4 ifLocalVar51_g389 = 0;
			if( temp_output_52_0_g389 == 3.0 )
				ifLocalVar51_g389 = localAudioLinkLerp1_g392;
			float4 color111_g389 = IsGammaSpace() ? float4( 1, 1, 1, 0 ) : float4( 1, 1, 1, 0 );
			float4 ifLocalVar110_g389 = 0;
			if( temp_output_52_0_g389 == 4.0 )
				ifLocalVar110_g389 = color111_g389;
			float3 hsvTorgb116_g389 = HSVToRGB( float3(temp_output_55_0_g389,1.0,1.0) );
			float3 ifLocalVar117_g389 = 0;
			if( temp_output_52_0_g389 == 5.0 )
				ifLocalVar117_g389 = hsvTorgb116_g389;
			float4 temp_output_53_0_g389 = ( ifLocalVar49_g389 + ifLocalVar79_g389 + ifLocalVar50_g389 + ifLocalVar51_g389 + ifLocalVar110_g389 + float4( ifLocalVar117_g389 , 0.0 ) );
			float4 temp_output_2_0_g395 = temp_output_53_0_g389;
			float4 ifLocalVar107_g389 = 0;
			if( temp_output_106_0_g389 == 0.0 )
				ifLocalVar107_g389 = ( ( ( break5_g395.r * 0.2 ) + ( break5_g395.g * 0.7 ) + ( break5_g395.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g395 * temp_output_2_0_g395 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g395 ) * ( 1.0 - temp_output_2_0_g395 ) ) ) );
			float4 ifLocalVar108_g389 = 0;
			if( temp_output_106_0_g389 == 1.0 )
				ifLocalVar108_g389 = ( temp_output_8_0_g389 * temp_output_53_0_g389 );
			float4 ifLocalVar112_g389 = 0;
			if( temp_output_106_0_g389 == 2.0 )
				ifLocalVar112_g389 = temp_output_53_0_g389;
			float GlowMap331_g363 = break12_g363.b;
			int temp_output_106_0_g373 = _QBlendMode3;
			int temp_output_27_0_g373 = _QBand3;
			int Band3_g380 = temp_output_27_0_g373;
			float temp_output_1_0_g373 = (( _QInvertDirection3 )?( ( 1.0 - Direction11_g363 ) ):( Direction11_g363 ));
			float temp_output_5_0_g373 = ( _QHistory3 * temp_output_1_0_g373 );
			float Delay3_g380 = (( _QSmoothHistory )?( temp_output_5_0_g373 ):( floor( temp_output_5_0_g373 ) ));
			float localAudioLinkLerp3_g380 = AudioLinkLerp3_g380( Band3_g380 , Delay3_g380 );
			float temp_output_8_0_g373 = localAudioLinkLerp3_g380;
			float4 temp_cast_51 = (temp_output_8_0_g373).xxxx;
			float4 temp_output_1_0_g379 = temp_cast_51;
			float4 break5_g379 = temp_output_1_0_g379;
			int temp_output_52_0_g373 = _QType3;
			float temp_output_29_0_g373 = _QColorOffset3;
			int Band6_g377 = temp_output_27_0_g373;
			int Mode6_g377 = ( ( (int)_QColorRotationMode3 * 2 ) + (int)_QColorRotationSpeed3 );
			int localAudioLinkDecodeDataAsUInt6_g377 = AudioLinkDecodeDataAsUInt6_g377( Band6_g377 , Mode6_g377 );
			float temp_output_55_0_g373 = ( ( ( localAudioLinkDecodeDataAsUInt6_g377 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g373 = ( temp_output_55_0_g373 * (int)(( _QUseColorRotation3 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g373 = _QEffectScale3;
			int Index1_g374 = (int)floor( ( frac( ( ( temp_output_29_0_g373 + temp_output_95_0_g373 ) * temp_output_103_0_g373 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g374 = AudioLinkData1_g374( Index1_g374 );
			float4 ifLocalVar49_g373 = 0;
			if( temp_output_52_0_g373 == 0.0 )
				ifLocalVar49_g373 = localAudioLinkData1_g374;
			int Index1_g378 = (int)floor( ( frac( ( ( temp_output_29_0_g373 + temp_output_95_0_g373 + temp_output_1_0_g373 ) * temp_output_103_0_g373 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g378 = AudioLinkData1_g378( Index1_g378 );
			float4 ifLocalVar79_g373 = 0;
			if( temp_output_52_0_g373 == 1.0 )
				ifLocalVar79_g373 = localAudioLinkData1_g378;
			float Position1_g375 = saturate( frac( ( ( temp_output_8_0_g373 + temp_output_29_0_g373 + temp_output_95_0_g373 ) * temp_output_103_0_g373 ) ) );
			float4 localAudioLinkLerp1_g375 = AudioLinkLerp1_g375( Position1_g375 );
			float4 ifLocalVar50_g373 = 0;
			if( temp_output_52_0_g373 == 2.0 )
				ifLocalVar50_g373 = localAudioLinkLerp1_g375;
			float Position1_g376 = saturate( frac( ( ( temp_output_29_0_g373 + temp_output_1_0_g373 + temp_output_95_0_g373 ) * temp_output_103_0_g373 ) ) );
			float4 localAudioLinkLerp1_g376 = AudioLinkLerp1_g376( Position1_g376 );
			float4 ifLocalVar51_g373 = 0;
			if( temp_output_52_0_g373 == 3.0 )
				ifLocalVar51_g373 = localAudioLinkLerp1_g376;
			float4 color111_g373 = IsGammaSpace() ? float4( 1, 1, 1, 0 ) : float4( 1, 1, 1, 0 );
			float4 ifLocalVar110_g373 = 0;
			if( temp_output_52_0_g373 == 4.0 )
				ifLocalVar110_g373 = color111_g373;
			float3 hsvTorgb116_g373 = HSVToRGB( float3(temp_output_55_0_g373,1.0,1.0) );
			float3 ifLocalVar117_g373 = 0;
			if( temp_output_52_0_g373 == 5.0 )
				ifLocalVar117_g373 = hsvTorgb116_g373;
			float4 temp_output_53_0_g373 = ( ifLocalVar49_g373 + ifLocalVar79_g373 + ifLocalVar50_g373 + ifLocalVar51_g373 + ifLocalVar110_g373 + float4( ifLocalVar117_g373 , 0.0 ) );
			float4 temp_output_2_0_g379 = temp_output_53_0_g373;
			float4 ifLocalVar107_g373 = 0;
			if( temp_output_106_0_g373 == 0.0 )
				ifLocalVar107_g373 = ( ( ( break5_g379.r * 0.2 ) + ( break5_g379.g * 0.7 ) + ( break5_g379.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g379 * temp_output_2_0_g379 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g379 ) * ( 1.0 - temp_output_2_0_g379 ) ) ) );
			float4 ifLocalVar108_g373 = 0;
			if( temp_output_106_0_g373 == 1.0 )
				ifLocalVar108_g373 = ( temp_output_8_0_g373 * temp_output_53_0_g373 );
			float4 ifLocalVar112_g373 = 0;
			if( temp_output_106_0_g373 == 2.0 )
				ifLocalVar112_g373 = temp_output_53_0_g373;
			float GlowMap433_g363 = break12_g363.a;
			int temp_output_106_0_g365 = _QBlendMode4;
			int temp_output_27_0_g365 = _QBand4;
			int Band3_g372 = temp_output_27_0_g365;
			float temp_output_1_0_g365 = (( _QInvertDirection4 )?( ( 1.0 - Direction11_g363 ) ):( Direction11_g363 ));
			float temp_output_5_0_g365 = ( _QHistory4 * temp_output_1_0_g365 );
			float Delay3_g372 = (( _QSmoothHistory )?( temp_output_5_0_g365 ):( floor( temp_output_5_0_g365 ) ));
			float localAudioLinkLerp3_g372 = AudioLinkLerp3_g372( Band3_g372 , Delay3_g372 );
			float temp_output_8_0_g365 = localAudioLinkLerp3_g372;
			float4 temp_cast_66 = (temp_output_8_0_g365).xxxx;
			float4 temp_output_1_0_g371 = temp_cast_66;
			float4 break5_g371 = temp_output_1_0_g371;
			int temp_output_52_0_g365 = _QType4;
			float temp_output_29_0_g365 = _QColorOffset4;
			int Band6_g369 = temp_output_27_0_g365;
			int Mode6_g369 = ( ( (int)_QColorRotationMode4 * 2 ) + (int)_QColorRotationSpeed4 );
			int localAudioLinkDecodeDataAsUInt6_g369 = AudioLinkDecodeDataAsUInt6_g369( Band6_g369 , Mode6_g369 );
			float temp_output_55_0_g365 = ( ( ( localAudioLinkDecodeDataAsUInt6_g369 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g365 = ( temp_output_55_0_g365 * (int)(( _QUseColorRotation4 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g365 = _QEffectScale4;
			int Index1_g366 = (int)floor( ( frac( ( ( temp_output_29_0_g365 + temp_output_95_0_g365 ) * temp_output_103_0_g365 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g366 = AudioLinkData1_g366( Index1_g366 );
			float4 ifLocalVar49_g365 = 0;
			if( temp_output_52_0_g365 == 0.0 )
				ifLocalVar49_g365 = localAudioLinkData1_g366;
			int Index1_g370 = (int)floor( ( frac( ( ( temp_output_29_0_g365 + temp_output_95_0_g365 + temp_output_1_0_g365 ) * temp_output_103_0_g365 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g370 = AudioLinkData1_g370( Index1_g370 );
			float4 ifLocalVar79_g365 = 0;
			if( temp_output_52_0_g365 == 1.0 )
				ifLocalVar79_g365 = localAudioLinkData1_g370;
			float Position1_g367 = saturate( frac( ( ( temp_output_8_0_g365 + temp_output_29_0_g365 + temp_output_95_0_g365 ) * temp_output_103_0_g365 ) ) );
			float4 localAudioLinkLerp1_g367 = AudioLinkLerp1_g367( Position1_g367 );
			float4 ifLocalVar50_g365 = 0;
			if( temp_output_52_0_g365 == 2.0 )
				ifLocalVar50_g365 = localAudioLinkLerp1_g367;
			float Position1_g368 = saturate( frac( ( ( temp_output_29_0_g365 + temp_output_1_0_g365 + temp_output_95_0_g365 ) * temp_output_103_0_g365 ) ) );
			float4 localAudioLinkLerp1_g368 = AudioLinkLerp1_g368( Position1_g368 );
			float4 ifLocalVar51_g365 = 0;
			if( temp_output_52_0_g365 == 3.0 )
				ifLocalVar51_g365 = localAudioLinkLerp1_g368;
			float4 color111_g365 = IsGammaSpace() ? float4( 1, 1, 1, 0 ) : float4( 1, 1, 1, 0 );
			float4 ifLocalVar110_g365 = 0;
			if( temp_output_52_0_g365 == 4.0 )
				ifLocalVar110_g365 = color111_g365;
			float3 hsvTorgb116_g365 = HSVToRGB( float3(temp_output_55_0_g365,1.0,1.0) );
			float3 ifLocalVar117_g365 = 0;
			if( temp_output_52_0_g365 == 5.0 )
				ifLocalVar117_g365 = hsvTorgb116_g365;
			float4 temp_output_53_0_g365 = ( ifLocalVar49_g365 + ifLocalVar79_g365 + ifLocalVar50_g365 + ifLocalVar51_g365 + ifLocalVar110_g365 + float4( ifLocalVar117_g365 , 0.0 ) );
			float4 temp_output_2_0_g371 = temp_output_53_0_g365;
			float4 ifLocalVar107_g365 = 0;
			if( temp_output_106_0_g365 == 0.0 )
				ifLocalVar107_g365 = ( ( ( break5_g371.r * 0.2 ) + ( break5_g371.g * 0.7 ) + ( break5_g371.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g371 * temp_output_2_0_g371 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g371 ) * ( 1.0 - temp_output_2_0_g371 ) ) ) );
			float4 ifLocalVar108_g365 = 0;
			if( temp_output_106_0_g365 == 1.0 )
				ifLocalVar108_g365 = ( temp_output_8_0_g365 * temp_output_53_0_g365 );
			float4 ifLocalVar112_g365 = 0;
			if( temp_output_106_0_g365 == 2.0 )
				ifLocalVar112_g365 = temp_output_53_0_g365;
			float localIfAudioLinkv2Exists1_g364 = IfAudioLinkv2Exists1_g364();
			float4 lerpResult55_g363 = lerp( float4( 0,0,0,0 ) , ( _QuantumGlowColor * ( (( _QBandEnable1 )?( ( _QGlowColorBand1 * ( GlowMap130_g363 * ( ifLocalVar107_g381 + ifLocalVar108_g381 + ifLocalVar112_g381 ) ) * _QuantumGlowMultiply1 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable2 )?( ( _QGlowColorBand2 * ( GlowMap232_g363 * ( ifLocalVar107_g389 + ifLocalVar108_g389 + ifLocalVar112_g389 ) ) * _QuantumGlowMultiply2 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable3 )?( ( _QGlowColorBand3 * ( GlowMap331_g363 * ( ifLocalVar107_g373 + ifLocalVar108_g373 + ifLocalVar112_g373 ) ) * _QuantumGlowMultiply3 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable4 )?( ( _QGlowColorBand4 * ( GlowMap433_g363 * ( ifLocalVar107_g365 + ifLocalVar108_g365 + ifLocalVar112_g365 ) ) * _QuantumGlowMultiply4 ) ):( float4( 0,0,0,0 ) )) ) * _QuantumGlowMultiplyGlobal ) , localIfAudioLinkv2Exists1_g364);
			float3 normalizeResult3_g424 = normalize( (WorldNormalVector( i , Normal64 )) );
			float3 World_Normal53_g424 = normalizeResult3_g424;
			float3 worldNormal2_g427 = World_Normal53_g424;
			float3 appendResult13_g424 = (float3(unity_SHAr.w , unity_SHAg.w , unity_SHAb.w));
			float localLightVolumeSH1_g426 = ( 0.0 );
			float3 temp_output_6_0_g426 = ase_positionWS;
			float3 worldPos1_g426 = temp_output_6_0_g426;
			float3 L01_g426 = float3( 0,0,0 );
			float3 L1r1_g426 = float3( 0,0,0 );
			float3 L1g1_g426 = float3( 0,0,0 );
			float3 L1b1_g426 = float3( 0,0,0 );
			float3 temp_output_5_0_g424 = ( _LightVolumesBias * World_Normal53_g424 );
			float3 temp_output_17_0_g426 = temp_output_5_0_g424;
			float3 worldPosOffset1_g426 = temp_output_17_0_g426;
			LightVolumeSH( worldPos1_g426 , L01_g426 , L1r1_g426 , L1g1_g426 , L1b1_g426 , worldPosOffset1_g426 );
			float localLightVolumeSH1_g425 = ( 0.0 );
			float3 temp_output_6_0_g425 = ase_positionWS;
			float3 worldPos1_g425 = temp_output_6_0_g425;
			float3 L01_g425 = float3( 0,0,0 );
			float3 L1r1_g425 = float3( 0,0,0 );
			float3 L1g1_g425 = float3( 0,0,0 );
			float3 L1b1_g425 = float3( 0,0,0 );
			float3 temp_output_17_0_g425 = temp_output_5_0_g424;
			float3 worldPosOffset1_g425 = temp_output_17_0_g425;
			LightVolumeSH( worldPos1_g425 , L01_g425 , L1r1_g425 , L1g1_g425 , L1b1_g425 , worldPosOffset1_g425 );
			#ifdef LIGHTMAP_ON
				float3 staticSwitch17_g424 = L01_g425;
			#else
				float3 staticSwitch17_g424 = L01_g426;
			#endif
			#ifdef _LIGHTVOLUMES_ON
				float3 staticSwitch21_g424 = staticSwitch17_g424;
			#else
				float3 staticSwitch21_g424 = appendResult13_g424;
			#endif
			float3 L025_g424 = staticSwitch21_g424;
			float3 L02_g427 = L025_g424;
			#ifdef LIGHTMAP_ON
				float3 staticSwitch14_g424 = L1r1_g425;
			#else
				float3 staticSwitch14_g424 = L1r1_g426;
			#endif
			#ifdef _LIGHTVOLUMES_ON
				float3 staticSwitch18_g424 = staticSwitch14_g424;
			#else
				float3 staticSwitch18_g424 = (unity_SHAr).xyz;
			#endif
			float3 L1r22_g424 = staticSwitch18_g424;
			float3 L1r2_g427 = L1r22_g424;
			#ifdef LIGHTMAP_ON
				float3 staticSwitch15_g424 = L1g1_g425;
			#else
				float3 staticSwitch15_g424 = L1g1_g426;
			#endif
			#ifdef _LIGHTVOLUMES_ON
				float3 staticSwitch19_g424 = staticSwitch15_g424;
			#else
				float3 staticSwitch19_g424 = (unity_SHAg).xyz;
			#endif
			float3 L1g23_g424 = staticSwitch19_g424;
			float3 L1g2_g427 = L1g23_g424;
			#ifdef LIGHTMAP_ON
				float3 staticSwitch16_g424 = L1b1_g425;
			#else
				float3 staticSwitch16_g424 = L1b1_g426;
			#endif
			#ifdef _LIGHTVOLUMES_ON
				float3 staticSwitch20_g424 = staticSwitch16_g424;
			#else
				float3 staticSwitch20_g424 = (unity_SHAb).xyz;
			#endif
			float3 L1b24_g424 = staticSwitch20_g424;
			float3 L1b2_g427 = L1b24_g424;
			float3 localLightVolumeEvaluate2_g427 = LightVolumeEvaluate( worldNormal2_g427 , L02_g427 , L1r2_g427 , L1g2_g427 , L1b2_g427 );
			float3 Albedo33_g424 = Albedo63;
			float4 tex2DNode28 = tex2D( _MetallicGlossMap, MainUVFinal225 );
			float Metallic83 = ( tex2DNode28.r * _Metallic );
			float Metallic34_g424 = Metallic83;
			float3 temp_output_82_0_g424 = ( localLightVolumeEvaluate2_g427 * Albedo33_g424 * ( 1.0 - Metallic34_g424 ) );
			float3 temp_output_138_0_g429 = Albedo33_g424;
			float3 albedo157_g429 = temp_output_138_0_g429;
			float MetallicAlpha251 = tex2DNode28.a;
			float AlbedoAlpha250 = tex2DNode9.a;
			float Smoothnes247 = ( (( _AlbedoAlpha )?( AlbedoAlpha250 ):( MetallicAlpha251 )) * _Glossiness );
			float Smoothness35_g424 = Smoothnes247;
			float temp_output_3_0_g429 = Smoothness35_g424;
			float smoothness157_g429 = temp_output_3_0_g429;
			float temp_output_137_0_g429 = Metallic34_g424;
			float metallic157_g429 = temp_output_137_0_g429;
			float3 temp_output_2_0_g429 = World_Normal53_g424;
			float3 worldNormal157_g429 = temp_output_2_0_g429;
			float3 ase_viewDirSafeWS = Unity_SafeNormalize( ase_viewVectorWS );
			float3 temp_output_9_0_g429 = ase_viewDirSafeWS;
			float3 viewDir157_g429 = temp_output_9_0_g429;
			float3 temp_output_65_0_g429 = L025_g424;
			float3 L0157_g429 = temp_output_65_0_g429;
			float3 temp_output_1_0_g429 = L1r22_g424;
			float3 L1r157_g429 = temp_output_1_0_g429;
			float3 temp_output_36_0_g429 = L1g23_g424;
			float3 L1g157_g429 = temp_output_36_0_g429;
			float3 temp_output_37_0_g429 = L1b24_g424;
			float3 L1b157_g429 = temp_output_37_0_g429;
			float3 localLightVolumeSpecular157_g429 = LightVolumeSpecular( albedo157_g429 , smoothness157_g429 , metallic157_g429 , worldNormal157_g429 , viewDir157_g429 , L0157_g429 , L1r157_g429 , L1g157_g429 , L1b157_g429 );
			float3 temp_output_138_0_g428 = Albedo33_g424;
			float3 albedo158_g428 = temp_output_138_0_g428;
			float temp_output_3_0_g428 = Smoothness35_g424;
			float smoothness158_g428 = temp_output_3_0_g428;
			float temp_output_137_0_g428 = Metallic34_g424;
			float metallic158_g428 = temp_output_137_0_g428;
			float3 temp_output_2_0_g428 = World_Normal53_g424;
			float3 worldNormal158_g428 = temp_output_2_0_g428;
			float3 temp_output_9_0_g428 = ase_viewDirSafeWS;
			float3 viewDir158_g428 = temp_output_9_0_g428;
			float3 temp_output_65_0_g428 = L025_g424;
			float3 L0158_g428 = temp_output_65_0_g428;
			float3 temp_output_1_0_g428 = L1r22_g424;
			float3 L1r158_g428 = temp_output_1_0_g428;
			float3 temp_output_36_0_g428 = L1g23_g424;
			float3 L1g158_g428 = temp_output_36_0_g428;
			float3 temp_output_37_0_g428 = L1b24_g424;
			float3 L1b158_g428 = temp_output_37_0_g428;
			float3 localLightVolumeSpecularDominant158_g428 = LightVolumeSpecularDominant( albedo158_g428 , smoothness158_g428 , metallic158_g428 , worldNormal158_g428 , viewDir158_g428 , L0158_g428 , L1r158_g428 , L1g158_g428 , L1b158_g428 );
			#ifdef _DOMINANTDIRSPECULARS_ON
				float3 staticSwitch38_g424 = localLightVolumeSpecularDominant158_g428;
			#else
				float3 staticSwitch38_g424 = localLightVolumeSpecular157_g429;
			#endif
			float AO56_g424 = 1.0;
			float3 Speculars40_g424 = ( staticSwitch38_g424 * AO56_g424 );
			#ifdef _SPECULARS_ON
				float3 staticSwitch84_g424 = ( temp_output_82_0_g424 + Speculars40_g424 );
			#else
				float3 staticSwitch84_g424 = temp_output_82_0_g424;
			#endif
			float3 IndirectAndSpeculars86_g424 = ( staticSwitch84_g424 * AO56_g424 );
			#ifdef _Q_LIGHTVOLUMES_ON
				float3 staticSwitch256 = ( _LightVolumesMultiplier * IndirectAndSpeculars86_g424 );
			#else
				float3 staticSwitch256 = float3( 0,0,0 );
			#endif
			float4 Emission179 = ( ( float4( MainEmission88 , 0.0 ) + float4( MainEmission2219 , 0.0 ) + (( _QEnableGlobal )?( lerpResult55_g363 ):( float4( 0,0,0,0 ) )) ) + float4( staticSwitch256 , 0.0 ) );
			o.Emission = Emission179.rgb;
			o.Metallic = Metallic83;
			o.Smoothness = Smoothnes247;
			o.Alpha = 1;
		}

		ENDCG
		CGPROGRAM
		#pragma surface surf Standard keepalpha fullforwardshadows vertex:vertexDataFunc 

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
				SurfaceOutputStandard o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputStandard, o )
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
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;203;-4241.33,158;Inherit;False;4399.451;2663.229;Base Textures;61;233;222;221;205;195;204;64;209;208;14;63;83;227;219;206;15;207;12;88;10;28;218;202;9;11;228;29;217;201;216;215;200;56;4;214;213;53;52;230;229;212;55;225;232;226;224;242;243;244;245;246;247;236;235;237;240;241;250;251;252;253;;1,1,1,1;0;0
Node;AmplifyShaderEditor.IntNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;243;-1840,480;Inherit;False;Property;_MainUVIndex;MainUVIndex;113;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;4;-1888,208;Inherit;True;Property;_MainTex;Main Tex;16;0;Create;True;0;0;0;False;0;False;None;a16b3161c8c05f54ba87ec06bfdd6b82;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;242;-1632,432;Inherit;False;UVSelect;-1;;289;be9f0a2bbb8e0f340a2211011430e00a;0;2;3;SAMPLER2D;1,1;False;18;INT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;224;-1424,432;Inherit;False;MainUV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;226;-1824,576;Inherit;False;224;MainUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;232;-1632,576;Inherit;False;UVHandling;7;;290;c17d079c1ac3cf440936a2325286a38a;0;1;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;225;-1408,576;Inherit;False;MainUVFinal;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;244;-1440,288;Inherit;False;225;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;29;-1760,1264;Inherit;True;Property;_MetallicGlossMap;Metallic Gloss Map;25;0;Create;False;0;0;0;False;0;False;None;95bc897e80af50446bc05c7e8d2649ae;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;228;-1504,1312;Inherit;False;225;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;28;-1248,1264;Inherit;True;Property;_TextureSample3;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;9;-1248,208;Inherit;True;Property;_TextureSample0;Texture Sample 0;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;55;-1776,1552;Inherit;True;Property;_EmissionMap;Emission Map;18;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;212;-1808,2032;Inherit;True;Property;_EmissionMap2;Emission Map 2;19;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;229;-1504,1600;Inherit;False;225;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;230;-1520,2096;Inherit;False;225;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;207;-2160,880;Inherit;True;Property;_DetailNormalMap;Detail Normal Map;24;0;Create;False;0;0;0;False;0;False;None;aef25913bc0271f498e5006238d33577;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.IntNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;246;-2096,1120;Inherit;False;Property;_DetailUVIndex;DetailUVIndex;116;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;250;-752,336;Inherit;False;AlbedoAlpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;251;-928,1392;Inherit;False;MetallicAlpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;52;-1232,1760;Inherit;False;Property;_EmissionColor;Emission Color;20;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;4,4,4,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;53;-1264,1552;Inherit;True;Property;_TextureSample5;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;213;-1296,2032;Inherit;True;Property;_TextureSample9;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;214;-1264,2240;Inherit;False;Property;_EmissionColor2;Emission Color2;21;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;4,4,4,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;245;-1744,944;Inherit;False;UVSelect;-1;;326;be9f0a2bbb8e0f340a2211011430e00a;0;2;3;SAMPLER2D;_Sampler3245;False;18;INT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;12;-1760,656;Inherit;True;Property;_BumpMap;NormalMap;22;0;Create;False;0;0;0;False;0;False;None;aef25913bc0271f498e5006238d33577;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;15;-1536,768;Inherit;False;Property;_BumpScale;Normal Scale;23;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;227;-1488,688;Inherit;False;225;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;206;-1712,1104;Inherit;False;Property;_DetailNormalMapScale;Detail Normal Map Scale;26;0;Create;False;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;252;-1232,2592;Inherit;False;250;AlbedoAlpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;253;-1264,2528;Inherit;False;251;MetallicAlpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;56;-880,1552;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;200;-864,1664;Inherit;False;Property;_Emission;Emission;110;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;215;-1008,2032;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;216;-1008,2144;Inherit;False;Property;_Emission2;Emission2;114;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;11;-1184,416;Inherit;False;Property;_Color;Color;17;0;Create;False;0;0;0;False;0;False;0,0,0,0;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;14;-1248,656;Inherit;True;Property;_TextureSample1;Texture Sample 1;3;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;208;-1248,880;Inherit;True;Property;_TextureSample8;Texture Sample 1;3;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;236;-1056,2656;Inherit;False;Property;_Glossiness;Glossiness;102;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;235;-992,2560;Inherit;False;Property;_AlbedoAlpha;AlbedoAlpha;103;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;240;-976,1280;Inherit;False;Property;_Metallic;Metallic;106;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;201;-704,1552;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;217;-848,2032;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;10;-768,208;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendNormalsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;209;-896,656;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;241;-640,1248;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;237;-768,2560;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;202;-560,1552;Inherit;False;Property;_EnableEmission;EnableEmission;109;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;218;-704,2032;Inherit;False;Property;_EnableEmission2;EnableEmission2;112;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;63;-576,208;Inherit;False;Albedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;64;-480,656;Inherit;True;Normal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;83;-336,1264;Inherit;False;Metallic;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;247;-624,2560;Inherit;False;Smoothnes;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;88;-272,1552;Inherit;False;MainEmission;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;219;-496,2032;Inherit;False;MainEmission2;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;257;288,2320;Inherit;False;63;Albedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;258;288,2384;Inherit;False;83;Metallic;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;260;288,2512;Inherit;False;64;Normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;259;256,2448;Inherit;False;247;Smoothnes;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;211;480,2208;Inherit;False;QuatumGlow;27;;363;7730a8711ab108044bac907ea573069c;0;0;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;263;544,2320;Inherit;False;LightVolumesMetallicConnector;0;;424;4103f3421d11ef3498c02a836aaf4678;0;5;32;FLOAT3;0,0,0;False;30;FLOAT;0;False;31;FLOAT;0;False;1;FLOAT3;0,0,0;False;90;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;89;464,2048;Inherit;False;88;MainEmission;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;220;464,2128;Inherit;False;219;MainEmission2;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;176;720,2048;Inherit;True;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;256;864,2304;Inherit;False;Property;_Q_LightVolumes;Q_LightVolumes;117;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;262;1120,2048;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;210;494,158;Inherit;False;1595;725;Output;6;0;81;65;74;254;255;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;179;1424,2048;Inherit;False;Emission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;74;592,240;Inherit;False;63;Albedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;81;592,416;Inherit;False;179;Emission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;204;-3984,368;Inherit;False;Property;_ShowRendering;ShowRendering;111;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;195;-3984,288;Inherit;False;Property;_ShowMain;ShowMain;108;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;205;-4176,352;Inherit;False;Property;_Culling;Culling;107;1;[Enum];Create;False;0;1;Option1;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;221;-3984,576;Inherit;False;Property;_ShaderType;ShaderType;104;0;Create;True;0;0;0;True;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;222;-3984,480;Inherit;False;Property;_RenderType;RenderType;105;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;233;-3792,368;Inherit;False;Property;_ShowParallax;ShowParallax;115;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;255;608,608;Inherit;False;247;Smoothnes;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;254;608,512;Inherit;False;83;Metallic;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;65;592,320;Inherit;False;64;Normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;0;1776,240;Float;False;True;-1;4;Saphi.QuantumShader.QuantumShaderUI;0;0;Standard;Saphi/QuantumShaderMetallic;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;;0;False;;False;0;False;;0;False;;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;All;12;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;0;0;False;;0;False;;0;0;False;;0;False;;0;False;;0;False;;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;;-1;-1;-1;-1;0;False;0;0;True;_Culling;-1;0;False;;1;Include;;True;1ec20832dfbb48343b8e0764e0864276;Custom;False;0;0;;0;0;False;0.1;False;;0;False;;False;17;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;16;FLOAT4;0,0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;242;3;4;0
WireConnection;242;18;243;0
WireConnection;224;0;242;0
WireConnection;232;1;226;0
WireConnection;225;0;232;0
WireConnection;28;0;29;0
WireConnection;28;1;228;0
WireConnection;9;0;4;0
WireConnection;9;1;244;0
WireConnection;250;0;9;4
WireConnection;251;0;28;4
WireConnection;53;0;55;0
WireConnection;53;1;229;0
WireConnection;213;0;212;0
WireConnection;213;1;230;0
WireConnection;245;3;207;0
WireConnection;245;18;246;0
WireConnection;56;0;53;5
WireConnection;56;1;52;5
WireConnection;215;0;213;5
WireConnection;215;1;214;5
WireConnection;14;0;12;0
WireConnection;14;1;227;0
WireConnection;14;5;15;0
WireConnection;208;0;207;0
WireConnection;208;1;245;0
WireConnection;208;5;206;0
WireConnection;235;0;253;0
WireConnection;235;1;252;0
WireConnection;201;0;56;0
WireConnection;201;1;200;0
WireConnection;217;0;215;0
WireConnection;217;1;216;0
WireConnection;10;0;9;5
WireConnection;10;1;11;5
WireConnection;209;0;14;0
WireConnection;209;1;208;0
WireConnection;241;0;28;1
WireConnection;241;1;240;0
WireConnection;237;0;235;0
WireConnection;237;1;236;0
WireConnection;202;1;201;0
WireConnection;218;1;217;0
WireConnection;63;0;10;0
WireConnection;64;0;209;0
WireConnection;83;0;241;0
WireConnection;247;0;237;0
WireConnection;88;0;202;0
WireConnection;219;0;218;0
WireConnection;263;32;257;0
WireConnection;263;30;258;0
WireConnection;263;31;259;0
WireConnection;263;1;260;0
WireConnection;176;0;89;0
WireConnection;176;1;220;0
WireConnection;176;2;211;0
WireConnection;256;0;263;0
WireConnection;262;0;176;0
WireConnection;262;1;256;0
WireConnection;179;0;262;0
WireConnection;0;0;74;0
WireConnection;0;1;65;0
WireConnection;0;2;81;0
WireConnection;0;3;254;0
WireConnection;0;4;255;0
ASEEND*/
//CHKSM=D3C8FA3BB4DA7D2128F16C9A9D4DCACA0B97C38B