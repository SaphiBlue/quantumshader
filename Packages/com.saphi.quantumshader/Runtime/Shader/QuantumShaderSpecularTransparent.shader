// Made with Amplify Shader Editor v1.9.9.1
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Saphi/QuantumShaderSpecularTransparent"
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
		[Toggle( _LIGHTVOLUMES_ON )] _LightVolumes( "Enable Light Volumes", Float ) = 1
		_LightVolumesBias( "Light Volumes Bias", Float ) = 0
		[Toggle( _SPECULARS_ON )] _Speculars( "Speculars", Float ) = 1
		[Toggle( _DOMINANTDIRSPECULARS_ON )] _DominantDirSpeculars( "Dominant Dir Speculars", Float ) = 0
		_ShowLightVolumes( "ShowLightVolumes", Float ) = 0
		_LightVolumesMultiplier( "LightVolumesMultiplier", Float ) = 1
		_MainTex( "Main Tex", 2D ) = "white" {}
		_Color( "Color", Color ) = ( 0, 0, 0, 0 )
		_EmissionMap2( "Emission Map 2", 2D ) = "black" {}
		_EmissionMap( "Emission Map", 2D ) = "white" {}
		_AlphaMap( "AlphaMap", 2D ) = "white" {}
		_Opacity( "Opacity", Range( 0, 1 ) ) = 1
		[HDR] _EmissionColor2( "Emission Color2", Color ) = ( 0, 0, 0, 0 )
		[HDR] _EmissionColor( "Emission Color", Color ) = ( 0, 0, 0, 0 )
		_BumpMap( "NormalMap", 2D ) = "bump" {}
		_BumpScale( "Normal Scale", Range( 0, 1 ) ) = 1
		_DetailNormalMap( "Detail Normal Map", 2D ) = "bump" {}
		_Cutoff( "Cutoff", Range( 0, 1 ) ) = 0
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
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] _texcoord2( "", 2D ) = "white" {}
		[HideInInspector] _texcoord4( "", 2D ) = "white" {}
		[HideInInspector] _texcoord3( "", 2D ) = "white" {}
		[Toggle] _UseUVAsDirectionUV( "UseUVAsDirectionUV", Float ) = 0
		[Toggle] _UseUVAsDirection( "UseUVAsDirection", Float ) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)] _QDirectionUVIndex( "DirectionUVIndex", Int ) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)] _QGlowMapUVIndex( "GlowMapUVIndex", Int ) = 0
		[Enum(UnityEngine.Rendering.BlendMode)] _BlendModeDst( "BlendModeDst", Float ) = 10
		_Glossiness( "Glossiness", Range( 0, 1 ) ) = 1
		[Enum(UnityEngine.Rendering.BlendMode)] _BlendModeSrc( "BlendModeSrc", Float ) = 5
		_BlendMode( "BlendMode", Float ) = 0
		[Enum(UnityEngine.Rendering.CullMode)] _Culling( "Culling", Float ) = 2
		_ShowMain( "ShowMain", Float ) = 0
		[Toggle] _EnableEmission( "EnableEmission", Float ) = 0
		_Emission( "Emission", Float ) = 1
		_ShowRendering( "ShowRendering", Float ) = 0
		_RenderType( "RenderType", Float ) = 2
		[Toggle( _Q_LIGHTVOLUMES_ON )] _Q_LightVolumes( "Q_LightVolumes", Float ) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)] _AlphaUVIndex( "AlphaUVIndex", Int ) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)] _DetailUVIndex( "DetailUVIndex", Int ) = 0
		_ShaderType( "ShaderType", Float ) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)] _MainUVIndex( "MainUVIndex", Int ) = 0
		[Toggle] _EnableEmission2( "EnableEmission2", Float ) = 0
		_Emission2( "Emission2", Float ) = 1
		_ShowParallax( "ShowParallax", Float ) = 0
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Custom"  "Queue" = "Transparent+0" "IsEmissive" = "true"  }
		Cull [_Culling]
		Blend [_BlendModeSrc] [_BlendModeDst]
		
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
		uniform float _Opacity;


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


		inline float AudioLinkLerp3_g495( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g492( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g489( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g493( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g490( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g491( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		float3 HSVToRGB( float3 c )
		{
			float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
			float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
			return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
		}


		inline float AudioLinkLerp3_g503( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g500( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g497( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g501( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g498( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g499( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g487( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g484( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g481( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g485( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g482( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g483( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g479( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g476( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g473( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g477( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g474( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g475( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		float IfAudioLinkv2Exists1_g471(  )
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
			int temp_output_18_0_g377 = _MainUVIndex;
			float2 lerpResult22_g377 = lerp( uv_MainTex , uv2_MainTex , (float)saturate( temp_output_18_0_g377 ));
			float2 uv3_MainTex = i.uv3_texcoord3 * _MainTex_ST.xy + _MainTex_ST.zw;
			int temp_output_26_0_g377 = ( temp_output_18_0_g377 - 1 );
			float2 lerpResult25_g377 = lerp( lerpResult22_g377 , uv3_MainTex , (float)saturate( temp_output_26_0_g377 ));
			float2 uv4_MainTex = i.uv4_texcoord4 * _MainTex_ST.xy + _MainTex_ST.zw;
			int temp_output_31_0_g377 = ( temp_output_26_0_g377 - 1 );
			float2 lerpResult29_g377 = lerp( lerpResult25_g377 , uv4_MainTex , (float)saturate( temp_output_31_0_g377 ));
			float2 uv5_MainTex = i.ase_texcoord5 * _MainTex_ST.xy + _MainTex_ST.zw;
			float2 lerpResult35_g377 = lerp( lerpResult29_g377 , uv5_MainTex.xy , (float)saturate( ( temp_output_31_0_g377 - 1 ) ));
			float2 MainUV244 = lerpResult35_g377;
			float2 temp_output_1_0_g379 = MainUV244;
			float3 ase_normalWS = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 ase_positionWS = i.worldPos;
			float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_positionWS );
			float3 ase_viewDirWS = normalize( ase_viewVectorWS );
			float2 OffsetPOM7_g379 = POM( _ParallaxMap, temp_output_1_0_g379, ddx( temp_output_1_0_g379 ), ddy( temp_output_1_0_g379 ), ase_normalWS, ase_viewDirWS, Unity_SafeNormalize( i.viewDir ), (int)_ParallaxMinSamples, (int)_ParallaxMaxSamples, (int)_ParallaxSideWallSteps, _Parallax, _ParallaxRefPlane, _ParallaxMap_ST.xy, float2( 0, 0 ), 0 );
			#ifdef _PARALLAXENABLE_ON
				float2 staticSwitch10_g379 = OffsetPOM7_g379;
			#else
				float2 staticSwitch10_g379 = temp_output_1_0_g379;
			#endif
			float2 MainUVFinal242 = staticSwitch10_g379;
			float2 uv_DetailNormalMap = i.uv_texcoord * _DetailNormalMap_ST.xy + _DetailNormalMap_ST.zw;
			float2 uv2_DetailNormalMap = i.uv2_texcoord2 * _DetailNormalMap_ST.xy + _DetailNormalMap_ST.zw;
			int temp_output_18_0_g383 = _DetailUVIndex;
			float2 lerpResult22_g383 = lerp( uv_DetailNormalMap , uv2_DetailNormalMap , (float)saturate( temp_output_18_0_g383 ));
			float2 uv3_DetailNormalMap = i.uv3_texcoord3 * _DetailNormalMap_ST.xy + _DetailNormalMap_ST.zw;
			int temp_output_26_0_g383 = ( temp_output_18_0_g383 - 1 );
			float2 lerpResult25_g383 = lerp( lerpResult22_g383 , uv3_DetailNormalMap , (float)saturate( temp_output_26_0_g383 ));
			float2 uv4_DetailNormalMap = i.uv4_texcoord4 * _DetailNormalMap_ST.xy + _DetailNormalMap_ST.zw;
			int temp_output_31_0_g383 = ( temp_output_26_0_g383 - 1 );
			float2 lerpResult29_g383 = lerp( lerpResult25_g383 , uv4_DetailNormalMap , (float)saturate( temp_output_31_0_g383 ));
			float2 uv5_DetailNormalMap = i.ase_texcoord5 * _DetailNormalMap_ST.xy + _DetailNormalMap_ST.zw;
			float2 lerpResult35_g383 = lerp( lerpResult29_g383 , uv5_DetailNormalMap.xy , (float)saturate( ( temp_output_31_0_g383 - 1 ) ));
			float3 Normal64 = BlendNormals( UnpackScaleNormal( tex2D( _BumpMap, MainUVFinal242 ), _BumpScale ) , UnpackScaleNormal( tex2D( _DetailNormalMap, lerpResult35_g383 ), _DetailNormalMapScale ) );
			o.Normal = Normal64;
			float3 Albedo63 = ( tex2D( _MainTex, MainUVFinal242 ).rgb * _Color.rgb );
			o.Albedo = Albedo63;
			float3 MainEmission88 = (( _EnableEmission )?( ( ( tex2D( _EmissionMap, MainUVFinal242 ).rgb * _EmissionColor.rgb ) * _Emission ) ):( float3( 0,0,0 ) ));
			float3 MainEmission2226 = (( _EnableEmission2 )?( ( ( tex2D( _EmissionMap2, MainUVFinal242 ).rgb * _EmissionColor2.rgb ) * _Emission2 ) ):( float3( 0,0,0 ) ));
			float2 uv_QGlowMap = i.uv_texcoord * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			float2 uv2_QGlowMap = i.uv2_texcoord2 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			int temp_output_18_0_g505 = _QGlowMapUVIndex;
			float2 lerpResult22_g505 = lerp( uv_QGlowMap , uv2_QGlowMap , (float)saturate( temp_output_18_0_g505 ));
			float2 uv3_QGlowMap = i.uv3_texcoord3 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			int temp_output_26_0_g505 = ( temp_output_18_0_g505 - 1 );
			float2 lerpResult25_g505 = lerp( lerpResult22_g505 , uv3_QGlowMap , (float)saturate( temp_output_26_0_g505 ));
			float2 uv4_QGlowMap = i.uv4_texcoord4 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			int temp_output_31_0_g505 = ( temp_output_26_0_g505 - 1 );
			float2 lerpResult29_g505 = lerp( lerpResult25_g505 , uv4_QGlowMap , (float)saturate( temp_output_31_0_g505 ));
			float2 uv5_QGlowMap = i.ase_texcoord5 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			float2 lerpResult35_g505 = lerp( lerpResult29_g505 , uv5_QGlowMap.xy , (float)saturate( ( temp_output_31_0_g505 - 1 ) ));
			float4 GlowMap7_g470 = tex2D( _QGlowMap, lerpResult35_g505 );
			float4 break12_g470 = GlowMap7_g470;
			float GlowMap130_g470 = break12_g470.r;
			int temp_output_106_0_g488 = _QBlendMode1;
			int temp_output_27_0_g488 = _QBand1;
			int Band3_g495 = temp_output_27_0_g488;
			float2 uv_QDirection = i.uv_texcoord * _QDirection_ST.xy + _QDirection_ST.zw;
			float2 uv2_QDirection = i.uv2_texcoord2 * _QDirection_ST.xy + _QDirection_ST.zw;
			int temp_output_18_0_g504 = _QDirectionUVIndex;
			float2 lerpResult22_g504 = lerp( uv_QDirection , uv2_QDirection , (float)saturate( temp_output_18_0_g504 ));
			float2 uv3_QDirection = i.uv3_texcoord3 * _QDirection_ST.xy + _QDirection_ST.zw;
			int temp_output_26_0_g504 = ( temp_output_18_0_g504 - 1 );
			float2 lerpResult25_g504 = lerp( lerpResult22_g504 , uv3_QDirection , (float)saturate( temp_output_26_0_g504 ));
			float2 uv4_QDirection = i.uv4_texcoord4 * _QDirection_ST.xy + _QDirection_ST.zw;
			int temp_output_31_0_g504 = ( temp_output_26_0_g504 - 1 );
			float2 lerpResult29_g504 = lerp( lerpResult25_g504 , uv4_QDirection , (float)saturate( temp_output_31_0_g504 ));
			float2 uv5_QDirection = i.ase_texcoord5 * _QDirection_ST.xy + _QDirection_ST.zw;
			float2 lerpResult35_g504 = lerp( lerpResult29_g504 , uv5_QDirection.xy , (float)saturate( ( temp_output_31_0_g504 - 1 ) ));
			float2 temp_output_288_0_g470 = lerpResult35_g504;
			float4 DirectionMap5_g470 = tex2D( _QDirection, temp_output_288_0_g470 );
			float2 break287_g470 = temp_output_288_0_g470;
			float Direction11_g470 = (( _UseUVAsDirection )?( (( _UseUVAsDirectionUV )?( break287_g470.y ):( break287_g470.x )) ):( DirectionMap5_g470.r ));
			float temp_output_1_0_g488 = (( _QInvertDirection1 )?( ( 1.0 - Direction11_g470 ) ):( Direction11_g470 ));
			float temp_output_5_0_g488 = ( _QHistory1 * temp_output_1_0_g488 );
			float Delay3_g495 = (( _QSmoothHistory )?( temp_output_5_0_g488 ):( floor( temp_output_5_0_g488 ) ));
			float localAudioLinkLerp3_g495 = AudioLinkLerp3_g495( Band3_g495 , Delay3_g495 );
			float temp_output_8_0_g488 = localAudioLinkLerp3_g495;
			float4 temp_cast_21 = (temp_output_8_0_g488).xxxx;
			float4 temp_output_1_0_g494 = temp_cast_21;
			float4 break5_g494 = temp_output_1_0_g494;
			int temp_output_52_0_g488 = _QType1;
			float temp_output_29_0_g488 = _QColorOffset1;
			int Band6_g492 = temp_output_27_0_g488;
			int Mode6_g492 = ( ( (int)_QColorRotationMode1 * 2 ) + (int)_QColorRotationSpeed1 );
			int localAudioLinkDecodeDataAsUInt6_g492 = AudioLinkDecodeDataAsUInt6_g492( Band6_g492 , Mode6_g492 );
			float temp_output_55_0_g488 = ( ( ( localAudioLinkDecodeDataAsUInt6_g492 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g488 = ( temp_output_55_0_g488 * (int)(( _QUseColorRotation1 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g488 = _QEffectScale1;
			int Index1_g489 = (int)floor( ( frac( ( ( temp_output_29_0_g488 + temp_output_95_0_g488 ) * temp_output_103_0_g488 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g489 = AudioLinkData1_g489( Index1_g489 );
			float4 ifLocalVar49_g488 = 0;
			if( temp_output_52_0_g488 == 0.0 )
				ifLocalVar49_g488 = localAudioLinkData1_g489;
			int Index1_g493 = (int)floor( ( frac( ( ( temp_output_29_0_g488 + temp_output_95_0_g488 + temp_output_1_0_g488 ) * temp_output_103_0_g488 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g493 = AudioLinkData1_g493( Index1_g493 );
			float4 ifLocalVar79_g488 = 0;
			if( temp_output_52_0_g488 == 1.0 )
				ifLocalVar79_g488 = localAudioLinkData1_g493;
			float Position1_g490 = saturate( frac( ( ( temp_output_8_0_g488 + temp_output_29_0_g488 + temp_output_95_0_g488 ) * temp_output_103_0_g488 ) ) );
			float4 localAudioLinkLerp1_g490 = AudioLinkLerp1_g490( Position1_g490 );
			float4 ifLocalVar50_g488 = 0;
			if( temp_output_52_0_g488 == 2.0 )
				ifLocalVar50_g488 = localAudioLinkLerp1_g490;
			float Position1_g491 = saturate( frac( ( ( temp_output_29_0_g488 + temp_output_1_0_g488 + temp_output_95_0_g488 ) * temp_output_103_0_g488 ) ) );
			float4 localAudioLinkLerp1_g491 = AudioLinkLerp1_g491( Position1_g491 );
			float4 ifLocalVar51_g488 = 0;
			if( temp_output_52_0_g488 == 3.0 )
				ifLocalVar51_g488 = localAudioLinkLerp1_g491;
			float4 color111_g488 = IsGammaSpace() ? float4( 1, 1, 1, 0 ) : float4( 1, 1, 1, 0 );
			float4 ifLocalVar110_g488 = 0;
			if( temp_output_52_0_g488 == 4.0 )
				ifLocalVar110_g488 = color111_g488;
			float3 hsvTorgb116_g488 = HSVToRGB( float3(temp_output_55_0_g488,1.0,1.0) );
			float3 ifLocalVar117_g488 = 0;
			if( temp_output_52_0_g488 == 5.0 )
				ifLocalVar117_g488 = hsvTorgb116_g488;
			float4 temp_output_53_0_g488 = ( ifLocalVar49_g488 + ifLocalVar79_g488 + ifLocalVar50_g488 + ifLocalVar51_g488 + ifLocalVar110_g488 + float4( ifLocalVar117_g488 , 0.0 ) );
			float4 temp_output_2_0_g494 = temp_output_53_0_g488;
			float4 ifLocalVar107_g488 = 0;
			if( temp_output_106_0_g488 == 0.0 )
				ifLocalVar107_g488 = ( ( ( break5_g494.r * 0.2 ) + ( break5_g494.g * 0.7 ) + ( break5_g494.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g494 * temp_output_2_0_g494 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g494 ) * ( 1.0 - temp_output_2_0_g494 ) ) ) );
			float4 ifLocalVar108_g488 = 0;
			if( temp_output_106_0_g488 == 1.0 )
				ifLocalVar108_g488 = ( temp_output_8_0_g488 * temp_output_53_0_g488 );
			float4 ifLocalVar112_g488 = 0;
			if( temp_output_106_0_g488 == 2.0 )
				ifLocalVar112_g488 = temp_output_53_0_g488;
			float GlowMap232_g470 = break12_g470.g;
			int temp_output_106_0_g496 = _QBlendMode2;
			int temp_output_27_0_g496 = _QBand2;
			int Band3_g503 = temp_output_27_0_g496;
			float temp_output_1_0_g496 = (( _QInvertDirection2 )?( ( 1.0 - Direction11_g470 ) ):( Direction11_g470 ));
			float temp_output_5_0_g496 = ( _QHistory2 * temp_output_1_0_g496 );
			float Delay3_g503 = (( _QSmoothHistory )?( temp_output_5_0_g496 ):( floor( temp_output_5_0_g496 ) ));
			float localAudioLinkLerp3_g503 = AudioLinkLerp3_g503( Band3_g503 , Delay3_g503 );
			float temp_output_8_0_g496 = localAudioLinkLerp3_g503;
			float4 temp_cast_36 = (temp_output_8_0_g496).xxxx;
			float4 temp_output_1_0_g502 = temp_cast_36;
			float4 break5_g502 = temp_output_1_0_g502;
			int temp_output_52_0_g496 = _QType2;
			float temp_output_29_0_g496 = _QColorOffset2;
			int Band6_g500 = temp_output_27_0_g496;
			int Mode6_g500 = ( ( (int)_QColorRotationMode2 * 2 ) + (int)_QColorRotationSpeed2 );
			int localAudioLinkDecodeDataAsUInt6_g500 = AudioLinkDecodeDataAsUInt6_g500( Band6_g500 , Mode6_g500 );
			float temp_output_55_0_g496 = ( ( ( localAudioLinkDecodeDataAsUInt6_g500 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g496 = ( temp_output_55_0_g496 * (int)(( _QUseColorRotation2 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g496 = _QEffectScale2;
			int Index1_g497 = (int)floor( ( frac( ( ( temp_output_29_0_g496 + temp_output_95_0_g496 ) * temp_output_103_0_g496 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g497 = AudioLinkData1_g497( Index1_g497 );
			float4 ifLocalVar49_g496 = 0;
			if( temp_output_52_0_g496 == 0.0 )
				ifLocalVar49_g496 = localAudioLinkData1_g497;
			int Index1_g501 = (int)floor( ( frac( ( ( temp_output_29_0_g496 + temp_output_95_0_g496 + temp_output_1_0_g496 ) * temp_output_103_0_g496 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g501 = AudioLinkData1_g501( Index1_g501 );
			float4 ifLocalVar79_g496 = 0;
			if( temp_output_52_0_g496 == 1.0 )
				ifLocalVar79_g496 = localAudioLinkData1_g501;
			float Position1_g498 = saturate( frac( ( ( temp_output_8_0_g496 + temp_output_29_0_g496 + temp_output_95_0_g496 ) * temp_output_103_0_g496 ) ) );
			float4 localAudioLinkLerp1_g498 = AudioLinkLerp1_g498( Position1_g498 );
			float4 ifLocalVar50_g496 = 0;
			if( temp_output_52_0_g496 == 2.0 )
				ifLocalVar50_g496 = localAudioLinkLerp1_g498;
			float Position1_g499 = saturate( frac( ( ( temp_output_29_0_g496 + temp_output_1_0_g496 + temp_output_95_0_g496 ) * temp_output_103_0_g496 ) ) );
			float4 localAudioLinkLerp1_g499 = AudioLinkLerp1_g499( Position1_g499 );
			float4 ifLocalVar51_g496 = 0;
			if( temp_output_52_0_g496 == 3.0 )
				ifLocalVar51_g496 = localAudioLinkLerp1_g499;
			float4 color111_g496 = IsGammaSpace() ? float4( 1, 1, 1, 0 ) : float4( 1, 1, 1, 0 );
			float4 ifLocalVar110_g496 = 0;
			if( temp_output_52_0_g496 == 4.0 )
				ifLocalVar110_g496 = color111_g496;
			float3 hsvTorgb116_g496 = HSVToRGB( float3(temp_output_55_0_g496,1.0,1.0) );
			float3 ifLocalVar117_g496 = 0;
			if( temp_output_52_0_g496 == 5.0 )
				ifLocalVar117_g496 = hsvTorgb116_g496;
			float4 temp_output_53_0_g496 = ( ifLocalVar49_g496 + ifLocalVar79_g496 + ifLocalVar50_g496 + ifLocalVar51_g496 + ifLocalVar110_g496 + float4( ifLocalVar117_g496 , 0.0 ) );
			float4 temp_output_2_0_g502 = temp_output_53_0_g496;
			float4 ifLocalVar107_g496 = 0;
			if( temp_output_106_0_g496 == 0.0 )
				ifLocalVar107_g496 = ( ( ( break5_g502.r * 0.2 ) + ( break5_g502.g * 0.7 ) + ( break5_g502.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g502 * temp_output_2_0_g502 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g502 ) * ( 1.0 - temp_output_2_0_g502 ) ) ) );
			float4 ifLocalVar108_g496 = 0;
			if( temp_output_106_0_g496 == 1.0 )
				ifLocalVar108_g496 = ( temp_output_8_0_g496 * temp_output_53_0_g496 );
			float4 ifLocalVar112_g496 = 0;
			if( temp_output_106_0_g496 == 2.0 )
				ifLocalVar112_g496 = temp_output_53_0_g496;
			float GlowMap331_g470 = break12_g470.b;
			int temp_output_106_0_g480 = _QBlendMode3;
			int temp_output_27_0_g480 = _QBand3;
			int Band3_g487 = temp_output_27_0_g480;
			float temp_output_1_0_g480 = (( _QInvertDirection3 )?( ( 1.0 - Direction11_g470 ) ):( Direction11_g470 ));
			float temp_output_5_0_g480 = ( _QHistory3 * temp_output_1_0_g480 );
			float Delay3_g487 = (( _QSmoothHistory )?( temp_output_5_0_g480 ):( floor( temp_output_5_0_g480 ) ));
			float localAudioLinkLerp3_g487 = AudioLinkLerp3_g487( Band3_g487 , Delay3_g487 );
			float temp_output_8_0_g480 = localAudioLinkLerp3_g487;
			float4 temp_cast_51 = (temp_output_8_0_g480).xxxx;
			float4 temp_output_1_0_g486 = temp_cast_51;
			float4 break5_g486 = temp_output_1_0_g486;
			int temp_output_52_0_g480 = _QType3;
			float temp_output_29_0_g480 = _QColorOffset3;
			int Band6_g484 = temp_output_27_0_g480;
			int Mode6_g484 = ( ( (int)_QColorRotationMode3 * 2 ) + (int)_QColorRotationSpeed3 );
			int localAudioLinkDecodeDataAsUInt6_g484 = AudioLinkDecodeDataAsUInt6_g484( Band6_g484 , Mode6_g484 );
			float temp_output_55_0_g480 = ( ( ( localAudioLinkDecodeDataAsUInt6_g484 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g480 = ( temp_output_55_0_g480 * (int)(( _QUseColorRotation3 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g480 = _QEffectScale3;
			int Index1_g481 = (int)floor( ( frac( ( ( temp_output_29_0_g480 + temp_output_95_0_g480 ) * temp_output_103_0_g480 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g481 = AudioLinkData1_g481( Index1_g481 );
			float4 ifLocalVar49_g480 = 0;
			if( temp_output_52_0_g480 == 0.0 )
				ifLocalVar49_g480 = localAudioLinkData1_g481;
			int Index1_g485 = (int)floor( ( frac( ( ( temp_output_29_0_g480 + temp_output_95_0_g480 + temp_output_1_0_g480 ) * temp_output_103_0_g480 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g485 = AudioLinkData1_g485( Index1_g485 );
			float4 ifLocalVar79_g480 = 0;
			if( temp_output_52_0_g480 == 1.0 )
				ifLocalVar79_g480 = localAudioLinkData1_g485;
			float Position1_g482 = saturate( frac( ( ( temp_output_8_0_g480 + temp_output_29_0_g480 + temp_output_95_0_g480 ) * temp_output_103_0_g480 ) ) );
			float4 localAudioLinkLerp1_g482 = AudioLinkLerp1_g482( Position1_g482 );
			float4 ifLocalVar50_g480 = 0;
			if( temp_output_52_0_g480 == 2.0 )
				ifLocalVar50_g480 = localAudioLinkLerp1_g482;
			float Position1_g483 = saturate( frac( ( ( temp_output_29_0_g480 + temp_output_1_0_g480 + temp_output_95_0_g480 ) * temp_output_103_0_g480 ) ) );
			float4 localAudioLinkLerp1_g483 = AudioLinkLerp1_g483( Position1_g483 );
			float4 ifLocalVar51_g480 = 0;
			if( temp_output_52_0_g480 == 3.0 )
				ifLocalVar51_g480 = localAudioLinkLerp1_g483;
			float4 color111_g480 = IsGammaSpace() ? float4( 1, 1, 1, 0 ) : float4( 1, 1, 1, 0 );
			float4 ifLocalVar110_g480 = 0;
			if( temp_output_52_0_g480 == 4.0 )
				ifLocalVar110_g480 = color111_g480;
			float3 hsvTorgb116_g480 = HSVToRGB( float3(temp_output_55_0_g480,1.0,1.0) );
			float3 ifLocalVar117_g480 = 0;
			if( temp_output_52_0_g480 == 5.0 )
				ifLocalVar117_g480 = hsvTorgb116_g480;
			float4 temp_output_53_0_g480 = ( ifLocalVar49_g480 + ifLocalVar79_g480 + ifLocalVar50_g480 + ifLocalVar51_g480 + ifLocalVar110_g480 + float4( ifLocalVar117_g480 , 0.0 ) );
			float4 temp_output_2_0_g486 = temp_output_53_0_g480;
			float4 ifLocalVar107_g480 = 0;
			if( temp_output_106_0_g480 == 0.0 )
				ifLocalVar107_g480 = ( ( ( break5_g486.r * 0.2 ) + ( break5_g486.g * 0.7 ) + ( break5_g486.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g486 * temp_output_2_0_g486 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g486 ) * ( 1.0 - temp_output_2_0_g486 ) ) ) );
			float4 ifLocalVar108_g480 = 0;
			if( temp_output_106_0_g480 == 1.0 )
				ifLocalVar108_g480 = ( temp_output_8_0_g480 * temp_output_53_0_g480 );
			float4 ifLocalVar112_g480 = 0;
			if( temp_output_106_0_g480 == 2.0 )
				ifLocalVar112_g480 = temp_output_53_0_g480;
			float GlowMap433_g470 = break12_g470.a;
			int temp_output_106_0_g472 = _QBlendMode4;
			int temp_output_27_0_g472 = _QBand4;
			int Band3_g479 = temp_output_27_0_g472;
			float temp_output_1_0_g472 = (( _QInvertDirection4 )?( ( 1.0 - Direction11_g470 ) ):( Direction11_g470 ));
			float temp_output_5_0_g472 = ( _QHistory4 * temp_output_1_0_g472 );
			float Delay3_g479 = (( _QSmoothHistory )?( temp_output_5_0_g472 ):( floor( temp_output_5_0_g472 ) ));
			float localAudioLinkLerp3_g479 = AudioLinkLerp3_g479( Band3_g479 , Delay3_g479 );
			float temp_output_8_0_g472 = localAudioLinkLerp3_g479;
			float4 temp_cast_66 = (temp_output_8_0_g472).xxxx;
			float4 temp_output_1_0_g478 = temp_cast_66;
			float4 break5_g478 = temp_output_1_0_g478;
			int temp_output_52_0_g472 = _QType4;
			float temp_output_29_0_g472 = _QColorOffset4;
			int Band6_g476 = temp_output_27_0_g472;
			int Mode6_g476 = ( ( (int)_QColorRotationMode4 * 2 ) + (int)_QColorRotationSpeed4 );
			int localAudioLinkDecodeDataAsUInt6_g476 = AudioLinkDecodeDataAsUInt6_g476( Band6_g476 , Mode6_g476 );
			float temp_output_55_0_g472 = ( ( ( localAudioLinkDecodeDataAsUInt6_g476 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g472 = ( temp_output_55_0_g472 * (int)(( _QUseColorRotation4 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g472 = _QEffectScale4;
			int Index1_g473 = (int)floor( ( frac( ( ( temp_output_29_0_g472 + temp_output_95_0_g472 ) * temp_output_103_0_g472 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g473 = AudioLinkData1_g473( Index1_g473 );
			float4 ifLocalVar49_g472 = 0;
			if( temp_output_52_0_g472 == 0.0 )
				ifLocalVar49_g472 = localAudioLinkData1_g473;
			int Index1_g477 = (int)floor( ( frac( ( ( temp_output_29_0_g472 + temp_output_95_0_g472 + temp_output_1_0_g472 ) * temp_output_103_0_g472 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g477 = AudioLinkData1_g477( Index1_g477 );
			float4 ifLocalVar79_g472 = 0;
			if( temp_output_52_0_g472 == 1.0 )
				ifLocalVar79_g472 = localAudioLinkData1_g477;
			float Position1_g474 = saturate( frac( ( ( temp_output_8_0_g472 + temp_output_29_0_g472 + temp_output_95_0_g472 ) * temp_output_103_0_g472 ) ) );
			float4 localAudioLinkLerp1_g474 = AudioLinkLerp1_g474( Position1_g474 );
			float4 ifLocalVar50_g472 = 0;
			if( temp_output_52_0_g472 == 2.0 )
				ifLocalVar50_g472 = localAudioLinkLerp1_g474;
			float Position1_g475 = saturate( frac( ( ( temp_output_29_0_g472 + temp_output_1_0_g472 + temp_output_95_0_g472 ) * temp_output_103_0_g472 ) ) );
			float4 localAudioLinkLerp1_g475 = AudioLinkLerp1_g475( Position1_g475 );
			float4 ifLocalVar51_g472 = 0;
			if( temp_output_52_0_g472 == 3.0 )
				ifLocalVar51_g472 = localAudioLinkLerp1_g475;
			float4 color111_g472 = IsGammaSpace() ? float4( 1, 1, 1, 0 ) : float4( 1, 1, 1, 0 );
			float4 ifLocalVar110_g472 = 0;
			if( temp_output_52_0_g472 == 4.0 )
				ifLocalVar110_g472 = color111_g472;
			float3 hsvTorgb116_g472 = HSVToRGB( float3(temp_output_55_0_g472,1.0,1.0) );
			float3 ifLocalVar117_g472 = 0;
			if( temp_output_52_0_g472 == 5.0 )
				ifLocalVar117_g472 = hsvTorgb116_g472;
			float4 temp_output_53_0_g472 = ( ifLocalVar49_g472 + ifLocalVar79_g472 + ifLocalVar50_g472 + ifLocalVar51_g472 + ifLocalVar110_g472 + float4( ifLocalVar117_g472 , 0.0 ) );
			float4 temp_output_2_0_g478 = temp_output_53_0_g472;
			float4 ifLocalVar107_g472 = 0;
			if( temp_output_106_0_g472 == 0.0 )
				ifLocalVar107_g472 = ( ( ( break5_g478.r * 0.2 ) + ( break5_g478.g * 0.7 ) + ( break5_g478.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g478 * temp_output_2_0_g478 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g478 ) * ( 1.0 - temp_output_2_0_g478 ) ) ) );
			float4 ifLocalVar108_g472 = 0;
			if( temp_output_106_0_g472 == 1.0 )
				ifLocalVar108_g472 = ( temp_output_8_0_g472 * temp_output_53_0_g472 );
			float4 ifLocalVar112_g472 = 0;
			if( temp_output_106_0_g472 == 2.0 )
				ifLocalVar112_g472 = temp_output_53_0_g472;
			float localIfAudioLinkv2Exists1_g471 = IfAudioLinkv2Exists1_g471();
			float4 lerpResult55_g470 = lerp( float4( 0,0,0,0 ) , ( _QuantumGlowColor * ( (( _QBandEnable1 )?( ( _QGlowColorBand1 * ( GlowMap130_g470 * ( ifLocalVar107_g488 + ifLocalVar108_g488 + ifLocalVar112_g488 ) ) * _QuantumGlowMultiply1 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable2 )?( ( _QGlowColorBand2 * ( GlowMap232_g470 * ( ifLocalVar107_g496 + ifLocalVar108_g496 + ifLocalVar112_g496 ) ) * _QuantumGlowMultiply2 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable3 )?( ( _QGlowColorBand3 * ( GlowMap331_g470 * ( ifLocalVar107_g480 + ifLocalVar108_g480 + ifLocalVar112_g480 ) ) * _QuantumGlowMultiply3 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable4 )?( ( _QGlowColorBand4 * ( GlowMap433_g470 * ( ifLocalVar107_g472 + ifLocalVar108_g472 + ifLocalVar112_g472 ) ) * _QuantumGlowMultiply4 ) ):( float4( 0,0,0,0 ) )) ) * _QuantumGlowMultiplyGlobal ) , localIfAudioLinkv2Exists1_g471);
			float3 normalizeResult3_g506 = normalize( (WorldNormalVector( i , Normal64 )) );
			float3 World_Normal53_g506 = normalizeResult3_g506;
			float3 worldNormal2_g509 = World_Normal53_g506;
			float3 appendResult13_g506 = (float3(unity_SHAr.w , unity_SHAg.w , unity_SHAb.w));
			float localLightVolumeSH1_g508 = ( 0.0 );
			float3 temp_output_6_0_g508 = ase_positionWS;
			float3 worldPos1_g508 = temp_output_6_0_g508;
			float3 L01_g508 = float3( 0,0,0 );
			float3 L1r1_g508 = float3( 0,0,0 );
			float3 L1g1_g508 = float3( 0,0,0 );
			float3 L1b1_g508 = float3( 0,0,0 );
			float3 temp_output_5_0_g506 = ( _LightVolumesBias * World_Normal53_g506 );
			float3 temp_output_17_0_g508 = temp_output_5_0_g506;
			float3 worldPosOffset1_g508 = temp_output_17_0_g508;
			LightVolumeSH( worldPos1_g508 , L01_g508 , L1r1_g508 , L1g1_g508 , L1b1_g508 , worldPosOffset1_g508 );
			float localLightVolumeSH1_g507 = ( 0.0 );
			float3 temp_output_6_0_g507 = ase_positionWS;
			float3 worldPos1_g507 = temp_output_6_0_g507;
			float3 L01_g507 = float3( 0,0,0 );
			float3 L1r1_g507 = float3( 0,0,0 );
			float3 L1g1_g507 = float3( 0,0,0 );
			float3 L1b1_g507 = float3( 0,0,0 );
			float3 temp_output_17_0_g507 = temp_output_5_0_g506;
			float3 worldPosOffset1_g507 = temp_output_17_0_g507;
			LightVolumeSH( worldPos1_g507 , L01_g507 , L1r1_g507 , L1g1_g507 , L1b1_g507 , worldPosOffset1_g507 );
			#ifdef LIGHTMAP_ON
				float3 staticSwitch17_g506 = L01_g507;
			#else
				float3 staticSwitch17_g506 = L01_g508;
			#endif
			#ifdef _LIGHTVOLUMES_ON
				float3 staticSwitch21_g506 = staticSwitch17_g506;
			#else
				float3 staticSwitch21_g506 = appendResult13_g506;
			#endif
			float3 L025_g506 = staticSwitch21_g506;
			float3 L02_g509 = L025_g506;
			#ifdef LIGHTMAP_ON
				float3 staticSwitch14_g506 = L1r1_g507;
			#else
				float3 staticSwitch14_g506 = L1r1_g508;
			#endif
			#ifdef _LIGHTVOLUMES_ON
				float3 staticSwitch18_g506 = staticSwitch14_g506;
			#else
				float3 staticSwitch18_g506 = (unity_SHAr).xyz;
			#endif
			float3 L1r22_g506 = staticSwitch18_g506;
			float3 L1r2_g509 = L1r22_g506;
			#ifdef LIGHTMAP_ON
				float3 staticSwitch15_g506 = L1g1_g507;
			#else
				float3 staticSwitch15_g506 = L1g1_g508;
			#endif
			#ifdef _LIGHTVOLUMES_ON
				float3 staticSwitch19_g506 = staticSwitch15_g506;
			#else
				float3 staticSwitch19_g506 = (unity_SHAg).xyz;
			#endif
			float3 L1g23_g506 = staticSwitch19_g506;
			float3 L1g2_g509 = L1g23_g506;
			#ifdef LIGHTMAP_ON
				float3 staticSwitch16_g506 = L1b1_g507;
			#else
				float3 staticSwitch16_g506 = L1b1_g508;
			#endif
			#ifdef _LIGHTVOLUMES_ON
				float3 staticSwitch20_g506 = staticSwitch16_g506;
			#else
				float3 staticSwitch20_g506 = (unity_SHAb).xyz;
			#endif
			float3 L1b24_g506 = staticSwitch20_g506;
			float3 L1b2_g509 = L1b24_g506;
			float3 localLightVolumeEvaluate2_g509 = LightVolumeEvaluate( worldNormal2_g509 , L02_g509 , L1r2_g509 , L1g2_g509 , L1b2_g509 );
			float3 Albedo33_g506 = Albedo63;
			float3 temp_output_82_0_g506 = ( localLightVolumeEvaluate2_g509 * Albedo33_g506 );
			float4 tex2DNode28 = tex2D( _SpecularTextureChannel, MainUVFinal242 );
			float3 Specular83 = tex2DNode28.rgb;
			float3 SpecularMap34_g506 = Specular83;
			float3 temp_output_138_0_g511 = SpecularMap34_g506;
			float3 f0157_g511 = temp_output_138_0_g511;
			float Smoothness35_g506 = (0);
			float temp_output_3_0_g511 = Smoothness35_g506;
			float smoothness157_g511 = temp_output_3_0_g511;
			float3 temp_output_2_0_g511 = World_Normal53_g506;
			float3 worldNormal157_g511 = temp_output_2_0_g511;
			float3 ase_viewDirSafeWS = Unity_SafeNormalize( ase_viewVectorWS );
			float3 temp_output_9_0_g511 = ase_viewDirSafeWS;
			float3 viewDir157_g511 = temp_output_9_0_g511;
			float3 temp_output_65_0_g511 = L025_g506;
			float3 L0157_g511 = temp_output_65_0_g511;
			float3 temp_output_1_0_g511 = L1r22_g506;
			float3 L1r157_g511 = temp_output_1_0_g511;
			float3 temp_output_36_0_g511 = L1g23_g506;
			float3 L1g157_g511 = temp_output_36_0_g511;
			float3 temp_output_37_0_g511 = L1b24_g506;
			float3 L1b157_g511 = temp_output_37_0_g511;
			float3 localLightVolumeSpecular157_g511 = LightVolumeSpecular( f0157_g511 , smoothness157_g511 , worldNormal157_g511 , viewDir157_g511 , L0157_g511 , L1r157_g511 , L1g157_g511 , L1b157_g511 );
			float3 temp_output_138_0_g510 = SpecularMap34_g506;
			float3 f0158_g510 = temp_output_138_0_g510;
			float temp_output_3_0_g510 = Smoothness35_g506;
			float smoothness158_g510 = temp_output_3_0_g510;
			float3 temp_output_2_0_g510 = World_Normal53_g506;
			float3 worldNormal158_g510 = temp_output_2_0_g510;
			float3 temp_output_9_0_g510 = ase_viewDirSafeWS;
			float3 viewDir158_g510 = temp_output_9_0_g510;
			float3 temp_output_65_0_g510 = L025_g506;
			float3 L0158_g510 = temp_output_65_0_g510;
			float3 temp_output_1_0_g510 = L1r22_g506;
			float3 L1r158_g510 = temp_output_1_0_g510;
			float3 temp_output_36_0_g510 = L1g23_g506;
			float3 L1g158_g510 = temp_output_36_0_g510;
			float3 temp_output_37_0_g510 = L1b24_g506;
			float3 L1b158_g510 = temp_output_37_0_g510;
			float3 localLightVolumeSpecularDominant158_g510 = LightVolumeSpecularDominant( f0158_g510 , smoothness158_g510 , worldNormal158_g510 , viewDir158_g510 , L0158_g510 , L1r158_g510 , L1g158_g510 , L1b158_g510 );
			#ifdef _DOMINANTDIRSPECULARS_ON
				float3 staticSwitch38_g506 = localLightVolumeSpecularDominant158_g510;
			#else
				float3 staticSwitch38_g506 = localLightVolumeSpecular157_g511;
			#endif
			float AO56_g506 = 1.0;
			float3 Speculars40_g506 = ( staticSwitch38_g506 * AO56_g506 );
			#ifdef _SPECULARS_ON
				float3 staticSwitch84_g506 = ( temp_output_82_0_g506 + Speculars40_g506 );
			#else
				float3 staticSwitch84_g506 = temp_output_82_0_g506;
			#endif
			float3 IndirectAndSpeculars86_g506 = ( staticSwitch84_g506 * AO56_g506 );
			#ifdef _Q_LIGHTVOLUMES_ON
				float3 staticSwitch273 = ( _LightVolumesMultiplier * IndirectAndSpeculars86_g506 );
			#else
				float3 staticSwitch273 = float3( 0,0,0 );
			#endif
			float4 Emission179 = ( ( float4( MainEmission88 , 0.0 ) + float4( MainEmission2226 , 0.0 ) + (( _QEnableGlobal )?( lerpResult55_g470 ):( float4( 0,0,0,0 ) )) ) + float4( staticSwitch273 , 0.0 ) );
			o.Emission = Emission179.rgb;
			o.Specular = Specular83;
			float Smoothnes279 = ( tex2DNode28.a * _Glossiness );
			o.Smoothness = Smoothnes279;
			float2 uv_AlphaMap = i.uv_texcoord * _AlphaMap_ST.xy + _AlphaMap_ST.zw;
			float2 uv2_AlphaMap = i.uv2_texcoord2 * _AlphaMap_ST.xy + _AlphaMap_ST.zw;
			int temp_output_18_0_g384 = _AlphaUVIndex;
			float2 lerpResult22_g384 = lerp( uv_AlphaMap , uv2_AlphaMap , (float)saturate( temp_output_18_0_g384 ));
			float2 uv3_AlphaMap = i.uv3_texcoord3 * _AlphaMap_ST.xy + _AlphaMap_ST.zw;
			int temp_output_26_0_g384 = ( temp_output_18_0_g384 - 1 );
			float2 lerpResult25_g384 = lerp( lerpResult22_g384 , uv3_AlphaMap , (float)saturate( temp_output_26_0_g384 ));
			float2 uv4_AlphaMap = i.uv4_texcoord4 * _AlphaMap_ST.xy + _AlphaMap_ST.zw;
			int temp_output_31_0_g384 = ( temp_output_26_0_g384 - 1 );
			float2 lerpResult29_g384 = lerp( lerpResult25_g384 , uv4_AlphaMap , (float)saturate( temp_output_31_0_g384 ));
			float2 uv5_AlphaMap = i.ase_texcoord5 * _AlphaMap_ST.xy + _AlphaMap_ST.zw;
			float2 lerpResult35_g384 = lerp( lerpResult29_g384 , uv5_AlphaMap.xy , (float)saturate( ( temp_output_31_0_g384 - 1 ) ));
			float4 tex2DNode215 = tex2D( _AlphaMap, lerpResult35_g384 );
			float AlphaMap214 = saturate( ( tex2DNode215.r * _Opacity ) );
			o.Alpha = AlphaMap214;
			float AlphaMask232 = tex2DNode215.r;
			clip( AlphaMask232 - _Culling );
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
			sampler3D _DitherMaskLOD;
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
Version=19901
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;204;-2638.565,158;Inherit;False;2615.419;2703.054;Base Textures;68;260;259;256;239;238;229;228;230;206;234;195;205;232;214;64;63;237;210;10;236;209;83;14;9;11;243;235;215;226;207;15;208;28;12;88;5;250;216;225;29;203;4;224;202;223;222;201;56;221;220;53;52;252;251;219;55;242;255;241;244;263;264;265;266;267;257;258;279;;1,1,1,1;0;0
Node;AmplifyShaderEditor.IntNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;265;-1904,416;Inherit;False;Property;_MainUVIndex;MainUVIndex;119;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;4;-1936,208;Inherit;True;Property;_MainTex;Main Tex;16;0;Create;True;0;0;0;False;0;False;None;a16b3161c8c05f54ba87ec06bfdd6b82;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;266;-1712,400;Inherit;False;UVSelect;-1;;377;be9f0a2bbb8e0f340a2211011430e00a;0;2;3;SAMPLER2D;_Sampler3266;False;18;INT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;244;-1472,400;Inherit;False;MainUV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;241;-1808,544;Inherit;False;244;MainUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;255;-1616,544;Inherit;False;UVHandling;0;;378;c17d079c1ac3cf440936a2325286a38a;0;1;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;242;-1440,544;Inherit;False;MainUVFinal;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;55;-1776,1552;Inherit;True;Property;_EmissionMap;Emission Map;19;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;219;-1776,1984;Inherit;True;Property;_EmissionMap2;Emission Map 2;18;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;251;-1488,1616;Inherit;False;242;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;252;-1488,2032;Inherit;False;242;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.IntNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;264;-1872,1088;Inherit;False;Property;_DetailUVIndex;DetailUVIndex;117;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;208;-1920,896;Inherit;True;Property;_DetailNormalMap;Detail Normal Map;26;0;Create;False;0;0;0;False;0;False;None;aef25913bc0271f498e5006238d33577;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;52;-1232,1760;Inherit;False;Property;_EmissionColor;Emission Color;23;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;4,4,4,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;53;-1264,1552;Inherit;True;Property;_TextureSample5;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;220;-1264,1984;Inherit;True;Property;_TextureSample10;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;221;-1232,2192;Inherit;False;Property;_EmissionColor2;Emission Color2;22;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;4,4,4,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;263;-1680,976;Inherit;False;UVSelect;-1;;383;be9f0a2bbb8e0f340a2211011430e00a;0;2;3;SAMPLER2D;_Sampler3241;False;18;INT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;5;-1456,208;Inherit;False;MainTexTex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;12;-1760,656;Inherit;True;Property;_BumpMap;NormalMap;24;0;Create;False;0;0;0;False;0;False;None;aef25913bc0271f498e5006238d33577;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;15;-1536,768;Inherit;False;Property;_BumpScale;Normal Scale;25;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;207;-1632,1088;Inherit;False;Property;_DetailNormalMapScale;Detail Normal Map Scale;29;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;243;-1504,688;Inherit;False;242;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;267;-1456,288;Inherit;False;242;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;29;-1776,1312;Inherit;True;Property;_SpecularTextureChannel;Specular Map;28;0;Create;False;0;0;0;False;0;False;None;95bc897e80af50446bc05c7e8d2649ae;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;250;-1504,1360;Inherit;False;242;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;56;-880,1552;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;201;-864,1664;Inherit;False;Property;_Emission;Emission;112;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;222;-976,1984;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;223;-976,2096;Inherit;False;Property;_Emission2;Emission2;121;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;9;-1248,208;Inherit;True;Property;_TextureSample0;Texture Sample 0;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;14;-1248,656;Inherit;True;Property;_TextureSample1;Texture Sample 1;3;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;209;-1248,896;Inherit;True;Property;_TextureSample8;Texture Sample 1;3;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;11;-1184,416;Inherit;False;Property;_Color;Color;17;0;Create;False;0;0;0;False;0;False;0,0,0,0;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;28;-1264,1312;Inherit;True;Property;_TextureSample3;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;202;-704,1552;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;224;-816,1984;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;10;-768,208;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendNormalsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;210;-864,656;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IntNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;259;-1840,2656;Inherit;False;Property;_AlphaUVIndex;AlphaUVIndex;116;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;216;-1872,2432;Inherit;True;Property;_AlphaMap;AlphaMap;20;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;203;-560,1552;Inherit;False;Property;_EnableEmission;EnableEmission;111;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;225;-672,1984;Inherit;False;Property;_EnableEmission2;EnableEmission2;120;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;63;-576,208;Inherit;False;Albedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;64;-544,656;Inherit;False;Normal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;83;-432,1328;Inherit;False;Specular;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;260;-1632,2640;Inherit;False;UVSelect;-1;;384;be9f0a2bbb8e0f340a2211011430e00a;0;2;3;SAMPLER2D;_Sampler3260;False;18;INT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;88;-288,1552;Inherit;False;MainEmission;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;226;-464,1984;Inherit;False;MainEmission2;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;271;272,2624;Inherit;False;64;Normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;268;240,2384;Inherit;False;63;Albedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;269;240,2464;Inherit;False;83;Specular;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;270;272,2544;Inherit;False;-1;;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;215;-1248,2432;Inherit;True;Property;_TextureSample9;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;235;-960,2480;Inherit;False;Property;_Opacity;Opacity;21;0;Create;True;0;0;0;False;0;False;1;8.33;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;89;240,2064;Inherit;False;88;MainEmission;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;227;240,2144;Inherit;False;226;MainEmission2;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;281;272,2224;Inherit;False;QuatumGlow;30;;470;7730a8711ab108044bac907ea573069c;0;0;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;282;496,2384;Inherit;False;LightVolumesSpecularConnector;9;;506;e7830579c7edaa2489fdbf704cb14f73;0;5;32;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;31;FLOAT;0;False;1;FLOAT3;0,0,0;False;90;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;236;-672,2464;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;176;496,2064;Inherit;True;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;257;-928,1456;Inherit;False;Property;_Glossiness;Glossiness;106;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;273;816,2368;Inherit;False;Property;_Q_LightVolumes;Q_LightVolumes;115;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;237;-496,2464;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;274;1072,2064;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;258;-624,1408;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;213;494,158;Inherit;False;1917;900;Output;9;233;217;0;74;81;65;75;278;280;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;214;-320,2464;Inherit;False;AlphaMap;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;232;-320,2576;Inherit;False;AlphaMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;179;1296,2064;Inherit;False;Emission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;279;-464,1408;Inherit;False;Smoothnes;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;65;992,288;Inherit;False;64;Normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;81;960,384;Inherit;False;179;Emission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;74;960,208;Inherit;False;63;Albedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;205;-2192,336;Inherit;False;Property;_ShowRendering;ShowRendering;113;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;195;-2192,240;Inherit;False;Property;_ShowMain;ShowMain;110;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;234;-2496,224;Inherit;False;Property;_Cutoff;Cutoff;27;0;Create;True;0;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;206;-2384,320;Inherit;False;Property;_Culling;Culling;109;1;[Enum];Create;False;0;1;Option1;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;230;-2448,704;Inherit;False;Property;_BlendMode;BlendMode;108;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;228;-2464,800;Inherit;False;Property;_BlendModeSrc;BlendModeSrc;107;1;[Enum];Create;True;0;1;Option1;0;1;UnityEngine.Rendering.BlendMode;True;0;False;5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;229;-2240,800;Inherit;False;Property;_BlendModeDst;BlendModeDst;105;1;[Enum];Create;True;0;1;Option1;0;1;UnityEngine.Rendering.BlendMode;True;0;False;10;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;238;-2400,544;Inherit;False;Property;_ShaderType;ShaderType;118;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;239;-2400,448;Inherit;False;Property;_RenderType;RenderType;114;0;Create;True;0;0;0;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;256;-2192,432;Inherit;False;Property;_ShowParallax;ShowParallax;122;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;233;1552,880;Inherit;False;232;AlphaMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;217;1552,800;Inherit;False;214;AlphaMap;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;278;1152,864;Inherit;False;214;AlphaMap;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;75;976,496;Inherit;False;83;Specular;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;280;976,592;Inherit;False;279;Smoothnes;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;0;1936,256;Float;False;True;-1;4;Saphi.QuantumShader.QuantumShaderUI;0;0;StandardSpecular;Saphi/QuantumShaderSpecularTransparent;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;;0;False;;False;0;False;;0;False;;False;0;Custom;0.5;True;True;0;True;Custom;;Transparent;All;12;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;1;5;True;_BlendModeSrc;10;True;_BlendModeDst;0;0;False;;0;False;;0;False;;0;False;;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;;-1;-1;-1;-1;0;False;0;0;True;_Culling;-1;0;True;_Culling;1;Include;audio;True;1ec20832dfbb48343b8e0764e0864276;Custom;False;0;0;;0;0;False;0.1;False;;0;False;;False;17;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;16;FLOAT4;0,0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;266;3;4;0
WireConnection;266;18;265;0
WireConnection;244;0;266;0
WireConnection;255;1;241;0
WireConnection;242;0;255;0
WireConnection;53;0;55;0
WireConnection;53;1;251;0
WireConnection;220;0;219;0
WireConnection;220;1;252;0
WireConnection;263;3;208;0
WireConnection;263;18;264;0
WireConnection;5;0;4;0
WireConnection;56;0;53;5
WireConnection;56;1;52;5
WireConnection;222;0;220;5
WireConnection;222;1;221;5
WireConnection;9;0;5;0
WireConnection;9;1;267;0
WireConnection;14;0;12;0
WireConnection;14;1;243;0
WireConnection;14;5;15;0
WireConnection;209;0;208;0
WireConnection;209;1;263;0
WireConnection;209;5;207;0
WireConnection;28;0;29;0
WireConnection;28;1;250;0
WireConnection;202;0;56;0
WireConnection;202;1;201;0
WireConnection;224;0;222;0
WireConnection;224;1;223;0
WireConnection;10;0;9;5
WireConnection;10;1;11;5
WireConnection;210;0;14;0
WireConnection;210;1;209;0
WireConnection;203;1;202;0
WireConnection;225;1;224;0
WireConnection;63;0;10;0
WireConnection;64;0;210;0
WireConnection;83;0;28;5
WireConnection;260;3;216;0
WireConnection;260;18;259;0
WireConnection;88;0;203;0
WireConnection;226;0;225;0
WireConnection;215;0;216;0
WireConnection;215;1;260;0
WireConnection;282;32;268;0
WireConnection;282;30;269;0
WireConnection;282;31;270;0
WireConnection;282;1;271;0
WireConnection;236;0;215;1
WireConnection;236;1;235;0
WireConnection;176;0;89;0
WireConnection;176;1;227;0
WireConnection;176;2;281;0
WireConnection;273;0;282;0
WireConnection;237;0;236;0
WireConnection;274;0;176;0
WireConnection;274;1;273;0
WireConnection;258;0;28;4
WireConnection;258;1;257;0
WireConnection;214;0;237;0
WireConnection;232;0;215;1
WireConnection;179;0;274;0
WireConnection;279;0;258;0
WireConnection;0;0;74;0
WireConnection;0;1;65;0
WireConnection;0;2;81;0
WireConnection;0;3;75;0
WireConnection;0;4;280;0
WireConnection;0;9;217;0
WireConnection;0;10;233;0
ASEEND*/
//CHKSM=56366E651AE530F91CDA7F520E3E470C22E3EA41