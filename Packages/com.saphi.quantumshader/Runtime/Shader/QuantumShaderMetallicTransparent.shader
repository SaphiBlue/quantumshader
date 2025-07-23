// Made with Amplify Shader Editor v1.9.9.1
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Saphi/QuantumShaderMetallicTransparent"
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
		[HideInInspector] _texcoord4( "", 2D ) = "white" {}
		[HideInInspector] _texcoord3( "", 2D ) = "white" {}
		[HideInInspector] _texcoord2( "", 2D ) = "white" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[Toggle] _UseUVAsDirectionUV( "UseUVAsDirectionUV", Float ) = 0
		[Toggle] _UseUVAsDirection( "UseUVAsDirection", Float ) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)] _QDirectionUVIndex( "DirectionUVIndex", Int ) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)] _QGlowMapUVIndex( "GlowMapUVIndex", Int ) = 0
		_Glossiness( "Glossiness", Range( 0, 1 ) ) = 1
		[Toggle] _AlbedoAlpha( "AlbedoAlpha", Float ) = 0
		_RenderType( "RenderType", Float ) = 2
		_ShaderType( "ShaderType", Float ) = 1
		[Enum(UnityEngine.Rendering.BlendMode)] _BlendModeSrc( "BlendModeSrc", Float ) = 5
		[Enum(UnityEngine.Rendering.BlendMode)] _BlendModeDst( "BlendModeDst", Float ) = 10
		_BlendMode( "BlendMode", Float ) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)] _AlphaUVIndex( "AlphaUVIndex", Int ) = 0
		[Enum(UnityEngine.Rendering.CullMode)] _Culling( "Culling", Float ) = 2
		_ShowMain( "ShowMain", Float ) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)] _MainUVIndex( "MainUVIndex", Int ) = 0
		[Toggle] _EnableEmission( "EnableEmission", Float ) = 0
		_Emission( "Emission", Float ) = 1
		_ShowRendering( "ShowRendering", Float ) = 0
		[Toggle( _Q_LIGHTVOLUMES_ON )] _Q_LightVolumes( "Q_LightVolumes", Float ) = 0
		[Toggle] _EnableEmission2( "EnableEmission2", Float ) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)] _DetailUVIndex( "DetailUVIndex", Int ) = 0
		_Emission2( "Emission2", Float ) = 1
		_ShowParallax( "ShowParallax", Float ) = 0
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Custom"  "Queue" = "Transparent+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
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
		uniform float _ShowRendering;
		uniform float _ShowMain;
		uniform float _Culling;
		uniform float _Cutoff;
		uniform float _BlendModeSrc;
		uniform float _BlendModeDst;
		uniform float _BlendMode;
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
		sampler2D _Sampler3259;
		uniform float4 _Sampler3259_ST;
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
		uniform float _AlbedoAlpha;
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


		inline float AudioLinkLerp3_g360( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g357( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g354( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g358( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g355( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g356( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		float3 HSVToRGB( float3 c )
		{
			float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
			float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
			return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
		}


		inline float AudioLinkLerp3_g368( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g365( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g362( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g366( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g363( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g364( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g352( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g349( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g346( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g350( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g347( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g348( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g344( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g341( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g338( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g342( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g339( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g340( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		float IfAudioLinkv2Exists1_g336(  )
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
			float2 MainUV237 = lerpResult35_g289;
			float2 temp_output_1_0_g291 = MainUV237;
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
			float2 MainUVFinal239 = staticSwitch10_g291;
			float2 uv_Sampler3259 = i.uv_texcoord * _Sampler3259_ST.xy + _Sampler3259_ST.zw;
			float2 uv2_Sampler3259 = i.uv2_texcoord2 * _Sampler3259_ST.xy + _Sampler3259_ST.zw;
			int temp_output_18_0_g333 = _DetailUVIndex;
			float2 lerpResult22_g333 = lerp( uv_Sampler3259 , uv2_Sampler3259 , (float)saturate( temp_output_18_0_g333 ));
			float2 uv3_Sampler3259 = i.uv3_texcoord3 * _Sampler3259_ST.xy + _Sampler3259_ST.zw;
			int temp_output_26_0_g333 = ( temp_output_18_0_g333 - 1 );
			float2 lerpResult25_g333 = lerp( lerpResult22_g333 , uv3_Sampler3259 , (float)saturate( temp_output_26_0_g333 ));
			float2 uv4_Sampler3259 = i.uv4_texcoord4 * _Sampler3259_ST.xy + _Sampler3259_ST.zw;
			int temp_output_31_0_g333 = ( temp_output_26_0_g333 - 1 );
			float2 lerpResult29_g333 = lerp( lerpResult25_g333 , uv4_Sampler3259 , (float)saturate( temp_output_31_0_g333 ));
			float2 uv5_Sampler3259 = i.ase_texcoord5 * _Sampler3259_ST.xy + _Sampler3259_ST.zw;
			float2 lerpResult35_g333 = lerp( lerpResult29_g333 , uv5_Sampler3259.xy , (float)saturate( ( temp_output_31_0_g333 - 1 ) ));
			float3 Normal64 = BlendNormals( UnpackScaleNormal( tex2D( _BumpMap, MainUVFinal239 ), _BumpScale ) , UnpackScaleNormal( tex2D( _DetailNormalMap, lerpResult35_g333 ), _DetailNormalMapScale ) );
			o.Normal = Normal64;
			float4 tex2DNode9 = tex2D( _MainTex, MainUVFinal239 );
			float3 Albedo63 = ( tex2DNode9.rgb * _Color.rgb );
			o.Albedo = Albedo63;
			float4 MainEmission88 = (( _EnableEmission )?( ( ( tex2D( _EmissionMap, MainUVFinal239 ) * _EmissionColor ) * _Emission ) ):( float4( 0,0,0,0 ) ));
			float4 MainEmission2224 = (( _EnableEmission2 )?( ( ( tex2D( _EmissionMap2, MainUVFinal239 ) * _EmissionColor2 ) * _Emission2 ) ):( float4( 0,0,0,0 ) ));
			float2 uv_QGlowMap = i.uv_texcoord * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			float2 uv2_QGlowMap = i.uv2_texcoord2 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			int temp_output_18_0_g370 = _QGlowMapUVIndex;
			float2 lerpResult22_g370 = lerp( uv_QGlowMap , uv2_QGlowMap , (float)saturate( temp_output_18_0_g370 ));
			float2 uv3_QGlowMap = i.uv3_texcoord3 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			int temp_output_26_0_g370 = ( temp_output_18_0_g370 - 1 );
			float2 lerpResult25_g370 = lerp( lerpResult22_g370 , uv3_QGlowMap , (float)saturate( temp_output_26_0_g370 ));
			float2 uv4_QGlowMap = i.uv4_texcoord4 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			int temp_output_31_0_g370 = ( temp_output_26_0_g370 - 1 );
			float2 lerpResult29_g370 = lerp( lerpResult25_g370 , uv4_QGlowMap , (float)saturate( temp_output_31_0_g370 ));
			float2 uv5_QGlowMap = i.ase_texcoord5 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			float2 lerpResult35_g370 = lerp( lerpResult29_g370 , uv5_QGlowMap.xy , (float)saturate( ( temp_output_31_0_g370 - 1 ) ));
			float4 GlowMap7_g335 = tex2D( _QGlowMap, lerpResult35_g370 );
			float4 break12_g335 = GlowMap7_g335;
			float GlowMap130_g335 = break12_g335.r;
			int temp_output_106_0_g353 = _QBlendMode1;
			int temp_output_27_0_g353 = _QBand1;
			int Band3_g360 = temp_output_27_0_g353;
			float2 uv_QDirection = i.uv_texcoord * _QDirection_ST.xy + _QDirection_ST.zw;
			float2 uv2_QDirection = i.uv2_texcoord2 * _QDirection_ST.xy + _QDirection_ST.zw;
			int temp_output_18_0_g369 = _QDirectionUVIndex;
			float2 lerpResult22_g369 = lerp( uv_QDirection , uv2_QDirection , (float)saturate( temp_output_18_0_g369 ));
			float2 uv3_QDirection = i.uv3_texcoord3 * _QDirection_ST.xy + _QDirection_ST.zw;
			int temp_output_26_0_g369 = ( temp_output_18_0_g369 - 1 );
			float2 lerpResult25_g369 = lerp( lerpResult22_g369 , uv3_QDirection , (float)saturate( temp_output_26_0_g369 ));
			float2 uv4_QDirection = i.uv4_texcoord4 * _QDirection_ST.xy + _QDirection_ST.zw;
			int temp_output_31_0_g369 = ( temp_output_26_0_g369 - 1 );
			float2 lerpResult29_g369 = lerp( lerpResult25_g369 , uv4_QDirection , (float)saturate( temp_output_31_0_g369 ));
			float2 uv5_QDirection = i.ase_texcoord5 * _QDirection_ST.xy + _QDirection_ST.zw;
			float2 lerpResult35_g369 = lerp( lerpResult29_g369 , uv5_QDirection.xy , (float)saturate( ( temp_output_31_0_g369 - 1 ) ));
			float2 temp_output_288_0_g335 = lerpResult35_g369;
			float4 DirectionMap5_g335 = tex2D( _QDirection, temp_output_288_0_g335 );
			float2 break287_g335 = temp_output_288_0_g335;
			float Direction11_g335 = (( _UseUVAsDirection )?( (( _UseUVAsDirectionUV )?( break287_g335.y ):( break287_g335.x )) ):( DirectionMap5_g335.r ));
			float temp_output_1_0_g353 = (( _QInvertDirection1 )?( ( 1.0 - Direction11_g335 ) ):( Direction11_g335 ));
			float temp_output_5_0_g353 = ( _QHistory1 * temp_output_1_0_g353 );
			float Delay3_g360 = (( _QSmoothHistory )?( temp_output_5_0_g353 ):( floor( temp_output_5_0_g353 ) ));
			float localAudioLinkLerp3_g360 = AudioLinkLerp3_g360( Band3_g360 , Delay3_g360 );
			float temp_output_8_0_g353 = localAudioLinkLerp3_g360;
			float4 temp_cast_19 = (temp_output_8_0_g353).xxxx;
			float4 temp_output_1_0_g359 = temp_cast_19;
			float4 break5_g359 = temp_output_1_0_g359;
			int temp_output_52_0_g353 = _QType1;
			float temp_output_29_0_g353 = _QColorOffset1;
			int Band6_g357 = temp_output_27_0_g353;
			int Mode6_g357 = ( ( (int)_QColorRotationMode1 * 2 ) + (int)_QColorRotationSpeed1 );
			int localAudioLinkDecodeDataAsUInt6_g357 = AudioLinkDecodeDataAsUInt6_g357( Band6_g357 , Mode6_g357 );
			float temp_output_55_0_g353 = ( ( ( localAudioLinkDecodeDataAsUInt6_g357 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g353 = ( temp_output_55_0_g353 * (int)(( _QUseColorRotation1 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g353 = _QEffectScale1;
			int Index1_g354 = (int)floor( ( frac( ( ( temp_output_29_0_g353 + temp_output_95_0_g353 ) * temp_output_103_0_g353 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g354 = AudioLinkData1_g354( Index1_g354 );
			float4 ifLocalVar49_g353 = 0;
			if( temp_output_52_0_g353 == 0.0 )
				ifLocalVar49_g353 = localAudioLinkData1_g354;
			int Index1_g358 = (int)floor( ( frac( ( ( temp_output_29_0_g353 + temp_output_95_0_g353 + temp_output_1_0_g353 ) * temp_output_103_0_g353 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g358 = AudioLinkData1_g358( Index1_g358 );
			float4 ifLocalVar79_g353 = 0;
			if( temp_output_52_0_g353 == 1.0 )
				ifLocalVar79_g353 = localAudioLinkData1_g358;
			float Position1_g355 = saturate( frac( ( ( temp_output_8_0_g353 + temp_output_29_0_g353 + temp_output_95_0_g353 ) * temp_output_103_0_g353 ) ) );
			float4 localAudioLinkLerp1_g355 = AudioLinkLerp1_g355( Position1_g355 );
			float4 ifLocalVar50_g353 = 0;
			if( temp_output_52_0_g353 == 2.0 )
				ifLocalVar50_g353 = localAudioLinkLerp1_g355;
			float Position1_g356 = saturate( frac( ( ( temp_output_29_0_g353 + temp_output_1_0_g353 + temp_output_95_0_g353 ) * temp_output_103_0_g353 ) ) );
			float4 localAudioLinkLerp1_g356 = AudioLinkLerp1_g356( Position1_g356 );
			float4 ifLocalVar51_g353 = 0;
			if( temp_output_52_0_g353 == 3.0 )
				ifLocalVar51_g353 = localAudioLinkLerp1_g356;
			float4 color111_g353 = IsGammaSpace() ? float4( 1, 1, 1, 0 ) : float4( 1, 1, 1, 0 );
			float4 ifLocalVar110_g353 = 0;
			if( temp_output_52_0_g353 == 4.0 )
				ifLocalVar110_g353 = color111_g353;
			float3 hsvTorgb116_g353 = HSVToRGB( float3(temp_output_55_0_g353,1.0,1.0) );
			float3 ifLocalVar117_g353 = 0;
			if( temp_output_52_0_g353 == 5.0 )
				ifLocalVar117_g353 = hsvTorgb116_g353;
			float4 temp_output_53_0_g353 = ( ifLocalVar49_g353 + ifLocalVar79_g353 + ifLocalVar50_g353 + ifLocalVar51_g353 + ifLocalVar110_g353 + float4( ifLocalVar117_g353 , 0.0 ) );
			float4 temp_output_2_0_g359 = temp_output_53_0_g353;
			float4 ifLocalVar107_g353 = 0;
			if( temp_output_106_0_g353 == 0.0 )
				ifLocalVar107_g353 = ( ( ( break5_g359.r * 0.2 ) + ( break5_g359.g * 0.7 ) + ( break5_g359.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g359 * temp_output_2_0_g359 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g359 ) * ( 1.0 - temp_output_2_0_g359 ) ) ) );
			float4 ifLocalVar108_g353 = 0;
			if( temp_output_106_0_g353 == 1.0 )
				ifLocalVar108_g353 = ( temp_output_8_0_g353 * temp_output_53_0_g353 );
			float4 ifLocalVar112_g353 = 0;
			if( temp_output_106_0_g353 == 2.0 )
				ifLocalVar112_g353 = temp_output_53_0_g353;
			float GlowMap232_g335 = break12_g335.g;
			int temp_output_106_0_g361 = _QBlendMode2;
			int temp_output_27_0_g361 = _QBand2;
			int Band3_g368 = temp_output_27_0_g361;
			float temp_output_1_0_g361 = (( _QInvertDirection2 )?( ( 1.0 - Direction11_g335 ) ):( Direction11_g335 ));
			float temp_output_5_0_g361 = ( _QHistory2 * temp_output_1_0_g361 );
			float Delay3_g368 = (( _QSmoothHistory )?( temp_output_5_0_g361 ):( floor( temp_output_5_0_g361 ) ));
			float localAudioLinkLerp3_g368 = AudioLinkLerp3_g368( Band3_g368 , Delay3_g368 );
			float temp_output_8_0_g361 = localAudioLinkLerp3_g368;
			float4 temp_cast_34 = (temp_output_8_0_g361).xxxx;
			float4 temp_output_1_0_g367 = temp_cast_34;
			float4 break5_g367 = temp_output_1_0_g367;
			int temp_output_52_0_g361 = _QType2;
			float temp_output_29_0_g361 = _QColorOffset2;
			int Band6_g365 = temp_output_27_0_g361;
			int Mode6_g365 = ( ( (int)_QColorRotationMode2 * 2 ) + (int)_QColorRotationSpeed2 );
			int localAudioLinkDecodeDataAsUInt6_g365 = AudioLinkDecodeDataAsUInt6_g365( Band6_g365 , Mode6_g365 );
			float temp_output_55_0_g361 = ( ( ( localAudioLinkDecodeDataAsUInt6_g365 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g361 = ( temp_output_55_0_g361 * (int)(( _QUseColorRotation2 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g361 = _QEffectScale2;
			int Index1_g362 = (int)floor( ( frac( ( ( temp_output_29_0_g361 + temp_output_95_0_g361 ) * temp_output_103_0_g361 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g362 = AudioLinkData1_g362( Index1_g362 );
			float4 ifLocalVar49_g361 = 0;
			if( temp_output_52_0_g361 == 0.0 )
				ifLocalVar49_g361 = localAudioLinkData1_g362;
			int Index1_g366 = (int)floor( ( frac( ( ( temp_output_29_0_g361 + temp_output_95_0_g361 + temp_output_1_0_g361 ) * temp_output_103_0_g361 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g366 = AudioLinkData1_g366( Index1_g366 );
			float4 ifLocalVar79_g361 = 0;
			if( temp_output_52_0_g361 == 1.0 )
				ifLocalVar79_g361 = localAudioLinkData1_g366;
			float Position1_g363 = saturate( frac( ( ( temp_output_8_0_g361 + temp_output_29_0_g361 + temp_output_95_0_g361 ) * temp_output_103_0_g361 ) ) );
			float4 localAudioLinkLerp1_g363 = AudioLinkLerp1_g363( Position1_g363 );
			float4 ifLocalVar50_g361 = 0;
			if( temp_output_52_0_g361 == 2.0 )
				ifLocalVar50_g361 = localAudioLinkLerp1_g363;
			float Position1_g364 = saturate( frac( ( ( temp_output_29_0_g361 + temp_output_1_0_g361 + temp_output_95_0_g361 ) * temp_output_103_0_g361 ) ) );
			float4 localAudioLinkLerp1_g364 = AudioLinkLerp1_g364( Position1_g364 );
			float4 ifLocalVar51_g361 = 0;
			if( temp_output_52_0_g361 == 3.0 )
				ifLocalVar51_g361 = localAudioLinkLerp1_g364;
			float4 color111_g361 = IsGammaSpace() ? float4( 1, 1, 1, 0 ) : float4( 1, 1, 1, 0 );
			float4 ifLocalVar110_g361 = 0;
			if( temp_output_52_0_g361 == 4.0 )
				ifLocalVar110_g361 = color111_g361;
			float3 hsvTorgb116_g361 = HSVToRGB( float3(temp_output_55_0_g361,1.0,1.0) );
			float3 ifLocalVar117_g361 = 0;
			if( temp_output_52_0_g361 == 5.0 )
				ifLocalVar117_g361 = hsvTorgb116_g361;
			float4 temp_output_53_0_g361 = ( ifLocalVar49_g361 + ifLocalVar79_g361 + ifLocalVar50_g361 + ifLocalVar51_g361 + ifLocalVar110_g361 + float4( ifLocalVar117_g361 , 0.0 ) );
			float4 temp_output_2_0_g367 = temp_output_53_0_g361;
			float4 ifLocalVar107_g361 = 0;
			if( temp_output_106_0_g361 == 0.0 )
				ifLocalVar107_g361 = ( ( ( break5_g367.r * 0.2 ) + ( break5_g367.g * 0.7 ) + ( break5_g367.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g367 * temp_output_2_0_g367 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g367 ) * ( 1.0 - temp_output_2_0_g367 ) ) ) );
			float4 ifLocalVar108_g361 = 0;
			if( temp_output_106_0_g361 == 1.0 )
				ifLocalVar108_g361 = ( temp_output_8_0_g361 * temp_output_53_0_g361 );
			float4 ifLocalVar112_g361 = 0;
			if( temp_output_106_0_g361 == 2.0 )
				ifLocalVar112_g361 = temp_output_53_0_g361;
			float GlowMap331_g335 = break12_g335.b;
			int temp_output_106_0_g345 = _QBlendMode3;
			int temp_output_27_0_g345 = _QBand3;
			int Band3_g352 = temp_output_27_0_g345;
			float temp_output_1_0_g345 = (( _QInvertDirection3 )?( ( 1.0 - Direction11_g335 ) ):( Direction11_g335 ));
			float temp_output_5_0_g345 = ( _QHistory3 * temp_output_1_0_g345 );
			float Delay3_g352 = (( _QSmoothHistory )?( temp_output_5_0_g345 ):( floor( temp_output_5_0_g345 ) ));
			float localAudioLinkLerp3_g352 = AudioLinkLerp3_g352( Band3_g352 , Delay3_g352 );
			float temp_output_8_0_g345 = localAudioLinkLerp3_g352;
			float4 temp_cast_49 = (temp_output_8_0_g345).xxxx;
			float4 temp_output_1_0_g351 = temp_cast_49;
			float4 break5_g351 = temp_output_1_0_g351;
			int temp_output_52_0_g345 = _QType3;
			float temp_output_29_0_g345 = _QColorOffset3;
			int Band6_g349 = temp_output_27_0_g345;
			int Mode6_g349 = ( ( (int)_QColorRotationMode3 * 2 ) + (int)_QColorRotationSpeed3 );
			int localAudioLinkDecodeDataAsUInt6_g349 = AudioLinkDecodeDataAsUInt6_g349( Band6_g349 , Mode6_g349 );
			float temp_output_55_0_g345 = ( ( ( localAudioLinkDecodeDataAsUInt6_g349 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g345 = ( temp_output_55_0_g345 * (int)(( _QUseColorRotation3 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g345 = _QEffectScale3;
			int Index1_g346 = (int)floor( ( frac( ( ( temp_output_29_0_g345 + temp_output_95_0_g345 ) * temp_output_103_0_g345 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g346 = AudioLinkData1_g346( Index1_g346 );
			float4 ifLocalVar49_g345 = 0;
			if( temp_output_52_0_g345 == 0.0 )
				ifLocalVar49_g345 = localAudioLinkData1_g346;
			int Index1_g350 = (int)floor( ( frac( ( ( temp_output_29_0_g345 + temp_output_95_0_g345 + temp_output_1_0_g345 ) * temp_output_103_0_g345 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g350 = AudioLinkData1_g350( Index1_g350 );
			float4 ifLocalVar79_g345 = 0;
			if( temp_output_52_0_g345 == 1.0 )
				ifLocalVar79_g345 = localAudioLinkData1_g350;
			float Position1_g347 = saturate( frac( ( ( temp_output_8_0_g345 + temp_output_29_0_g345 + temp_output_95_0_g345 ) * temp_output_103_0_g345 ) ) );
			float4 localAudioLinkLerp1_g347 = AudioLinkLerp1_g347( Position1_g347 );
			float4 ifLocalVar50_g345 = 0;
			if( temp_output_52_0_g345 == 2.0 )
				ifLocalVar50_g345 = localAudioLinkLerp1_g347;
			float Position1_g348 = saturate( frac( ( ( temp_output_29_0_g345 + temp_output_1_0_g345 + temp_output_95_0_g345 ) * temp_output_103_0_g345 ) ) );
			float4 localAudioLinkLerp1_g348 = AudioLinkLerp1_g348( Position1_g348 );
			float4 ifLocalVar51_g345 = 0;
			if( temp_output_52_0_g345 == 3.0 )
				ifLocalVar51_g345 = localAudioLinkLerp1_g348;
			float4 color111_g345 = IsGammaSpace() ? float4( 1, 1, 1, 0 ) : float4( 1, 1, 1, 0 );
			float4 ifLocalVar110_g345 = 0;
			if( temp_output_52_0_g345 == 4.0 )
				ifLocalVar110_g345 = color111_g345;
			float3 hsvTorgb116_g345 = HSVToRGB( float3(temp_output_55_0_g345,1.0,1.0) );
			float3 ifLocalVar117_g345 = 0;
			if( temp_output_52_0_g345 == 5.0 )
				ifLocalVar117_g345 = hsvTorgb116_g345;
			float4 temp_output_53_0_g345 = ( ifLocalVar49_g345 + ifLocalVar79_g345 + ifLocalVar50_g345 + ifLocalVar51_g345 + ifLocalVar110_g345 + float4( ifLocalVar117_g345 , 0.0 ) );
			float4 temp_output_2_0_g351 = temp_output_53_0_g345;
			float4 ifLocalVar107_g345 = 0;
			if( temp_output_106_0_g345 == 0.0 )
				ifLocalVar107_g345 = ( ( ( break5_g351.r * 0.2 ) + ( break5_g351.g * 0.7 ) + ( break5_g351.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g351 * temp_output_2_0_g351 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g351 ) * ( 1.0 - temp_output_2_0_g351 ) ) ) );
			float4 ifLocalVar108_g345 = 0;
			if( temp_output_106_0_g345 == 1.0 )
				ifLocalVar108_g345 = ( temp_output_8_0_g345 * temp_output_53_0_g345 );
			float4 ifLocalVar112_g345 = 0;
			if( temp_output_106_0_g345 == 2.0 )
				ifLocalVar112_g345 = temp_output_53_0_g345;
			float GlowMap433_g335 = break12_g335.a;
			int temp_output_106_0_g337 = _QBlendMode4;
			int temp_output_27_0_g337 = _QBand4;
			int Band3_g344 = temp_output_27_0_g337;
			float temp_output_1_0_g337 = (( _QInvertDirection4 )?( ( 1.0 - Direction11_g335 ) ):( Direction11_g335 ));
			float temp_output_5_0_g337 = ( _QHistory4 * temp_output_1_0_g337 );
			float Delay3_g344 = (( _QSmoothHistory )?( temp_output_5_0_g337 ):( floor( temp_output_5_0_g337 ) ));
			float localAudioLinkLerp3_g344 = AudioLinkLerp3_g344( Band3_g344 , Delay3_g344 );
			float temp_output_8_0_g337 = localAudioLinkLerp3_g344;
			float4 temp_cast_64 = (temp_output_8_0_g337).xxxx;
			float4 temp_output_1_0_g343 = temp_cast_64;
			float4 break5_g343 = temp_output_1_0_g343;
			int temp_output_52_0_g337 = _QType4;
			float temp_output_29_0_g337 = _QColorOffset4;
			int Band6_g341 = temp_output_27_0_g337;
			int Mode6_g341 = ( ( (int)_QColorRotationMode4 * 2 ) + (int)_QColorRotationSpeed4 );
			int localAudioLinkDecodeDataAsUInt6_g341 = AudioLinkDecodeDataAsUInt6_g341( Band6_g341 , Mode6_g341 );
			float temp_output_55_0_g337 = ( ( ( localAudioLinkDecodeDataAsUInt6_g341 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g337 = ( temp_output_55_0_g337 * (int)(( _QUseColorRotation4 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g337 = _QEffectScale4;
			int Index1_g338 = (int)floor( ( frac( ( ( temp_output_29_0_g337 + temp_output_95_0_g337 ) * temp_output_103_0_g337 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g338 = AudioLinkData1_g338( Index1_g338 );
			float4 ifLocalVar49_g337 = 0;
			if( temp_output_52_0_g337 == 0.0 )
				ifLocalVar49_g337 = localAudioLinkData1_g338;
			int Index1_g342 = (int)floor( ( frac( ( ( temp_output_29_0_g337 + temp_output_95_0_g337 + temp_output_1_0_g337 ) * temp_output_103_0_g337 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g342 = AudioLinkData1_g342( Index1_g342 );
			float4 ifLocalVar79_g337 = 0;
			if( temp_output_52_0_g337 == 1.0 )
				ifLocalVar79_g337 = localAudioLinkData1_g342;
			float Position1_g339 = saturate( frac( ( ( temp_output_8_0_g337 + temp_output_29_0_g337 + temp_output_95_0_g337 ) * temp_output_103_0_g337 ) ) );
			float4 localAudioLinkLerp1_g339 = AudioLinkLerp1_g339( Position1_g339 );
			float4 ifLocalVar50_g337 = 0;
			if( temp_output_52_0_g337 == 2.0 )
				ifLocalVar50_g337 = localAudioLinkLerp1_g339;
			float Position1_g340 = saturate( frac( ( ( temp_output_29_0_g337 + temp_output_1_0_g337 + temp_output_95_0_g337 ) * temp_output_103_0_g337 ) ) );
			float4 localAudioLinkLerp1_g340 = AudioLinkLerp1_g340( Position1_g340 );
			float4 ifLocalVar51_g337 = 0;
			if( temp_output_52_0_g337 == 3.0 )
				ifLocalVar51_g337 = localAudioLinkLerp1_g340;
			float4 color111_g337 = IsGammaSpace() ? float4( 1, 1, 1, 0 ) : float4( 1, 1, 1, 0 );
			float4 ifLocalVar110_g337 = 0;
			if( temp_output_52_0_g337 == 4.0 )
				ifLocalVar110_g337 = color111_g337;
			float3 hsvTorgb116_g337 = HSVToRGB( float3(temp_output_55_0_g337,1.0,1.0) );
			float3 ifLocalVar117_g337 = 0;
			if( temp_output_52_0_g337 == 5.0 )
				ifLocalVar117_g337 = hsvTorgb116_g337;
			float4 temp_output_53_0_g337 = ( ifLocalVar49_g337 + ifLocalVar79_g337 + ifLocalVar50_g337 + ifLocalVar51_g337 + ifLocalVar110_g337 + float4( ifLocalVar117_g337 , 0.0 ) );
			float4 temp_output_2_0_g343 = temp_output_53_0_g337;
			float4 ifLocalVar107_g337 = 0;
			if( temp_output_106_0_g337 == 0.0 )
				ifLocalVar107_g337 = ( ( ( break5_g343.r * 0.2 ) + ( break5_g343.g * 0.7 ) + ( break5_g343.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g343 * temp_output_2_0_g343 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g343 ) * ( 1.0 - temp_output_2_0_g343 ) ) ) );
			float4 ifLocalVar108_g337 = 0;
			if( temp_output_106_0_g337 == 1.0 )
				ifLocalVar108_g337 = ( temp_output_8_0_g337 * temp_output_53_0_g337 );
			float4 ifLocalVar112_g337 = 0;
			if( temp_output_106_0_g337 == 2.0 )
				ifLocalVar112_g337 = temp_output_53_0_g337;
			float localIfAudioLinkv2Exists1_g336 = IfAudioLinkv2Exists1_g336();
			float4 lerpResult55_g335 = lerp( float4( 0,0,0,0 ) , ( _QuantumGlowColor * ( (( _QBandEnable1 )?( ( _QGlowColorBand1 * ( GlowMap130_g335 * ( ifLocalVar107_g353 + ifLocalVar108_g353 + ifLocalVar112_g353 ) ) * _QuantumGlowMultiply1 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable2 )?( ( _QGlowColorBand2 * ( GlowMap232_g335 * ( ifLocalVar107_g361 + ifLocalVar108_g361 + ifLocalVar112_g361 ) ) * _QuantumGlowMultiply2 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable3 )?( ( _QGlowColorBand3 * ( GlowMap331_g335 * ( ifLocalVar107_g345 + ifLocalVar108_g345 + ifLocalVar112_g345 ) ) * _QuantumGlowMultiply3 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable4 )?( ( _QGlowColorBand4 * ( GlowMap433_g335 * ( ifLocalVar107_g337 + ifLocalVar108_g337 + ifLocalVar112_g337 ) ) * _QuantumGlowMultiply4 ) ):( float4( 0,0,0,0 ) )) ) * _QuantumGlowMultiplyGlobal ) , localIfAudioLinkv2Exists1_g336);
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
			float4 tex2DNode28 = tex2D( _MetallicGlossMap, MainUVFinal239 );
			float Metallic83 = tex2DNode28.r;
			float Metallic34_g424 = Metallic83;
			float3 temp_output_82_0_g424 = ( localLightVolumeEvaluate2_g427 * Albedo33_g424 * ( 1.0 - Metallic34_g424 ) );
			float3 temp_output_138_0_g429 = Albedo33_g424;
			float3 albedo157_g429 = temp_output_138_0_g429;
			float Smoothness35_g424 = (0);
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
				float3 staticSwitch264 = IndirectAndSpeculars86_g424;
			#else
				float3 staticSwitch264 = float3( 0,0,0 );
			#endif
			float4 Emission179 = ( ( MainEmission88 + MainEmission2224 + (( _QEnableGlobal )?( lerpResult55_g335 ):( float4( 0,0,0,0 ) )) ) + float4( staticSwitch264 , 0.0 ) );
			o.Emission = Emission179.rgb;
			o.Metallic = Metallic83;
			float MetallicAlpha272 = tex2DNode28.a;
			float AlbedoAlpha271 = tex2DNode9.a;
			float Smoothnes278 = ( (( _AlbedoAlpha )?( AlbedoAlpha271 ):( MetallicAlpha272 )) * _Glossiness );
			o.Smoothness = Smoothnes278;
			float2 uv_AlphaMap = i.uv_texcoord * _AlphaMap_ST.xy + _AlphaMap_ST.zw;
			float2 uv2_AlphaMap = i.uv2_texcoord2 * _AlphaMap_ST.xy + _AlphaMap_ST.zw;
			int temp_output_18_0_g334 = _AlphaUVIndex;
			float2 lerpResult22_g334 = lerp( uv_AlphaMap , uv2_AlphaMap , (float)saturate( temp_output_18_0_g334 ));
			float2 uv3_AlphaMap = i.uv3_texcoord3 * _AlphaMap_ST.xy + _AlphaMap_ST.zw;
			int temp_output_26_0_g334 = ( temp_output_18_0_g334 - 1 );
			float2 lerpResult25_g334 = lerp( lerpResult22_g334 , uv3_AlphaMap , (float)saturate( temp_output_26_0_g334 ));
			float2 uv4_AlphaMap = i.uv4_texcoord4 * _AlphaMap_ST.xy + _AlphaMap_ST.zw;
			int temp_output_31_0_g334 = ( temp_output_26_0_g334 - 1 );
			float2 lerpResult29_g334 = lerp( lerpResult25_g334 , uv4_AlphaMap , (float)saturate( temp_output_31_0_g334 ));
			float2 uv5_AlphaMap = i.ase_texcoord5 * _AlphaMap_ST.xy + _AlphaMap_ST.zw;
			float2 lerpResult35_g334 = lerp( lerpResult29_g334 , uv5_AlphaMap.xy , (float)saturate( ( temp_output_31_0_g334 - 1 ) ));
			float4 tex2DNode213 = tex2D( _AlphaMap, lerpResult35_g334 );
			float AlphaMap212 = saturate( ( tex2DNode213.r * _Opacity ) );
			o.Alpha = AlphaMap212;
			float AlphaMask229 = tex2DNode213.r;
			clip( AlphaMask229 - _Cutoff );
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
				SurfaceOutputStandard o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputStandard, o )
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
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;203;-4954.452,158;Inherit;False;5090.126;3127.84;Base Textures;69;83;272;271;247;235;234;228;227;226;210;205;195;204;229;212;64;231;209;233;208;14;259;206;12;207;240;63;232;213;224;15;88;258;10;28;223;202;262;9;11;241;29;222;201;260;214;257;5;221;220;200;56;219;218;53;52;243;242;217;55;239;246;238;237;256;4;255;278;274;;1,1,1,1;0;0
Node;AmplifyShaderEditor.IntNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;255;-1840,400;Inherit;False;Property;_MainUVIndex;MainUVIndex;114;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;4;-1920,208;Inherit;True;Property;_MainTex;Main Tex;15;0;Create;True;0;0;0;False;0;False;None;a16b3161c8c05f54ba87ec06bfdd6b82;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;256;-1632,416;Inherit;False;UVSelect;-1;;289;be9f0a2bbb8e0f340a2211011430e00a;0;2;3;SAMPLER2D;1,1;False;18;INT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;237;-1424,400;Inherit;False;MainUV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;238;-1824,544;Inherit;False;237;MainUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;246;-1616,544;Inherit;False;UVHandling;0;;290;c17d079c1ac3cf440936a2325286a38a;0;1;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;239;-1408,544;Inherit;False;MainUVFinal;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;55;-1776,1552;Inherit;True;Property;_EmissionMap;Emission Map;18;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;217;-1776,2000;Inherit;True;Property;_EmissionMap2;Emission Map 2;17;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;242;-1504,1616;Inherit;False;239;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;243;-1504,2064;Inherit;False;239;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.IntNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;258;-1680,960;Inherit;False;Property;_DetailUVIndex;DetailUVIndex;120;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;52;-1232,1760;Inherit;False;Property;_EmissionColor;Emission Color;22;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;4,4,4,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;53;-1264,1552;Inherit;True;Property;_TextureSample5;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;218;-1264,2000;Inherit;True;Property;_TextureSample10;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;219;-1232,2208;Inherit;False;Property;_EmissionColor2;Emission Color2;21;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;4,4,4,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;5;-1456,208;Inherit;False;MainTexTex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;257;-1456,288;Inherit;False;239;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;15;-1536,768;Inherit;False;Property;_BumpScale;Normal Scale;24;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;240;-1472,688;Inherit;False;239;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;207;-1904,880;Inherit;True;Property;_DetailNormalMap;Detail Normal Map;25;0;Create;False;0;0;0;False;0;False;None;aef25913bc0271f498e5006238d33577;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;12;-1920,656;Inherit;True;Property;_BumpMap;NormalMap;23;0;Create;False;0;0;0;False;0;False;None;aef25913bc0271f498e5006238d33577;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;206;-1568,1056;Inherit;False;Property;_DetailNormalMapScale;Detail Normal Map Scale;28;0;Create;False;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;259;-1504,944;Inherit;False;UVSelect;-1;;333;be9f0a2bbb8e0f340a2211011430e00a;0;2;3;SAMPLER2D;_Sampler3259;False;18;INT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;56;-880,1552;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;200;-864,1664;Inherit;False;Property;_Emission;Emission;116;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;220;-976,2000;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;221;-976,2112;Inherit;False;Property;_Emission2;Emission2;121;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;29;-1760,1264;Inherit;True;Property;_MetallicGlossMap;Metallic Gloss Map;27;0;Create;False;0;0;0;False;0;False;None;95bc897e80af50446bc05c7e8d2649ae;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;241;-1504,1312;Inherit;False;239;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;11;-1184,416;Inherit;False;Property;_Color;Color;16;0;Create;False;0;0;0;False;0;False;0,0,0,0;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;9;-1248,208;Inherit;True;Property;_TextureSample0;Texture Sample 0;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;14;-1248,656;Inherit;True;Property;_TextureSample1;Texture Sample 1;3;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;208;-1248,880;Inherit;True;Property;_TextureSample8;Texture Sample 1;3;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;201;-704,1552;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;222;-816,2000;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;28;-1248,1264;Inherit;True;Property;_TextureSample3;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;10;-768,208;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendNormalsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;209;-896,656;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;214;-1872,2496;Inherit;True;Property;_AlphaMap;AlphaMap;19;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.IntNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;260;-1840,2720;Inherit;False;Property;_AlphaUVIndex;AlphaUVIndex;111;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;202;-560,1552;Inherit;False;Property;_EnableEmission;EnableEmission;115;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;223;-672,2000;Inherit;False;Property;_EnableEmission2;EnableEmission2;119;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;63;-576,208;Inherit;False;Albedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;64;-480,656;Inherit;True;Normal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;83;-896,1264;Inherit;False;Metallic;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;262;-1632,2704;Inherit;False;UVSelect;-1;;334;be9f0a2bbb8e0f340a2211011430e00a;0;2;3;SAMPLER2D;_Sampler3252;False;18;INT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;88;-272,1552;Inherit;False;MainEmission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;224;-464,2000;Inherit;False;MainEmission2;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;265;384,2352;Inherit;False;63;Albedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;266;384,2416;Inherit;False;83;Metallic;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;268;384,2544;Inherit;False;64;Normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;269;352,2480;Inherit;False;-1;;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;271;-784,336;Inherit;False;AlbedoAlpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;272;-896,1376;Inherit;False;MetallicAlpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;213;-1248,2496;Inherit;True;Property;_TextureSample9;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;232;-928,2560;Inherit;False;Property;_Opacity;Opacity;20;0;Create;True;0;0;0;False;0;False;1;8.33;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;89;432,2048;Inherit;False;88;MainEmission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;225;432,2128;Inherit;False;224;MainEmission2;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;216;464,2208;Inherit;False;QuatumGlow;29;;335;7730a8711ab108044bac907ea573069c;0;0;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;267;640,2352;Inherit;False;LightVolumesMetallicConnector;9;;424;4103f3421d11ef3498c02a836aaf4678;0;5;32;FLOAT3;0,0,0;False;30;FLOAT;0;False;31;FLOAT;0;False;1;FLOAT3;0,0,0;False;90;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;277;-1312,2880;Inherit;False;272;MetallicAlpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;276;-1280,2944;Inherit;False;271;AlbedoAlpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;233;-640,2544;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;176;688,2048;Inherit;True;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;264;960,2336;Inherit;False;Property;_Q_LightVolumes;Q_LightVolumes;118;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;275;-1040,2912;Inherit;False;Property;_AlbedoAlpha;AlbedoAlpha;105;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;274;-1104,3008;Inherit;False;Property;_Glossiness;Glossiness;104;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;231;-480,2544;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;270;1088,2064;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;273;-816,2912;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;211;494,158;Inherit;False;1509;684;Output;8;0;230;215;81;74;65;75;279;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;212;-272,2544;Inherit;False;AlphaMap;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;229;-272,2640;Inherit;False;AlphaMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;179;1456,2064;Inherit;False;Emission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;278;-672,2912;Inherit;False;Smoothnes;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;74;528,224;Inherit;False;63;Albedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;65;560,304;Inherit;False;64;Normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;81;528,400;Inherit;False;179;Emission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;204;-4496,336;Inherit;False;Property;_ShowRendering;ShowRendering;117;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;195;-4496,256;Inherit;False;Property;_ShowMain;ShowMain;113;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;205;-4688,336;Inherit;False;Property;_Culling;Culling;112;1;[Enum];Create;False;0;1;Option1;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;210;-4784,256;Inherit;False;Property;_Cutoff;Cutoff;26;0;Create;True;0;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;226;-4752,880;Inherit;False;Property;_BlendModeSrc;BlendModeSrc;108;1;[Enum];Create;True;0;1;Option1;0;1;UnityEngine.Rendering.BlendMode;True;0;False;5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;227;-4528,880;Inherit;False;Property;_BlendModeDst;BlendModeDst;109;1;[Enum];Create;True;0;1;Option1;0;1;UnityEngine.Rendering.BlendMode;True;0;False;10;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;228;-4736,784;Inherit;False;Property;_BlendMode;BlendMode;110;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;234;-4720,544;Inherit;False;Property;_ShaderType;ShaderType;107;0;Create;True;0;0;0;True;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;235;-4720,448;Inherit;False;Property;_RenderType;RenderType;106;0;Create;True;0;0;0;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;247;-4480,448;Inherit;False;Property;_ShowParallax;ShowParallax;122;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;230;896,720;Inherit;False;229;AlphaMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;75;544,496;Inherit;False;83;Metallic;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;215;896,640;Inherit;False;212;AlphaMap;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;279;864,560;Inherit;False;278;Smoothnes;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;0;1680,256;Float;False;True;-1;4;Saphi.QuantumShader.QuantumShaderUI;0;0;Standard;Saphi/QuantumShaderMetallicTransparent;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;Back;0;False;;0;False;;False;0;False;;0;False;;False;0;Custom;0.5;True;True;0;True;Custom;;Transparent;All;12;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;2;5;True;_BlendModeSrc;10;True;_BlendModeDst;0;0;False;;0;False;;0;False;;0;False;;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;;-1;-1;-1;-1;0;False;0;0;True;_Culling;-1;0;True;_Cutoff;1;Include;;True;1ec20832dfbb48343b8e0764e0864276;Custom;False;0;0;;0;0;False;0.1;False;;0;False;;False;17;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;16;FLOAT4;0,0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;256;3;4;0
WireConnection;256;18;255;0
WireConnection;237;0;256;0
WireConnection;246;1;238;0
WireConnection;239;0;246;0
WireConnection;53;0;55;0
WireConnection;53;1;242;0
WireConnection;218;0;217;0
WireConnection;218;1;243;0
WireConnection;5;0;4;0
WireConnection;259;18;258;0
WireConnection;56;0;53;0
WireConnection;56;1;52;0
WireConnection;220;0;218;0
WireConnection;220;1;219;0
WireConnection;9;0;5;0
WireConnection;9;1;257;0
WireConnection;14;0;12;0
WireConnection;14;1;240;0
WireConnection;14;5;15;0
WireConnection;208;0;207;0
WireConnection;208;1;259;0
WireConnection;208;5;206;0
WireConnection;201;0;56;0
WireConnection;201;1;200;0
WireConnection;222;0;220;0
WireConnection;222;1;221;0
WireConnection;28;0;29;0
WireConnection;28;1;241;0
WireConnection;10;0;9;5
WireConnection;10;1;11;5
WireConnection;209;0;14;0
WireConnection;209;1;208;0
WireConnection;202;1;201;0
WireConnection;223;1;222;0
WireConnection;63;0;10;0
WireConnection;64;0;209;0
WireConnection;83;0;28;1
WireConnection;262;3;214;0
WireConnection;262;18;260;0
WireConnection;88;0;202;0
WireConnection;224;0;223;0
WireConnection;271;0;9;4
WireConnection;272;0;28;4
WireConnection;213;0;214;0
WireConnection;213;1;262;0
WireConnection;267;32;265;0
WireConnection;267;30;266;0
WireConnection;267;31;269;0
WireConnection;267;1;268;0
WireConnection;233;0;213;1
WireConnection;233;1;232;0
WireConnection;176;0;89;0
WireConnection;176;1;225;0
WireConnection;176;2;216;0
WireConnection;264;0;267;0
WireConnection;275;0;277;0
WireConnection;275;1;276;0
WireConnection;231;0;233;0
WireConnection;270;0;176;0
WireConnection;270;1;264;0
WireConnection;273;0;275;0
WireConnection;273;1;274;0
WireConnection;212;0;231;0
WireConnection;229;0;213;1
WireConnection;179;0;270;0
WireConnection;278;0;273;0
WireConnection;0;0;74;0
WireConnection;0;1;65;0
WireConnection;0;2;81;0
WireConnection;0;3;75;0
WireConnection;0;4;279;0
WireConnection;0;9;215;0
WireConnection;0;10;230;0
ASEEND*/
//CHKSM=B1452EE6E8D75D612399A4704ABEB4ACE876E160