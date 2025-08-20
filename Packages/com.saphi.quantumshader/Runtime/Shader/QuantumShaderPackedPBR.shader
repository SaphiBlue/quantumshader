// Made with Amplify Shader Editor v1.9.9.3
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Saphi/QuantumShaderPackedPBR"
{
	Properties
	{
		[Toggle( _BACKFACENORMAL_ON )] _BackfaceNormal( "BackfaceNormal", Float ) = 0
		[Enum(Flip,0,Mirror,1,None,2)] _BackFaceNormalMode( "Normal Mode", Float ) = 0
		_ParallaxMap( "ParallaxMap", 2D ) = "white" {}
		_Parallax( "Parallax", Range( 0, 0.08 ) ) = 0
		_ParallaxMinSamples( "ParallaxMinSamples", Range( 1, 128 ) ) = 8
		_ParallaxMaxSamples( "ParallaxMaxSamples", Range( 1, 128 ) ) = 16
		_ParallaxSideWallSteps( "ParallaxSideWallSteps", Range( 0, 10 ) ) = 2
		_ParallaxRefPlane( "ParallaxRefPlane", Range( 0, 1 ) ) = 0
		[Toggle( _PARALLAXENABLE_ON )] _ParallaxEnable( "ParallaxEnable", Float ) = 0
		_MainTex( "Main Tex", 2D ) = "white" {}
		[Toggle( _LIGHTVOLUMES_ON )] _LightVolumes( "Enable Light Volumes", Float ) = 1
		[Toggle( _LIGHTVOLUMESSUBSTRACTLIGHTPROBES_ON )] _LightVolumesSubstractLightProbes( "LightVolumesSubstractLightProbes", Float ) = 1
		_LightVolumesBias( "Light Volumes Bias", Float ) = 0
		[Toggle( _SPECULARS_ON )] _Speculars( "Speculars", Float ) = 1
		[Toggle( _DOMINANTDIRSPECULARS_ON )] _DominantDirSpeculars( "Dominant Dir Speculars", Float ) = 0
		_ShowLightVolumes( "ShowLightVolumes", Float ) = 0
		_LightVolumesMultiplier( "LightVolumesMultiplier", Float ) = 1
		_Color( "Color", Color ) = ( 0, 0, 0, 0 )
		_EmissionMap( "Emission Map", 2D ) = "white" {}
		_EmissionMap2( "Emission Map 2", 2D ) = "black" {}
		[HDR] _EmissionColor( "Emission Color", Color ) = ( 0, 0, 0, 0 )
		[HDR] _EmissionColor2( "Emission Color2", Color ) = ( 0, 0, 0, 0 )
		_BumpMap( "NormalMap", 2D ) = "bump" {}
		_DetailNormalMap( "Detail Normal Map", 2D ) = "bump" {}
		_BumpScale( "Normal Scale", Range( 0, 1 ) ) = 1
		_DetailNormalMapScale( "Detail Normal Map Scale", Range( 0, 1 ) ) = 0
		_PBRMap( "Packed PBR Map", 2D ) = "white" {}
		_Metallic( "Metallic", Range( 0, 1 ) ) = 0
		_SpecularCorretive( "Specular Corretive", Float ) = 0.1
		_Specular( "Specular", Range( 0, 1 ) ) = 0.5
		[Enum(UnityEngine.Rendering.CullMode)] _Culling( "Culling", Float ) = 2
		_Roughness( "Roughness", Range( 0, 1 ) ) = 0.5
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
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] _texcoord2( "", 2D ) = "white" {}
		[HideInInspector] _texcoord3( "", 2D ) = "white" {}
		[HideInInspector] _texcoord4( "", 2D ) = "white" {}
		_QHistory4( "QHistory4", Range( 0, 128 ) ) = 32
		_ShowQuantumBand3( "ShowQuantumBand3", Float ) = 0
		_ShowQuantumBand4( "ShowQuantumBand4", Float ) = 0
		_ShowQuantum( "ShowQuantum", Float ) = 0
		_ShowQuantumBand1( "ShowQuantumBand1", Float ) = 0
		_ShowQuantumBand2( "ShowQuantumBand2", Float ) = 0
		_QuantumGlowMultiplyGlobal( "QuantumGlowMultiplyGlobal", Float ) = 1
		[Toggle] _UseUVAsDirectionUV( "UseUVAsDirectionUV", Float ) = 0
		[Toggle] _UseUVAsDirection( "UseUVAsDirection", Float ) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)] _QDirectionUVIndex( "DirectionUVIndex", Int ) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)] _QGlowMapUVIndex( "GlowMapUVIndex", Int ) = 0
		_RenderType( "RenderType", Float ) = 0
		_ShaderType( "ShaderType", Float ) = 2
		_ShowMain( "ShowMain", Float ) = 0
		[Toggle] _EnableEmission( "EnableEmission", Float ) = 0
		_Emission( "Emission", Float ) = 1
		_ShowRendering( "ShowRendering", Float ) = 0
		[Toggle] _EnableEmission2( "EnableEmission2", Float ) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)] _MainUVIndex( "MainUVIndex", Int ) = 0
		[Toggle( _Q_LIGHTVOLUMES_ON )] _Q_LightVolumes( "Q_LightVolumes", Float ) = 0
		_Emission2( "Emission2", Float ) = 1
		_ShowParallax( "ShowParallax", Float ) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)] _DetailUVIndex( "DetailUVIndex", Int ) = 0
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
		#pragma shader_feature_local _BACKFACENORMAL_ON
		#pragma shader_feature_local _PARALLAXENABLE_ON
		#pragma shader_feature_local _Q_LIGHTVOLUMES_ON
		#pragma shader_feature_local _SPECULARS_ON
		#pragma shader_feature_local _LIGHTVOLUMES_ON
		#pragma shader_feature_local _LIGHTVOLUMESSUBSTRACTLIGHTPROBES_ON
		#pragma shader_feature_local _DOMINANTDIRSPECULARS_ON
		#define ASE_VERSION 19903
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
			half ASEIsFrontFace : VFACE;
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
		uniform half _BackFaceNormalMode;
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
		uniform float _SpecularCorretive;
		uniform float _Specular;
		uniform float _Roughness;


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


		float3 BackFaceNormalMode( float _switch, float3 flip, float3 mirror, float3 none )
		{
			if(_switch ==0){
				return flip;
			}else if(_switch ==1){
				return mirror;
			}else if(_switch ==2){
				return none;
			}else{
				return float3(0,0,0);
			}
		}


		inline float AudioLinkLerp3_g400( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g397( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g394( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g398( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g395( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g396( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		float3 HSVToRGB( float3 c )
		{
			float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
			float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
			return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
		}


		inline float AudioLinkLerp3_g408( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g405( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g402( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g406( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g403( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g404( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g392( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g389( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g386( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g390( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g387( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g388( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g384( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g381( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g378( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g382( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g379( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g380( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		float IfAudioLinkv2Exists1_g376(  )
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
			float2 MainUV222 = lerpResult35_g369;
			float2 temp_output_1_0_g371 = MainUV222;
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
			float2 MainUVFinal224 = staticSwitch10_g371;
			float2 uv_DetailNormalMap = i.uv_texcoord * _DetailNormalMap_ST.xy + _DetailNormalMap_ST.zw;
			float2 uv2_DetailNormalMap = i.uv2_texcoord2 * _DetailNormalMap_ST.xy + _DetailNormalMap_ST.zw;
			int temp_output_18_0_g372 = _DetailUVIndex;
			float2 lerpResult22_g372 = lerp( uv_DetailNormalMap , uv2_DetailNormalMap , (float)saturate( temp_output_18_0_g372 ));
			float2 uv3_DetailNormalMap = i.uv3_texcoord3 * _DetailNormalMap_ST.xy + _DetailNormalMap_ST.zw;
			int temp_output_26_0_g372 = ( temp_output_18_0_g372 - 1 );
			float2 lerpResult25_g372 = lerp( lerpResult22_g372 , uv3_DetailNormalMap , (float)saturate( temp_output_26_0_g372 ));
			float2 uv4_DetailNormalMap = i.uv4_texcoord4 * _DetailNormalMap_ST.xy + _DetailNormalMap_ST.zw;
			int temp_output_31_0_g372 = ( temp_output_26_0_g372 - 1 );
			float2 lerpResult29_g372 = lerp( lerpResult25_g372 , uv4_DetailNormalMap , (float)saturate( temp_output_31_0_g372 ));
			float2 uv5_DetailNormalMap = i.ase_texcoord5 * _DetailNormalMap_ST.xy + _DetailNormalMap_ST.zw;
			float2 lerpResult35_g372 = lerp( lerpResult29_g372 , uv5_DetailNormalMap.xy , (float)saturate( ( temp_output_31_0_g372 - 1 ) ));
			float3 temp_output_9_0_g513 = BlendNormals( UnpackScaleNormal( tex2D( _BumpMap, MainUVFinal224 ), _BumpScale ) , UnpackScaleNormal( tex2D( _DetailNormalMap, lerpResult35_g372 ), _DetailNormalMapScale ) );
			float _switch4_g513 = _BackFaceNormalMode;
			float3 flip4_g513 = float3( -1, -1, -1 );
			float3 mirror4_g513 = float3( 1, 1, -1 );
			float3 none4_g513 = float3( 1, 1, 1 );
			float3 localBackFaceNormalMode4_g513 = BackFaceNormalMode( _switch4_g513 , flip4_g513 , mirror4_g513 , none4_g513 );
			float3 switchResult2_g513 = (((i.ASEIsFrontFace>0)?(temp_output_9_0_g513):(( temp_output_9_0_g513 * localBackFaceNormalMode4_g513 ))));
			#ifdef _BACKFACENORMAL_ON
				float3 staticSwitch11_g513 = switchResult2_g513;
			#else
				float3 staticSwitch11_g513 = temp_output_9_0_g513;
			#endif
			float3 Normal64 = staticSwitch11_g513;
			o.Normal = Normal64;
			float3 Albedo63 = ( tex2D( _MainTex, MainUVFinal224 ).rgb * _Color.rgb );
			float4 tex2DNode18 = tex2D( _PBRMap, MainUVFinal224 );
			float MetallicValue82 = tex2DNode18.r;
			float MetallicResult68 = ( MetallicValue82 * _Metallic );
			float3 lerpResult19 = lerp( Albedo63 , float3( 0,0,0 ) , MetallicResult68);
			float3 SpecularAlbedo72 = lerpResult19;
			o.Albedo = SpecularAlbedo72;
			float3 MainEmission88 = (( _EnableEmission )?( ( ( tex2D( _EmissionMap, MainUVFinal224 ).rgb * _EmissionColor.rgb ) * _Emission ) ):( float3( 0,0,0 ) ));
			float3 MainEmission2217 = (( _EnableEmission2 )?( ( ( tex2D( _EmissionMap2, MainUVFinal224 ).rgb * _EmissionColor2.rgb ) * _Emission2 ) ):( float3( 0,0,0 ) ));
			float2 uv_QGlowMap = i.uv_texcoord * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			float2 uv2_QGlowMap = i.uv2_texcoord2 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			int temp_output_18_0_g410 = _QGlowMapUVIndex;
			float2 lerpResult22_g410 = lerp( uv_QGlowMap , uv2_QGlowMap , (float)saturate( temp_output_18_0_g410 ));
			float2 uv3_QGlowMap = i.uv3_texcoord3 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			int temp_output_26_0_g410 = ( temp_output_18_0_g410 - 1 );
			float2 lerpResult25_g410 = lerp( lerpResult22_g410 , uv3_QGlowMap , (float)saturate( temp_output_26_0_g410 ));
			float2 uv4_QGlowMap = i.uv4_texcoord4 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			int temp_output_31_0_g410 = ( temp_output_26_0_g410 - 1 );
			float2 lerpResult29_g410 = lerp( lerpResult25_g410 , uv4_QGlowMap , (float)saturate( temp_output_31_0_g410 ));
			float2 uv5_QGlowMap = i.ase_texcoord5 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			float2 lerpResult35_g410 = lerp( lerpResult29_g410 , uv5_QGlowMap.xy , (float)saturate( ( temp_output_31_0_g410 - 1 ) ));
			float4 GlowMap7_g375 = tex2D( _QGlowMap, lerpResult35_g410 );
			float4 break12_g375 = GlowMap7_g375;
			float GlowMap130_g375 = break12_g375.r;
			int temp_output_106_0_g393 = _QBlendMode1;
			int temp_output_27_0_g393 = _QBand1;
			int Band3_g400 = temp_output_27_0_g393;
			float2 uv_QDirection = i.uv_texcoord * _QDirection_ST.xy + _QDirection_ST.zw;
			float2 uv2_QDirection = i.uv2_texcoord2 * _QDirection_ST.xy + _QDirection_ST.zw;
			int temp_output_18_0_g409 = _QDirectionUVIndex;
			float2 lerpResult22_g409 = lerp( uv_QDirection , uv2_QDirection , (float)saturate( temp_output_18_0_g409 ));
			float2 uv3_QDirection = i.uv3_texcoord3 * _QDirection_ST.xy + _QDirection_ST.zw;
			int temp_output_26_0_g409 = ( temp_output_18_0_g409 - 1 );
			float2 lerpResult25_g409 = lerp( lerpResult22_g409 , uv3_QDirection , (float)saturate( temp_output_26_0_g409 ));
			float2 uv4_QDirection = i.uv4_texcoord4 * _QDirection_ST.xy + _QDirection_ST.zw;
			int temp_output_31_0_g409 = ( temp_output_26_0_g409 - 1 );
			float2 lerpResult29_g409 = lerp( lerpResult25_g409 , uv4_QDirection , (float)saturate( temp_output_31_0_g409 ));
			float2 uv5_QDirection = i.ase_texcoord5 * _QDirection_ST.xy + _QDirection_ST.zw;
			float2 lerpResult35_g409 = lerp( lerpResult29_g409 , uv5_QDirection.xy , (float)saturate( ( temp_output_31_0_g409 - 1 ) ));
			float2 temp_output_288_0_g375 = lerpResult35_g409;
			float4 DirectionMap5_g375 = tex2D( _QDirection, temp_output_288_0_g375 );
			float2 break287_g375 = temp_output_288_0_g375;
			float Direction11_g375 = (( _UseUVAsDirection )?( (( _UseUVAsDirectionUV )?( break287_g375.y ):( break287_g375.x )) ):( DirectionMap5_g375.r ));
			float temp_output_1_0_g393 = (( _QInvertDirection1 )?( ( 1.0 - Direction11_g375 ) ):( Direction11_g375 ));
			float temp_output_5_0_g393 = ( _QHistory1 * temp_output_1_0_g393 );
			float Delay3_g400 = (( _QSmoothHistory )?( temp_output_5_0_g393 ):( floor( temp_output_5_0_g393 ) ));
			float localAudioLinkLerp3_g400 = AudioLinkLerp3_g400( Band3_g400 , Delay3_g400 );
			float temp_output_8_0_g393 = localAudioLinkLerp3_g400;
			float4 temp_cast_21 = (temp_output_8_0_g393).xxxx;
			float4 temp_output_1_0_g399 = temp_cast_21;
			float4 break5_g399 = temp_output_1_0_g399;
			int temp_output_52_0_g393 = _QType1;
			float temp_output_29_0_g393 = _QColorOffset1;
			int Band6_g397 = temp_output_27_0_g393;
			int Mode6_g397 = ( ( (int)_QColorRotationMode1 * 2 ) + (int)_QColorRotationSpeed1 );
			int localAudioLinkDecodeDataAsUInt6_g397 = AudioLinkDecodeDataAsUInt6_g397( Band6_g397 , Mode6_g397 );
			float temp_output_55_0_g393 = ( ( ( localAudioLinkDecodeDataAsUInt6_g397 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g393 = ( temp_output_55_0_g393 * (int)(( _QUseColorRotation1 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g393 = _QEffectScale1;
			int Index1_g394 = (int)floor( ( frac( ( ( temp_output_29_0_g393 + temp_output_95_0_g393 ) * temp_output_103_0_g393 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g394 = AudioLinkData1_g394( Index1_g394 );
			float4 ifLocalVar49_g393 = 0;
			if( temp_output_52_0_g393 == 0.0 )
				ifLocalVar49_g393 = localAudioLinkData1_g394;
			int Index1_g398 = (int)floor( ( frac( ( ( temp_output_29_0_g393 + temp_output_95_0_g393 + temp_output_1_0_g393 ) * temp_output_103_0_g393 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g398 = AudioLinkData1_g398( Index1_g398 );
			float4 ifLocalVar79_g393 = 0;
			if( temp_output_52_0_g393 == 1.0 )
				ifLocalVar79_g393 = localAudioLinkData1_g398;
			float Position1_g395 = saturate( frac( ( ( temp_output_8_0_g393 + temp_output_29_0_g393 + temp_output_95_0_g393 ) * temp_output_103_0_g393 ) ) );
			float4 localAudioLinkLerp1_g395 = AudioLinkLerp1_g395( Position1_g395 );
			float4 ifLocalVar50_g393 = 0;
			if( temp_output_52_0_g393 == 2.0 )
				ifLocalVar50_g393 = localAudioLinkLerp1_g395;
			float Position1_g396 = saturate( frac( ( ( temp_output_29_0_g393 + temp_output_1_0_g393 + temp_output_95_0_g393 ) * temp_output_103_0_g393 ) ) );
			float4 localAudioLinkLerp1_g396 = AudioLinkLerp1_g396( Position1_g396 );
			float4 ifLocalVar51_g393 = 0;
			if( temp_output_52_0_g393 == 3.0 )
				ifLocalVar51_g393 = localAudioLinkLerp1_g396;
			float4 color111_g393 = IsGammaSpace() ? float4( 1, 1, 1, 0 ) : float4( 1, 1, 1, 0 );
			float4 ifLocalVar110_g393 = 0;
			if( temp_output_52_0_g393 == 4.0 )
				ifLocalVar110_g393 = color111_g393;
			float3 hsvTorgb116_g393 = HSVToRGB( float3(temp_output_55_0_g393,1.0,1.0) );
			float3 ifLocalVar117_g393 = 0;
			if( temp_output_52_0_g393 == 5.0 )
				ifLocalVar117_g393 = hsvTorgb116_g393;
			float4 temp_output_53_0_g393 = ( ifLocalVar49_g393 + ifLocalVar79_g393 + ifLocalVar50_g393 + ifLocalVar51_g393 + ifLocalVar110_g393 + float4( ifLocalVar117_g393 , 0.0 ) );
			float4 temp_output_2_0_g399 = temp_output_53_0_g393;
			float4 ifLocalVar107_g393 = 0;
			if( temp_output_106_0_g393 == 0.0 )
				ifLocalVar107_g393 = ( ( ( break5_g399.r * 0.2 ) + ( break5_g399.g * 0.7 ) + ( break5_g399.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g399 * temp_output_2_0_g399 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g399 ) * ( 1.0 - temp_output_2_0_g399 ) ) ) );
			float4 ifLocalVar108_g393 = 0;
			if( temp_output_106_0_g393 == 1.0 )
				ifLocalVar108_g393 = ( temp_output_8_0_g393 * temp_output_53_0_g393 );
			float4 ifLocalVar112_g393 = 0;
			if( temp_output_106_0_g393 == 2.0 )
				ifLocalVar112_g393 = temp_output_53_0_g393;
			float GlowMap232_g375 = break12_g375.g;
			int temp_output_106_0_g401 = _QBlendMode2;
			int temp_output_27_0_g401 = _QBand2;
			int Band3_g408 = temp_output_27_0_g401;
			float temp_output_1_0_g401 = (( _QInvertDirection2 )?( ( 1.0 - Direction11_g375 ) ):( Direction11_g375 ));
			float temp_output_5_0_g401 = ( _QHistory2 * temp_output_1_0_g401 );
			float Delay3_g408 = (( _QSmoothHistory )?( temp_output_5_0_g401 ):( floor( temp_output_5_0_g401 ) ));
			float localAudioLinkLerp3_g408 = AudioLinkLerp3_g408( Band3_g408 , Delay3_g408 );
			float temp_output_8_0_g401 = localAudioLinkLerp3_g408;
			float4 temp_cast_32 = (temp_output_8_0_g401).xxxx;
			float4 temp_output_1_0_g407 = temp_cast_32;
			float4 break5_g407 = temp_output_1_0_g407;
			int temp_output_52_0_g401 = _QType2;
			float temp_output_29_0_g401 = _QColorOffset2;
			int Band6_g405 = temp_output_27_0_g401;
			int Mode6_g405 = ( ( (int)_QColorRotationMode2 * 2 ) + (int)_QColorRotationSpeed2 );
			int localAudioLinkDecodeDataAsUInt6_g405 = AudioLinkDecodeDataAsUInt6_g405( Band6_g405 , Mode6_g405 );
			float temp_output_55_0_g401 = ( ( ( localAudioLinkDecodeDataAsUInt6_g405 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g401 = ( temp_output_55_0_g401 * (int)(( _QUseColorRotation2 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g401 = _QEffectScale2;
			int Index1_g402 = (int)floor( ( frac( ( ( temp_output_29_0_g401 + temp_output_95_0_g401 ) * temp_output_103_0_g401 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g402 = AudioLinkData1_g402( Index1_g402 );
			float4 ifLocalVar49_g401 = 0;
			if( temp_output_52_0_g401 == 0.0 )
				ifLocalVar49_g401 = localAudioLinkData1_g402;
			int Index1_g406 = (int)floor( ( frac( ( ( temp_output_29_0_g401 + temp_output_95_0_g401 + temp_output_1_0_g401 ) * temp_output_103_0_g401 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g406 = AudioLinkData1_g406( Index1_g406 );
			float4 ifLocalVar79_g401 = 0;
			if( temp_output_52_0_g401 == 1.0 )
				ifLocalVar79_g401 = localAudioLinkData1_g406;
			float Position1_g403 = saturate( frac( ( ( temp_output_8_0_g401 + temp_output_29_0_g401 + temp_output_95_0_g401 ) * temp_output_103_0_g401 ) ) );
			float4 localAudioLinkLerp1_g403 = AudioLinkLerp1_g403( Position1_g403 );
			float4 ifLocalVar50_g401 = 0;
			if( temp_output_52_0_g401 == 2.0 )
				ifLocalVar50_g401 = localAudioLinkLerp1_g403;
			float Position1_g404 = saturate( frac( ( ( temp_output_29_0_g401 + temp_output_1_0_g401 + temp_output_95_0_g401 ) * temp_output_103_0_g401 ) ) );
			float4 localAudioLinkLerp1_g404 = AudioLinkLerp1_g404( Position1_g404 );
			float4 ifLocalVar51_g401 = 0;
			if( temp_output_52_0_g401 == 3.0 )
				ifLocalVar51_g401 = localAudioLinkLerp1_g404;
			float4 color111_g401 = IsGammaSpace() ? float4( 1, 1, 1, 0 ) : float4( 1, 1, 1, 0 );
			float4 ifLocalVar110_g401 = 0;
			if( temp_output_52_0_g401 == 4.0 )
				ifLocalVar110_g401 = color111_g401;
			float3 hsvTorgb116_g401 = HSVToRGB( float3(temp_output_55_0_g401,1.0,1.0) );
			float3 ifLocalVar117_g401 = 0;
			if( temp_output_52_0_g401 == 5.0 )
				ifLocalVar117_g401 = hsvTorgb116_g401;
			float4 temp_output_53_0_g401 = ( ifLocalVar49_g401 + ifLocalVar79_g401 + ifLocalVar50_g401 + ifLocalVar51_g401 + ifLocalVar110_g401 + float4( ifLocalVar117_g401 , 0.0 ) );
			float4 temp_output_2_0_g407 = temp_output_53_0_g401;
			float4 ifLocalVar107_g401 = 0;
			if( temp_output_106_0_g401 == 0.0 )
				ifLocalVar107_g401 = ( ( ( break5_g407.r * 0.2 ) + ( break5_g407.g * 0.7 ) + ( break5_g407.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g407 * temp_output_2_0_g407 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g407 ) * ( 1.0 - temp_output_2_0_g407 ) ) ) );
			float4 ifLocalVar108_g401 = 0;
			if( temp_output_106_0_g401 == 1.0 )
				ifLocalVar108_g401 = ( temp_output_8_0_g401 * temp_output_53_0_g401 );
			float4 ifLocalVar112_g401 = 0;
			if( temp_output_106_0_g401 == 2.0 )
				ifLocalVar112_g401 = temp_output_53_0_g401;
			float GlowMap331_g375 = break12_g375.b;
			int temp_output_106_0_g385 = _QBlendMode3;
			int temp_output_27_0_g385 = _QBand3;
			int Band3_g392 = temp_output_27_0_g385;
			float temp_output_1_0_g385 = (( _QInvertDirection3 )?( ( 1.0 - Direction11_g375 ) ):( Direction11_g375 ));
			float temp_output_5_0_g385 = ( _QHistory3 * temp_output_1_0_g385 );
			float Delay3_g392 = (( _QSmoothHistory )?( temp_output_5_0_g385 ):( floor( temp_output_5_0_g385 ) ));
			float localAudioLinkLerp3_g392 = AudioLinkLerp3_g392( Band3_g392 , Delay3_g392 );
			float temp_output_8_0_g385 = localAudioLinkLerp3_g392;
			float4 temp_cast_43 = (temp_output_8_0_g385).xxxx;
			float4 temp_output_1_0_g391 = temp_cast_43;
			float4 break5_g391 = temp_output_1_0_g391;
			int temp_output_52_0_g385 = _QType3;
			float temp_output_29_0_g385 = _QColorOffset3;
			int Band6_g389 = temp_output_27_0_g385;
			int Mode6_g389 = ( ( (int)_QColorRotationMode3 * 2 ) + (int)_QColorRotationSpeed3 );
			int localAudioLinkDecodeDataAsUInt6_g389 = AudioLinkDecodeDataAsUInt6_g389( Band6_g389 , Mode6_g389 );
			float temp_output_55_0_g385 = ( ( ( localAudioLinkDecodeDataAsUInt6_g389 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g385 = ( temp_output_55_0_g385 * (int)(( _QUseColorRotation3 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g385 = _QEffectScale3;
			int Index1_g386 = (int)floor( ( frac( ( ( temp_output_29_0_g385 + temp_output_95_0_g385 ) * temp_output_103_0_g385 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g386 = AudioLinkData1_g386( Index1_g386 );
			float4 ifLocalVar49_g385 = 0;
			if( temp_output_52_0_g385 == 0.0 )
				ifLocalVar49_g385 = localAudioLinkData1_g386;
			int Index1_g390 = (int)floor( ( frac( ( ( temp_output_29_0_g385 + temp_output_95_0_g385 + temp_output_1_0_g385 ) * temp_output_103_0_g385 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g390 = AudioLinkData1_g390( Index1_g390 );
			float4 ifLocalVar79_g385 = 0;
			if( temp_output_52_0_g385 == 1.0 )
				ifLocalVar79_g385 = localAudioLinkData1_g390;
			float Position1_g387 = saturate( frac( ( ( temp_output_8_0_g385 + temp_output_29_0_g385 + temp_output_95_0_g385 ) * temp_output_103_0_g385 ) ) );
			float4 localAudioLinkLerp1_g387 = AudioLinkLerp1_g387( Position1_g387 );
			float4 ifLocalVar50_g385 = 0;
			if( temp_output_52_0_g385 == 2.0 )
				ifLocalVar50_g385 = localAudioLinkLerp1_g387;
			float Position1_g388 = saturate( frac( ( ( temp_output_29_0_g385 + temp_output_1_0_g385 + temp_output_95_0_g385 ) * temp_output_103_0_g385 ) ) );
			float4 localAudioLinkLerp1_g388 = AudioLinkLerp1_g388( Position1_g388 );
			float4 ifLocalVar51_g385 = 0;
			if( temp_output_52_0_g385 == 3.0 )
				ifLocalVar51_g385 = localAudioLinkLerp1_g388;
			float4 color111_g385 = IsGammaSpace() ? float4( 1, 1, 1, 0 ) : float4( 1, 1, 1, 0 );
			float4 ifLocalVar110_g385 = 0;
			if( temp_output_52_0_g385 == 4.0 )
				ifLocalVar110_g385 = color111_g385;
			float3 hsvTorgb116_g385 = HSVToRGB( float3(temp_output_55_0_g385,1.0,1.0) );
			float3 ifLocalVar117_g385 = 0;
			if( temp_output_52_0_g385 == 5.0 )
				ifLocalVar117_g385 = hsvTorgb116_g385;
			float4 temp_output_53_0_g385 = ( ifLocalVar49_g385 + ifLocalVar79_g385 + ifLocalVar50_g385 + ifLocalVar51_g385 + ifLocalVar110_g385 + float4( ifLocalVar117_g385 , 0.0 ) );
			float4 temp_output_2_0_g391 = temp_output_53_0_g385;
			float4 ifLocalVar107_g385 = 0;
			if( temp_output_106_0_g385 == 0.0 )
				ifLocalVar107_g385 = ( ( ( break5_g391.r * 0.2 ) + ( break5_g391.g * 0.7 ) + ( break5_g391.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g391 * temp_output_2_0_g391 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g391 ) * ( 1.0 - temp_output_2_0_g391 ) ) ) );
			float4 ifLocalVar108_g385 = 0;
			if( temp_output_106_0_g385 == 1.0 )
				ifLocalVar108_g385 = ( temp_output_8_0_g385 * temp_output_53_0_g385 );
			float4 ifLocalVar112_g385 = 0;
			if( temp_output_106_0_g385 == 2.0 )
				ifLocalVar112_g385 = temp_output_53_0_g385;
			float GlowMap433_g375 = break12_g375.a;
			int temp_output_106_0_g377 = _QBlendMode4;
			int temp_output_27_0_g377 = _QBand4;
			int Band3_g384 = temp_output_27_0_g377;
			float temp_output_1_0_g377 = (( _QInvertDirection4 )?( ( 1.0 - Direction11_g375 ) ):( Direction11_g375 ));
			float temp_output_5_0_g377 = ( _QHistory4 * temp_output_1_0_g377 );
			float Delay3_g384 = (( _QSmoothHistory )?( temp_output_5_0_g377 ):( floor( temp_output_5_0_g377 ) ));
			float localAudioLinkLerp3_g384 = AudioLinkLerp3_g384( Band3_g384 , Delay3_g384 );
			float temp_output_8_0_g377 = localAudioLinkLerp3_g384;
			float4 temp_cast_54 = (temp_output_8_0_g377).xxxx;
			float4 temp_output_1_0_g383 = temp_cast_54;
			float4 break5_g383 = temp_output_1_0_g383;
			int temp_output_52_0_g377 = _QType4;
			float temp_output_29_0_g377 = _QColorOffset4;
			int Band6_g381 = temp_output_27_0_g377;
			int Mode6_g381 = ( ( (int)_QColorRotationMode4 * 2 ) + (int)_QColorRotationSpeed4 );
			int localAudioLinkDecodeDataAsUInt6_g381 = AudioLinkDecodeDataAsUInt6_g381( Band6_g381 , Mode6_g381 );
			float temp_output_55_0_g377 = ( ( ( localAudioLinkDecodeDataAsUInt6_g381 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g377 = ( temp_output_55_0_g377 * (int)(( _QUseColorRotation4 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g377 = _QEffectScale4;
			int Index1_g378 = (int)floor( ( frac( ( ( temp_output_29_0_g377 + temp_output_95_0_g377 ) * temp_output_103_0_g377 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g378 = AudioLinkData1_g378( Index1_g378 );
			float4 ifLocalVar49_g377 = 0;
			if( temp_output_52_0_g377 == 0.0 )
				ifLocalVar49_g377 = localAudioLinkData1_g378;
			int Index1_g382 = (int)floor( ( frac( ( ( temp_output_29_0_g377 + temp_output_95_0_g377 + temp_output_1_0_g377 ) * temp_output_103_0_g377 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g382 = AudioLinkData1_g382( Index1_g382 );
			float4 ifLocalVar79_g377 = 0;
			if( temp_output_52_0_g377 == 1.0 )
				ifLocalVar79_g377 = localAudioLinkData1_g382;
			float Position1_g379 = saturate( frac( ( ( temp_output_8_0_g377 + temp_output_29_0_g377 + temp_output_95_0_g377 ) * temp_output_103_0_g377 ) ) );
			float4 localAudioLinkLerp1_g379 = AudioLinkLerp1_g379( Position1_g379 );
			float4 ifLocalVar50_g377 = 0;
			if( temp_output_52_0_g377 == 2.0 )
				ifLocalVar50_g377 = localAudioLinkLerp1_g379;
			float Position1_g380 = saturate( frac( ( ( temp_output_29_0_g377 + temp_output_1_0_g377 + temp_output_95_0_g377 ) * temp_output_103_0_g377 ) ) );
			float4 localAudioLinkLerp1_g380 = AudioLinkLerp1_g380( Position1_g380 );
			float4 ifLocalVar51_g377 = 0;
			if( temp_output_52_0_g377 == 3.0 )
				ifLocalVar51_g377 = localAudioLinkLerp1_g380;
			float4 color111_g377 = IsGammaSpace() ? float4( 1, 1, 1, 0 ) : float4( 1, 1, 1, 0 );
			float4 ifLocalVar110_g377 = 0;
			if( temp_output_52_0_g377 == 4.0 )
				ifLocalVar110_g377 = color111_g377;
			float3 hsvTorgb116_g377 = HSVToRGB( float3(temp_output_55_0_g377,1.0,1.0) );
			float3 ifLocalVar117_g377 = 0;
			if( temp_output_52_0_g377 == 5.0 )
				ifLocalVar117_g377 = hsvTorgb116_g377;
			float4 temp_output_53_0_g377 = ( ifLocalVar49_g377 + ifLocalVar79_g377 + ifLocalVar50_g377 + ifLocalVar51_g377 + ifLocalVar110_g377 + float4( ifLocalVar117_g377 , 0.0 ) );
			float4 temp_output_2_0_g383 = temp_output_53_0_g377;
			float4 ifLocalVar107_g377 = 0;
			if( temp_output_106_0_g377 == 0.0 )
				ifLocalVar107_g377 = ( ( ( break5_g383.r * 0.2 ) + ( break5_g383.g * 0.7 ) + ( break5_g383.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g383 * temp_output_2_0_g383 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g383 ) * ( 1.0 - temp_output_2_0_g383 ) ) ) );
			float4 ifLocalVar108_g377 = 0;
			if( temp_output_106_0_g377 == 1.0 )
				ifLocalVar108_g377 = ( temp_output_8_0_g377 * temp_output_53_0_g377 );
			float4 ifLocalVar112_g377 = 0;
			if( temp_output_106_0_g377 == 2.0 )
				ifLocalVar112_g377 = temp_output_53_0_g377;
			float localIfAudioLinkv2Exists1_g376 = IfAudioLinkv2Exists1_g376();
			float4 lerpResult55_g375 = lerp( float4( 0,0,0,0 ) , ( _QuantumGlowColor * ( (( _QBandEnable1 )?( ( _QGlowColorBand1 * ( GlowMap130_g375 * ( ifLocalVar107_g393 + ifLocalVar108_g393 + ifLocalVar112_g393 ) ) * _QuantumGlowMultiply1 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable2 )?( ( _QGlowColorBand2 * ( GlowMap232_g375 * ( ifLocalVar107_g401 + ifLocalVar108_g401 + ifLocalVar112_g401 ) ) * _QuantumGlowMultiply2 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable3 )?( ( _QGlowColorBand3 * ( GlowMap331_g375 * ( ifLocalVar107_g385 + ifLocalVar108_g385 + ifLocalVar112_g385 ) ) * _QuantumGlowMultiply3 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable4 )?( ( _QGlowColorBand4 * ( GlowMap433_g375 * ( ifLocalVar107_g377 + ifLocalVar108_g377 + ifLocalVar112_g377 ) ) * _QuantumGlowMultiply4 ) ):( float4( 0,0,0,0 ) )) ) * _QuantumGlowMultiplyGlobal ) , localIfAudioLinkv2Exists1_g376);
			float localLightVolumesEnabled2_g417 = LightVolumesEnabled(  );
			float3 normalizeResult3_g411 = normalize( (WorldNormalVector( i , Normal64 )) );
			float3 World_Normal53_g411 = normalizeResult3_g411;
			float3 worldNormal2_g416 = World_Normal53_g411;
			float3 appendResult13_g411 = (float3(unity_SHAr.w , unity_SHAg.w , unity_SHAb.w));
			float localLightVolumeSH1_g413 = ( 0.0 );
			float3 temp_output_6_0_g413 = ase_positionWS;
			float3 worldPos1_g413 = temp_output_6_0_g413;
			float3 L01_g413 = float3( 0,0,0 );
			float3 L1r1_g413 = float3( 0,0,0 );
			float3 L1g1_g413 = float3( 0,0,0 );
			float3 L1b1_g413 = float3( 0,0,0 );
			float3 temp_output_5_0_g411 = ( _LightVolumesBias * World_Normal53_g411 );
			float3 temp_output_17_0_g413 = temp_output_5_0_g411;
			float3 worldPosOffset1_g413 = temp_output_17_0_g413;
			LightVolumeSH( worldPos1_g413 , L01_g413 , L1r1_g413 , L1g1_g413 , L1b1_g413 , worldPosOffset1_g413 );
			float localLightVolumeSH1_g412 = ( 0.0 );
			float3 temp_output_6_0_g412 = ase_positionWS;
			float3 worldPos1_g412 = temp_output_6_0_g412;
			float3 L01_g412 = float3( 0,0,0 );
			float3 L1r1_g412 = float3( 0,0,0 );
			float3 L1g1_g412 = float3( 0,0,0 );
			float3 L1b1_g412 = float3( 0,0,0 );
			float3 temp_output_17_0_g412 = temp_output_5_0_g411;
			float3 worldPosOffset1_g412 = temp_output_17_0_g412;
			LightVolumeSH( worldPos1_g412 , L01_g412 , L1r1_g412 , L1g1_g412 , L1b1_g412 , worldPosOffset1_g412 );
			#ifdef LIGHTMAP_ON
				float3 staticSwitch17_g411 = L01_g412;
			#else
				float3 staticSwitch17_g411 = L01_g413;
			#endif
			#ifdef _LIGHTVOLUMESSUBSTRACTLIGHTPROBES_ON
				float3 staticSwitch129_g411 = ( staticSwitch17_g411 - appendResult13_g411 );
			#else
				float3 staticSwitch129_g411 = staticSwitch17_g411;
			#endif
			#ifdef _LIGHTVOLUMES_ON
				float3 staticSwitch21_g411 = staticSwitch129_g411;
			#else
				float3 staticSwitch21_g411 = appendResult13_g411;
			#endif
			float3 L025_g411 = staticSwitch21_g411;
			float3 L02_g416 = L025_g411;
			float3 temp_output_10_0_g411 = (unity_SHAr).xyz;
			#ifdef LIGHTMAP_ON
				float3 staticSwitch14_g411 = L1r1_g412;
			#else
				float3 staticSwitch14_g411 = L1r1_g413;
			#endif
			#ifdef _LIGHTVOLUMESSUBSTRACTLIGHTPROBES_ON
				float3 staticSwitch128_g411 = ( staticSwitch14_g411 - temp_output_10_0_g411 );
			#else
				float3 staticSwitch128_g411 = staticSwitch14_g411;
			#endif
			#ifdef _LIGHTVOLUMES_ON
				float3 staticSwitch18_g411 = staticSwitch128_g411;
			#else
				float3 staticSwitch18_g411 = temp_output_10_0_g411;
			#endif
			float3 L1r22_g411 = staticSwitch18_g411;
			float3 L1r2_g416 = L1r22_g411;
			float3 temp_output_11_0_g411 = (unity_SHAg).xyz;
			#ifdef LIGHTMAP_ON
				float3 staticSwitch15_g411 = L1g1_g412;
			#else
				float3 staticSwitch15_g411 = L1g1_g413;
			#endif
			#ifdef _LIGHTVOLUMESSUBSTRACTLIGHTPROBES_ON
				float3 staticSwitch123_g411 = ( staticSwitch15_g411 - temp_output_11_0_g411 );
			#else
				float3 staticSwitch123_g411 = staticSwitch15_g411;
			#endif
			#ifdef _LIGHTVOLUMES_ON
				float3 staticSwitch19_g411 = staticSwitch123_g411;
			#else
				float3 staticSwitch19_g411 = temp_output_11_0_g411;
			#endif
			float3 L1g23_g411 = staticSwitch19_g411;
			float3 L1g2_g416 = L1g23_g411;
			float3 temp_output_12_0_g411 = (unity_SHAb).xyz;
			#ifdef LIGHTMAP_ON
				float3 staticSwitch16_g411 = L1b1_g412;
			#else
				float3 staticSwitch16_g411 = L1b1_g413;
			#endif
			#ifdef _LIGHTVOLUMESSUBSTRACTLIGHTPROBES_ON
				float3 staticSwitch122_g411 = ( staticSwitch16_g411 - temp_output_12_0_g411 );
			#else
				float3 staticSwitch122_g411 = staticSwitch16_g411;
			#endif
			#ifdef _LIGHTVOLUMES_ON
				float3 staticSwitch20_g411 = staticSwitch122_g411;
			#else
				float3 staticSwitch20_g411 = temp_output_12_0_g411;
			#endif
			float3 L1b24_g411 = staticSwitch20_g411;
			float3 L1b2_g416 = L1b24_g411;
			float3 localLightVolumeEvaluate2_g416 = LightVolumeEvaluate( worldNormal2_g416 , L02_g416 , L1r2_g416 , L1g2_g416 , L1b2_g416 );
			float3 Albedo33_g411 = SpecularAlbedo72;
			float3 temp_output_82_0_g411 = ( localLightVolumeEvaluate2_g416 * Albedo33_g411 );
			float SpecularValue83 = tex2DNode18.g;
			float SpecularResult78 = ( SpecularValue83 * _SpecularCorretive * _Specular );
			float3 temp_cast_65 = (SpecularResult78).xxx;
			float3 lerpResult20 = lerp( temp_cast_65 , Albedo63 , MetallicResult68);
			float3 SpecularMap73 = lerpResult20;
			float3 SpecularMap34_g411 = SpecularMap73;
			float3 temp_output_138_0_g415 = SpecularMap34_g411;
			float3 f0157_g415 = temp_output_138_0_g415;
			float RoughnessValue84 = tex2DNode18.b;
			float Smoothness76 = ( 1.0 - ( RoughnessValue84 * _Roughness ) );
			float Smoothness35_g411 = Smoothness76;
			float temp_output_3_0_g415 = Smoothness35_g411;
			float smoothness157_g415 = temp_output_3_0_g415;
			float3 temp_output_2_0_g415 = World_Normal53_g411;
			float3 worldNormal157_g415 = temp_output_2_0_g415;
			float3 ase_viewDirSafeWS = Unity_SafeNormalize( ase_viewVectorWS );
			float3 temp_output_9_0_g415 = ase_viewDirSafeWS;
			float3 viewDir157_g415 = temp_output_9_0_g415;
			float3 temp_output_65_0_g415 = L025_g411;
			float3 L0157_g415 = temp_output_65_0_g415;
			float3 temp_output_1_0_g415 = L1r22_g411;
			float3 L1r157_g415 = temp_output_1_0_g415;
			float3 temp_output_36_0_g415 = L1g23_g411;
			float3 L1g157_g415 = temp_output_36_0_g415;
			float3 temp_output_37_0_g415 = L1b24_g411;
			float3 L1b157_g415 = temp_output_37_0_g415;
			float3 localLightVolumeSpecular157_g415 = LightVolumeSpecular( f0157_g415 , smoothness157_g415 , worldNormal157_g415 , viewDir157_g415 , L0157_g415 , L1r157_g415 , L1g157_g415 , L1b157_g415 );
			float3 temp_output_138_0_g414 = SpecularMap34_g411;
			float3 f0158_g414 = temp_output_138_0_g414;
			float temp_output_3_0_g414 = Smoothness35_g411;
			float smoothness158_g414 = temp_output_3_0_g414;
			float3 temp_output_2_0_g414 = World_Normal53_g411;
			float3 worldNormal158_g414 = temp_output_2_0_g414;
			float3 temp_output_9_0_g414 = ase_viewDirSafeWS;
			float3 viewDir158_g414 = temp_output_9_0_g414;
			float3 temp_output_65_0_g414 = L025_g411;
			float3 L0158_g414 = temp_output_65_0_g414;
			float3 temp_output_1_0_g414 = L1r22_g411;
			float3 L1r158_g414 = temp_output_1_0_g414;
			float3 temp_output_36_0_g414 = L1g23_g411;
			float3 L1g158_g414 = temp_output_36_0_g414;
			float3 temp_output_37_0_g414 = L1b24_g411;
			float3 L1b158_g414 = temp_output_37_0_g414;
			float3 localLightVolumeSpecularDominant158_g414 = LightVolumeSpecularDominant( f0158_g414 , smoothness158_g414 , worldNormal158_g414 , viewDir158_g414 , L0158_g414 , L1r158_g414 , L1g158_g414 , L1b158_g414 );
			#ifdef _DOMINANTDIRSPECULARS_ON
				float3 staticSwitch38_g411 = localLightVolumeSpecularDominant158_g414;
			#else
				float3 staticSwitch38_g411 = localLightVolumeSpecular157_g415;
			#endif
			float AO56_g411 = 1.0;
			float3 Speculars40_g411 = ( staticSwitch38_g411 * AO56_g411 );
			#ifdef _SPECULARS_ON
				float3 staticSwitch84_g411 = ( temp_output_82_0_g411 + Speculars40_g411 );
			#else
				float3 staticSwitch84_g411 = temp_output_82_0_g411;
			#endif
			float3 IndirectAndSpeculars86_g411 = ( staticSwitch84_g411 * AO56_g411 );
			float3 ifLocalVar132_g411 = 0;
			if( localLightVolumesEnabled2_g417 > 0.0 )
				ifLocalVar132_g411 = ( _LightVolumesMultiplier * IndirectAndSpeculars86_g411 );
			#ifdef _Q_LIGHTVOLUMES_ON
				float3 staticSwitch247 = ifLocalVar132_g411;
			#else
				float3 staticSwitch247 = float3( 0,0,0 );
			#endif
			float4 Emission179 = ( ( float4( MainEmission88 , 0.0 ) + float4( MainEmission2217 , 0.0 ) + (( _QEnableGlobal )?( lerpResult55_g375 ):( float4( 0,0,0,0 ) )) ) + float4( staticSwitch247 , 0.0 ) );
			o.Emission = Emission179.rgb;
			o.Specular = SpecularMap73;
			o.Smoothness = Smoothness76;
			o.Alpha = 1;
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
Version=19903
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;202;-2852.557,158;Inherit;False;2647.524;2444.887;Base Textures;55;204;195;203;64;208;207;14;15;205;206;12;88;63;201;84;10;200;9;11;82;83;199;56;5;18;53;52;4;16;55;210;211;212;213;214;215;216;217;219;220;225;226;227;222;223;224;230;231;238;241;240;239;232;233;249;;1,1,1,1;0;0
Node;AmplifyShaderEditor.IntNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;240;-1984,416;Inherit;False;Property;_MainUVIndex;MainUVIndex;118;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;239;-1808,384;Inherit;False;UVSelect;-1;;369;be9f0a2bbb8e0f340a2211011430e00a;0;2;3;SAMPLER2D;_Sampler3239;False;18;INT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;98;-144,1280;Inherit;False;852;339;Specular Color;5;36;50;86;78;38;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;83;-816,1312;Inherit;False;SpecularValue;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;222;-1600,384;Inherit;False;MainUV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;86;-96,1328;Inherit;False;83;SpecularValue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;50;-96,1504;Inherit;False;Property;_Specular;Specular;33;0;Create;False;0;0;0;False;0;False;0.5;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;36;-96,1424;Inherit;False;Property;_SpecularCorretive;Specular Corretive;32;0;Create;False;0;0;0;False;0;False;0.1;0.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;223;-2000,528;Inherit;False;222;MainUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;55;-1936,1552;Inherit;True;Property;_EmissionMap;Emission Map;22;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;white;Auto;Texture2D;False;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;210;-1968,2000;Inherit;True;Property;_EmissionMap2;Emission Map 2;23;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;black;Auto;Texture2D;False;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;227;-1648,1616;Inherit;False;224;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;238;-1712,2080;Inherit;False;224;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;95;-144,1712;Inherit;False;1044;259;Roughness;5;37;87;39;42;76;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;38;240,1328;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;84;-816,1392;Inherit;False;RoughnessValue;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;230;-1808,528;Inherit;False;UVHandling;3;;370;c17d079c1ac3cf440936a2325286a38a;0;1;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;16;-1936,1296;Inherit;True;Property;_PBRMap;Packed PBR Map;30;0;Create;False;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;False;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;226;-1664,1344;Inherit;False;224;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;52;-1392,1760;Inherit;False;Property;_EmissionColor;Emission Color;24;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;4,4,4,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;53;-1424,1552;Inherit;True;Property;_TextureSample5;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;211;-1456,2000;Inherit;True;Property;_TextureSample9;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;212;-1424,2208;Inherit;False;Property;_EmissionColor2;Emission Color2;25;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;4,4,4,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;92;-160,496;Inherit;False;788;323;Specular Map (dielectric = grayscale | metallic = albedo);5;70;67;79;20;73;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;78;464,1328;Inherit;False;SpecularResult;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;87;-96,1760;Inherit;False;84;RoughnessValue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;37;-96,1856;Inherit;False;Property;_Roughness;Roughness;35;0;Create;True;0;0;0;False;0;False;0.5;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;4;-2080,208;Inherit;True;Property;_MainTex;Main Tex;12;0;Create;True;0;0;0;False;0;False;None;a16b3161c8c05f54ba87ec06bfdd6b82;False;white;Auto;Texture2D;False;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;224;-1584,528;Inherit;False;MainUVFinal;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;18;-1424,1296;Inherit;True;Property;_TextureSample2;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;56;-1040,1552;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;199;-1040,1680;Inherit;False;Property;_Emission;Emission;115;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;213;-1168,2000;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;214;-1168,2112;Inherit;False;Property;_Emission2;Emission2;120;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;70;-112,704;Inherit;False;68;MetallicResult;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;67;-80,624;Inherit;False;63;Albedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;39;256,1760;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;79;-112,544;Inherit;False;78;SpecularResult;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;93;-160,960;Inherit;False;820;243;Metallic Map;4;34;35;85;68;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;5;-1616,208;Inherit;False;MainTexTex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;82;-816,1232;Inherit;False;MetallicValue;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;241;-1616,288;Inherit;False;224;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;200;-848,1552;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;215;-1008,2000;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;20;192,544;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;42;448,1760;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;85;-112,1008;Inherit;False;82;MetallicValue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;11;-1344,416;Inherit;False;Property;_Color;Color;21;0;Create;False;0;0;0;False;0;False;0,0,0,0;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;9;-1408,208;Inherit;True;Property;_TextureSample0;Texture Sample 0;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;35;-112,1088;Inherit;False;Property;_Metallic;Metallic;31;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;201;-704,1552;Inherit;False;Property;_EnableEmission;EnableEmission;114;0;Create;True;0;0;0;False;0;False;0;True;Create;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;216;-864,2000;Inherit;False;Property;_EnableEmission2;EnableEmission2;117;0;Create;True;0;0;0;False;0;False;0;True;Create;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;76;656,1760;Inherit;False;Smoothness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;73;384,544;Inherit;False;SpecularMap;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IntNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;232;-2112,1104;Inherit;False;Property;_DetailUVIndex;DetailUVIndex;122;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;34;192,1008;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;10;-928,208;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;88;-480,1552;Inherit;False;MainEmission;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;217;-656,2000;Inherit;False;MainEmission2;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;244;48,2832;Inherit;False;76;Smoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;245;48,2912;Inherit;False;64;Normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;242;16,2672;Inherit;False;72;SpecularAlbedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;243;48,2752;Inherit;False;73;SpecularMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;206;-2144,896;Inherit;True;Property;_DetailNormalMap;Detail Normal Map;27;0;Create;False;0;0;0;False;0;False;None;aef25913bc0271f498e5006238d33577;True;bump;Auto;Texture2D;False;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;233;-1840,960;Inherit;False;UVSelect;-1;;372;be9f0a2bbb8e0f340a2211011430e00a;0;2;3;SAMPLER2D;_Sampler3250;False;18;INT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexturePropertyNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;12;-1920,656;Inherit;True;Property;_BumpMap;NormalMap;26;0;Create;False;0;0;0;False;0;False;None;aef25913bc0271f498e5006238d33577;True;bump;Auto;Texture2D;False;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;15;-1696,768;Inherit;False;Property;_BumpScale;Normal Scale;28;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;205;-1856,1120;Inherit;False;Property;_DetailNormalMapScale;Detail Normal Map Scale;29;0;Create;False;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;225;-1648,688;Inherit;False;224;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;91;-160,160;Inherit;False;820;243;Specular albedo (metallic = black);4;66;69;19;72;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;68;416,1008;Inherit;False;MetallicResult;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;63;-736,208;Inherit;False;Albedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;89;16,2224;Inherit;False;88;MainEmission;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;209;48,2400;Inherit;False;QuatumGlow;36;;375;7730a8711ab108044bac907ea573069c;0;0;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;218;16,2304;Inherit;False;217;MainEmission2;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;246;272,2672;Inherit;False;LightVolumesSpecularConnector;13;;411;e7830579c7edaa2489fdbf704cb14f73;0;5;32;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;31;FLOAT;0;False;1;FLOAT3;0,0,0;False;90;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;14;-1408,656;Inherit;True;Property;_TextureSample1;Texture Sample 1;3;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;207;-1408,896;Inherit;True;Property;_TextureSample8;Texture Sample 1;3;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;66;-96,208;Inherit;False;63;Albedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;69;-112,288;Inherit;False;68;MetallicResult;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;176;272,2224;Inherit;True;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;247;592,2656;Inherit;False;Property;_Q_LightVolumes;Q_LightVolumes;119;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendNormalsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;208;-1024,656;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;19;160,208;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;248;912,2224;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;249;-768,656;Inherit;False;NormalMode;0;;513;6f5fb00256a34c94fb3861e426d1fe24;0;1;9;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;72;416,208;Inherit;False;SpecularAlbedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;97;912,160;Inherit;False;660;675;Output;6;77;75;65;74;81;0;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;179;1152,2224;Inherit;False;Emission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;64;-528,656;Inherit;False;Normal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;77;992,560;Inherit;False;76;Smoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;74;960,208;Inherit;False;72;SpecularAlbedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;65;992,288;Inherit;False;64;Normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;81;960,384;Inherit;False;179;Emission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;203;-2624,336;Inherit;False;Property;_ShowRendering;ShowRendering;116;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;195;-2624,240;Inherit;False;Property;_ShowMain;ShowMain;113;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;204;-2800,336;Inherit;False;Property;_Culling;Culling;34;1;[Enum];Create;False;0;1;Option1;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;219;-2816,528;Inherit;False;Property;_ShaderType;ShaderType;112;0;Create;True;0;0;0;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;220;-2816,432;Inherit;False;Property;_RenderType;RenderType;111;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;231;-2608,432;Inherit;False;Property;_ShowParallax;ShowParallax;121;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;75;992,464;Inherit;False;73;SpecularMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;0;1296,336;Float;False;True;-1;4;Saphi.QuantumShader.QuantumShaderUI;0;0;StandardSpecular;Saphi/QuantumShaderPackedPBR;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;;0;False;;False;0;False;;0;False;;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;All;12;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;0;0;False;;0;False;;0;0;False;;0;False;;0;False;;0;False;;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;;-1;-1;-1;-1;0;False;0;0;True;_Culling;-1;0;False;;1;Include;;True;1ec20832dfbb48343b8e0764e0864276;Custom;False;0;0;;0;0;False;0.1;False;;0;False;;False;17;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;16;FLOAT4;0,0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;239;3;4;0
WireConnection;239;18;240;0
WireConnection;83;0;18;2
WireConnection;222;0;239;0
WireConnection;38;0;86;0
WireConnection;38;1;36;0
WireConnection;38;2;50;0
WireConnection;84;0;18;3
WireConnection;230;1;223;0
WireConnection;53;0;55;0
WireConnection;53;1;227;0
WireConnection;211;0;210;0
WireConnection;211;1;238;0
WireConnection;78;0;38;0
WireConnection;224;0;230;0
WireConnection;18;0;16;0
WireConnection;18;1;226;0
WireConnection;56;0;53;5
WireConnection;56;1;52;5
WireConnection;213;0;211;5
WireConnection;213;1;212;5
WireConnection;39;0;87;0
WireConnection;39;1;37;0
WireConnection;5;0;4;0
WireConnection;82;0;18;1
WireConnection;200;0;56;0
WireConnection;200;1;199;0
WireConnection;215;0;213;0
WireConnection;215;1;214;0
WireConnection;20;0;79;0
WireConnection;20;1;67;0
WireConnection;20;2;70;0
WireConnection;42;0;39;0
WireConnection;9;0;5;0
WireConnection;9;1;241;0
WireConnection;201;1;200;0
WireConnection;216;1;215;0
WireConnection;76;0;42;0
WireConnection;73;0;20;0
WireConnection;34;0;85;0
WireConnection;34;1;35;0
WireConnection;10;0;9;5
WireConnection;10;1;11;5
WireConnection;88;0;201;0
WireConnection;217;0;216;0
WireConnection;233;3;206;0
WireConnection;233;18;232;0
WireConnection;68;0;34;0
WireConnection;63;0;10;0
WireConnection;246;32;242;0
WireConnection;246;30;243;0
WireConnection;246;31;244;0
WireConnection;246;1;245;0
WireConnection;14;0;12;0
WireConnection;14;1;225;0
WireConnection;14;5;15;0
WireConnection;207;0;206;0
WireConnection;207;1;233;0
WireConnection;207;5;205;0
WireConnection;176;0;89;0
WireConnection;176;1;218;0
WireConnection;176;2;209;0
WireConnection;247;0;246;0
WireConnection;208;0;14;0
WireConnection;208;1;207;0
WireConnection;19;0;66;0
WireConnection;19;2;69;0
WireConnection;248;0;176;0
WireConnection;248;1;247;0
WireConnection;249;9;208;0
WireConnection;72;0;19;0
WireConnection;179;0;248;0
WireConnection;64;0;249;0
WireConnection;0;0;74;0
WireConnection;0;1;65;0
WireConnection;0;2;81;0
WireConnection;0;3;75;0
WireConnection;0;4;77;0
ASEEND*/
//CHKSM=3705F2162248CB6FC35EFBDB68E30035941723D9