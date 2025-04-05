// Made with Amplify Shader Editor v1.9.8.1
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Saphi/QuantumShaderPackedPBRCutout"
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
		[HDR]_EmissionColor2("Emission Color2", Color) = (0,0,0,0)
		[HDR]_EmissionColor("Emission Color", Color) = (0,0,0,0)
		_BumpMap("NormalMap", 2D) = "bump" {}
		_DetailNormalMap("Detail Normal Map", 2D) = "bump" {}
		_BumpScale("Normal Scale", Range( 0 , 1)) = 1
		_Cutoff("Cutoff", Range( 0 , 1)) = 0.5
		_DetailNormalMapScale("Detail Normal Map Scale", Range( 0 , 1)) = 1
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
		[Toggle]_UseUVAsDirection("UseUVAsDirection", Float) = 0
		[HideInInspector] _texcoord2( "", 2D ) = "white" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] _texcoord4( "", 2D ) = "white" {}
		[HideInInspector] _texcoord3( "", 2D ) = "white" {}
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_QDirectionUVIndex("DirectionUVIndex", Int) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_QGlowMapUVIndex("GlowMapUVIndex", Int) = 0
		_RenderType("RenderType", Float) = 1
		_ShaderType("ShaderType", Float) = 2
		_ShowMain("ShowMain", Float) = 0
		[Toggle]_EnableEmission("EnableEmission", Float) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_AlphaUVIndex("AlphaUVIndex", Int) = 0
		_Emission("Emission", Float) = 1
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_MainUVIndex("MainUVIndex", Int) = 0
		[Toggle]_EnableEmission2("EnableEmission2", Float) = 0
		_ShowRendering("ShowRendering", Float) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_DetailUVIndex("DetailUVIndex", Int) = 0
		_Emission2("Emission2", Float) = 1
		_ShowParallax("ShowParallax", Float) = 0
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
		uniform float _SpecularCorretive;
		uniform float _Specular;
		uniform float _Roughness;
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


		inline float AudioLinkLerp3_g401( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g398( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g395( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g399( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g396( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g397( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		float3 HSVToRGB( float3 c )
		{
			float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
			float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
			return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
		}


		inline float AudioLinkLerp3_g409( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g406( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g403( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g407( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g404( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g405( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g393( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g390( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g387( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g391( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g388( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g389( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g385( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g382( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g379( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g383( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g380( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g381( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		float IfAudioLinkv2Exists1_g377(  )
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
			float2 MainUV227 = lerpResult35_g369;
			float2 temp_output_1_0_g371 = MainUV227;
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
			float2 MainUVFinal228 = staticSwitch10_g371;
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
			float3 Normal64 = BlendNormals( UnpackScaleNormal( tex2D( _BumpMap, MainUVFinal228 ), _BumpScale ) , UnpackScaleNormal( tex2D( _DetailNormalMap, lerpResult35_g372 ), _DetailNormalMapScale ) );
			o.Normal = Normal64;
			float4 Albedo63 = ( tex2D( _MainTex, MainUVFinal228 ) * _Color );
			float4 tex2DNode18 = tex2D( _PBRMap, MainUVFinal228 );
			float MetallicValue82 = tex2DNode18.r;
			float MetallicResult68 = ( MetallicValue82 * _Metallic );
			float4 lerpResult19 = lerp( Albedo63 , float4( 0,0,0,0 ) , MetallicResult68);
			float4 SpecularAlbedo72 = lerpResult19;
			o.Albedo = SpecularAlbedo72.rgb;
			float4 MainEmission88 = (( _EnableEmission )?( ( ( tex2D( _EmissionMap, MainUVFinal228 ) * _EmissionColor ) * _Emission ) ):( float4( 0,0,0,0 ) ));
			float4 MainEmission2222 = (( _EnableEmission2 )?( ( ( tex2D( _EmissionMap2, MainUVFinal228 ) * _EmissionColor2 ) * _Emission2 ) ):( float4( 0,0,0,0 ) ));
			float2 uv_QGlowMap = i.uv_texcoord * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			float2 uv2_QGlowMap = i.uv2_texcoord2 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			int temp_output_18_0_g411 = _QGlowMapUVIndex;
			float2 lerpResult22_g411 = lerp( uv_QGlowMap , uv2_QGlowMap , (float)saturate( temp_output_18_0_g411 ));
			float2 uv3_QGlowMap = i.uv3_texcoord3 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			int temp_output_26_0_g411 = ( temp_output_18_0_g411 - 1 );
			float2 lerpResult25_g411 = lerp( lerpResult22_g411 , uv3_QGlowMap , (float)saturate( temp_output_26_0_g411 ));
			float2 uv4_QGlowMap = i.uv4_texcoord4 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			int temp_output_31_0_g411 = ( temp_output_26_0_g411 - 1 );
			float2 lerpResult29_g411 = lerp( lerpResult25_g411 , uv4_QGlowMap , (float)saturate( temp_output_31_0_g411 ));
			float2 uv5_QGlowMap = i.ase_texcoord5 * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			float2 lerpResult35_g411 = lerp( lerpResult29_g411 , uv5_QGlowMap.xy , (float)saturate( ( temp_output_31_0_g411 - 1 ) ));
			float4 GlowMap7_g376 = tex2D( _QGlowMap, lerpResult35_g411 );
			float4 break12_g376 = GlowMap7_g376;
			float GlowMap130_g376 = break12_g376.r;
			int temp_output_106_0_g394 = _QBlendMode1;
			int temp_output_27_0_g394 = _QBand1;
			int Band3_g401 = temp_output_27_0_g394;
			float2 uv_QDirection = i.uv_texcoord * _QDirection_ST.xy + _QDirection_ST.zw;
			float2 uv2_QDirection = i.uv2_texcoord2 * _QDirection_ST.xy + _QDirection_ST.zw;
			int temp_output_18_0_g410 = _QDirectionUVIndex;
			float2 lerpResult22_g410 = lerp( uv_QDirection , uv2_QDirection , (float)saturate( temp_output_18_0_g410 ));
			float2 uv3_QDirection = i.uv3_texcoord3 * _QDirection_ST.xy + _QDirection_ST.zw;
			int temp_output_26_0_g410 = ( temp_output_18_0_g410 - 1 );
			float2 lerpResult25_g410 = lerp( lerpResult22_g410 , uv3_QDirection , (float)saturate( temp_output_26_0_g410 ));
			float2 uv4_QDirection = i.uv4_texcoord4 * _QDirection_ST.xy + _QDirection_ST.zw;
			int temp_output_31_0_g410 = ( temp_output_26_0_g410 - 1 );
			float2 lerpResult29_g410 = lerp( lerpResult25_g410 , uv4_QDirection , (float)saturate( temp_output_31_0_g410 ));
			float2 uv5_QDirection = i.ase_texcoord5 * _QDirection_ST.xy + _QDirection_ST.zw;
			float2 lerpResult35_g410 = lerp( lerpResult29_g410 , uv5_QDirection.xy , (float)saturate( ( temp_output_31_0_g410 - 1 ) ));
			float2 temp_output_288_0_g376 = lerpResult35_g410;
			float4 DirectionMap5_g376 = tex2D( _QDirection, temp_output_288_0_g376 );
			float2 break287_g376 = temp_output_288_0_g376;
			float Direction11_g376 = (( _UseUVAsDirection )?( (( _UseUVAsDirectionUV )?( break287_g376.y ):( break287_g376.x )) ):( DirectionMap5_g376.r ));
			float temp_output_1_0_g394 = (( _QInvertDirection1 )?( ( 1.0 - Direction11_g376 ) ):( Direction11_g376 ));
			float temp_output_5_0_g394 = ( _QHistory1 * temp_output_1_0_g394 );
			float Delay3_g401 = (( _QSmoothHistory )?( temp_output_5_0_g394 ):( floor( temp_output_5_0_g394 ) ));
			float localAudioLinkLerp3_g401 = AudioLinkLerp3_g401( Band3_g401 , Delay3_g401 );
			float temp_output_8_0_g394 = localAudioLinkLerp3_g401;
			float4 temp_cast_20 = (temp_output_8_0_g394).xxxx;
			float4 temp_output_1_0_g400 = temp_cast_20;
			float4 break5_g400 = temp_output_1_0_g400;
			int temp_output_52_0_g394 = _QType1;
			float temp_output_29_0_g394 = _QColorOffset1;
			int Band6_g398 = temp_output_27_0_g394;
			int Mode6_g398 = ( ( (int)_QColorRotationMode1 * 2 ) + (int)_QColorRotationSpeed1 );
			int localAudioLinkDecodeDataAsUInt6_g398 = AudioLinkDecodeDataAsUInt6_g398( Band6_g398 , Mode6_g398 );
			float temp_output_55_0_g394 = ( ( ( localAudioLinkDecodeDataAsUInt6_g398 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g394 = ( temp_output_55_0_g394 * (int)(( _QUseColorRotation1 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g394 = _QEffectScale1;
			int Index1_g395 = (int)floor( ( frac( ( ( temp_output_29_0_g394 + temp_output_95_0_g394 ) * temp_output_103_0_g394 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g395 = AudioLinkData1_g395( Index1_g395 );
			float4 ifLocalVar49_g394 = 0;
			if( temp_output_52_0_g394 == 0.0 )
				ifLocalVar49_g394 = localAudioLinkData1_g395;
			int Index1_g399 = (int)floor( ( frac( ( ( temp_output_29_0_g394 + temp_output_95_0_g394 + temp_output_1_0_g394 ) * temp_output_103_0_g394 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g399 = AudioLinkData1_g399( Index1_g399 );
			float4 ifLocalVar79_g394 = 0;
			if( temp_output_52_0_g394 == 1.0 )
				ifLocalVar79_g394 = localAudioLinkData1_g399;
			float Position1_g396 = saturate( frac( ( ( temp_output_8_0_g394 + temp_output_29_0_g394 + temp_output_95_0_g394 ) * temp_output_103_0_g394 ) ) );
			float4 localAudioLinkLerp1_g396 = AudioLinkLerp1_g396( Position1_g396 );
			float4 ifLocalVar50_g394 = 0;
			if( temp_output_52_0_g394 == 2.0 )
				ifLocalVar50_g394 = localAudioLinkLerp1_g396;
			float Position1_g397 = saturate( frac( ( ( temp_output_29_0_g394 + temp_output_1_0_g394 + temp_output_95_0_g394 ) * temp_output_103_0_g394 ) ) );
			float4 localAudioLinkLerp1_g397 = AudioLinkLerp1_g397( Position1_g397 );
			float4 ifLocalVar51_g394 = 0;
			if( temp_output_52_0_g394 == 3.0 )
				ifLocalVar51_g394 = localAudioLinkLerp1_g397;
			float4 color111_g394 = IsGammaSpace() ? float4(1,1,1,0) : float4(1,1,1,0);
			float4 ifLocalVar110_g394 = 0;
			if( temp_output_52_0_g394 == 4.0 )
				ifLocalVar110_g394 = color111_g394;
			float3 hsvTorgb116_g394 = HSVToRGB( float3(temp_output_55_0_g394,1.0,1.0) );
			float3 ifLocalVar117_g394 = 0;
			if( temp_output_52_0_g394 == 5.0 )
				ifLocalVar117_g394 = hsvTorgb116_g394;
			float4 temp_output_53_0_g394 = ( ifLocalVar49_g394 + ifLocalVar79_g394 + ifLocalVar50_g394 + ifLocalVar51_g394 + ifLocalVar110_g394 + float4( ifLocalVar117_g394 , 0.0 ) );
			float4 temp_output_2_0_g400 = temp_output_53_0_g394;
			float4 ifLocalVar107_g394 = 0;
			if( temp_output_106_0_g394 == 0.0 )
				ifLocalVar107_g394 = ( ( ( break5_g400.r * 0.2 ) + ( break5_g400.g * 0.7 ) + ( break5_g400.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g400 * temp_output_2_0_g400 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g400 ) * ( 1.0 - temp_output_2_0_g400 ) ) ) );
			float4 ifLocalVar108_g394 = 0;
			if( temp_output_106_0_g394 == 1.0 )
				ifLocalVar108_g394 = ( temp_output_8_0_g394 * temp_output_53_0_g394 );
			float4 ifLocalVar112_g394 = 0;
			if( temp_output_106_0_g394 == 2.0 )
				ifLocalVar112_g394 = temp_output_53_0_g394;
			float GlowMap232_g376 = break12_g376.g;
			int temp_output_106_0_g402 = _QBlendMode2;
			int temp_output_27_0_g402 = _QBand2;
			int Band3_g409 = temp_output_27_0_g402;
			float temp_output_1_0_g402 = (( _QInvertDirection2 )?( ( 1.0 - Direction11_g376 ) ):( Direction11_g376 ));
			float temp_output_5_0_g402 = ( _QHistory2 * temp_output_1_0_g402 );
			float Delay3_g409 = (( _QSmoothHistory )?( temp_output_5_0_g402 ):( floor( temp_output_5_0_g402 ) ));
			float localAudioLinkLerp3_g409 = AudioLinkLerp3_g409( Band3_g409 , Delay3_g409 );
			float temp_output_8_0_g402 = localAudioLinkLerp3_g409;
			float4 temp_cast_35 = (temp_output_8_0_g402).xxxx;
			float4 temp_output_1_0_g408 = temp_cast_35;
			float4 break5_g408 = temp_output_1_0_g408;
			int temp_output_52_0_g402 = _QType2;
			float temp_output_29_0_g402 = _QColorOffset2;
			int Band6_g406 = temp_output_27_0_g402;
			int Mode6_g406 = ( ( (int)_QColorRotationMode2 * 2 ) + (int)_QColorRotationSpeed2 );
			int localAudioLinkDecodeDataAsUInt6_g406 = AudioLinkDecodeDataAsUInt6_g406( Band6_g406 , Mode6_g406 );
			float temp_output_55_0_g402 = ( ( ( localAudioLinkDecodeDataAsUInt6_g406 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g402 = ( temp_output_55_0_g402 * (int)(( _QUseColorRotation2 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g402 = _QEffectScale2;
			int Index1_g403 = (int)floor( ( frac( ( ( temp_output_29_0_g402 + temp_output_95_0_g402 ) * temp_output_103_0_g402 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g403 = AudioLinkData1_g403( Index1_g403 );
			float4 ifLocalVar49_g402 = 0;
			if( temp_output_52_0_g402 == 0.0 )
				ifLocalVar49_g402 = localAudioLinkData1_g403;
			int Index1_g407 = (int)floor( ( frac( ( ( temp_output_29_0_g402 + temp_output_95_0_g402 + temp_output_1_0_g402 ) * temp_output_103_0_g402 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g407 = AudioLinkData1_g407( Index1_g407 );
			float4 ifLocalVar79_g402 = 0;
			if( temp_output_52_0_g402 == 1.0 )
				ifLocalVar79_g402 = localAudioLinkData1_g407;
			float Position1_g404 = saturate( frac( ( ( temp_output_8_0_g402 + temp_output_29_0_g402 + temp_output_95_0_g402 ) * temp_output_103_0_g402 ) ) );
			float4 localAudioLinkLerp1_g404 = AudioLinkLerp1_g404( Position1_g404 );
			float4 ifLocalVar50_g402 = 0;
			if( temp_output_52_0_g402 == 2.0 )
				ifLocalVar50_g402 = localAudioLinkLerp1_g404;
			float Position1_g405 = saturate( frac( ( ( temp_output_29_0_g402 + temp_output_1_0_g402 + temp_output_95_0_g402 ) * temp_output_103_0_g402 ) ) );
			float4 localAudioLinkLerp1_g405 = AudioLinkLerp1_g405( Position1_g405 );
			float4 ifLocalVar51_g402 = 0;
			if( temp_output_52_0_g402 == 3.0 )
				ifLocalVar51_g402 = localAudioLinkLerp1_g405;
			float4 color111_g402 = IsGammaSpace() ? float4(1,1,1,0) : float4(1,1,1,0);
			float4 ifLocalVar110_g402 = 0;
			if( temp_output_52_0_g402 == 4.0 )
				ifLocalVar110_g402 = color111_g402;
			float3 hsvTorgb116_g402 = HSVToRGB( float3(temp_output_55_0_g402,1.0,1.0) );
			float3 ifLocalVar117_g402 = 0;
			if( temp_output_52_0_g402 == 5.0 )
				ifLocalVar117_g402 = hsvTorgb116_g402;
			float4 temp_output_53_0_g402 = ( ifLocalVar49_g402 + ifLocalVar79_g402 + ifLocalVar50_g402 + ifLocalVar51_g402 + ifLocalVar110_g402 + float4( ifLocalVar117_g402 , 0.0 ) );
			float4 temp_output_2_0_g408 = temp_output_53_0_g402;
			float4 ifLocalVar107_g402 = 0;
			if( temp_output_106_0_g402 == 0.0 )
				ifLocalVar107_g402 = ( ( ( break5_g408.r * 0.2 ) + ( break5_g408.g * 0.7 ) + ( break5_g408.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g408 * temp_output_2_0_g408 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g408 ) * ( 1.0 - temp_output_2_0_g408 ) ) ) );
			float4 ifLocalVar108_g402 = 0;
			if( temp_output_106_0_g402 == 1.0 )
				ifLocalVar108_g402 = ( temp_output_8_0_g402 * temp_output_53_0_g402 );
			float4 ifLocalVar112_g402 = 0;
			if( temp_output_106_0_g402 == 2.0 )
				ifLocalVar112_g402 = temp_output_53_0_g402;
			float GlowMap331_g376 = break12_g376.b;
			int temp_output_106_0_g386 = _QBlendMode3;
			int temp_output_27_0_g386 = _QBand3;
			int Band3_g393 = temp_output_27_0_g386;
			float temp_output_1_0_g386 = (( _QInvertDirection3 )?( ( 1.0 - Direction11_g376 ) ):( Direction11_g376 ));
			float temp_output_5_0_g386 = ( _QHistory3 * temp_output_1_0_g386 );
			float Delay3_g393 = (( _QSmoothHistory )?( temp_output_5_0_g386 ):( floor( temp_output_5_0_g386 ) ));
			float localAudioLinkLerp3_g393 = AudioLinkLerp3_g393( Band3_g393 , Delay3_g393 );
			float temp_output_8_0_g386 = localAudioLinkLerp3_g393;
			float4 temp_cast_50 = (temp_output_8_0_g386).xxxx;
			float4 temp_output_1_0_g392 = temp_cast_50;
			float4 break5_g392 = temp_output_1_0_g392;
			int temp_output_52_0_g386 = _QType3;
			float temp_output_29_0_g386 = _QColorOffset3;
			int Band6_g390 = temp_output_27_0_g386;
			int Mode6_g390 = ( ( (int)_QColorRotationMode3 * 2 ) + (int)_QColorRotationSpeed3 );
			int localAudioLinkDecodeDataAsUInt6_g390 = AudioLinkDecodeDataAsUInt6_g390( Band6_g390 , Mode6_g390 );
			float temp_output_55_0_g386 = ( ( ( localAudioLinkDecodeDataAsUInt6_g390 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g386 = ( temp_output_55_0_g386 * (int)(( _QUseColorRotation3 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g386 = _QEffectScale3;
			int Index1_g387 = (int)floor( ( frac( ( ( temp_output_29_0_g386 + temp_output_95_0_g386 ) * temp_output_103_0_g386 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g387 = AudioLinkData1_g387( Index1_g387 );
			float4 ifLocalVar49_g386 = 0;
			if( temp_output_52_0_g386 == 0.0 )
				ifLocalVar49_g386 = localAudioLinkData1_g387;
			int Index1_g391 = (int)floor( ( frac( ( ( temp_output_29_0_g386 + temp_output_95_0_g386 + temp_output_1_0_g386 ) * temp_output_103_0_g386 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g391 = AudioLinkData1_g391( Index1_g391 );
			float4 ifLocalVar79_g386 = 0;
			if( temp_output_52_0_g386 == 1.0 )
				ifLocalVar79_g386 = localAudioLinkData1_g391;
			float Position1_g388 = saturate( frac( ( ( temp_output_8_0_g386 + temp_output_29_0_g386 + temp_output_95_0_g386 ) * temp_output_103_0_g386 ) ) );
			float4 localAudioLinkLerp1_g388 = AudioLinkLerp1_g388( Position1_g388 );
			float4 ifLocalVar50_g386 = 0;
			if( temp_output_52_0_g386 == 2.0 )
				ifLocalVar50_g386 = localAudioLinkLerp1_g388;
			float Position1_g389 = saturate( frac( ( ( temp_output_29_0_g386 + temp_output_1_0_g386 + temp_output_95_0_g386 ) * temp_output_103_0_g386 ) ) );
			float4 localAudioLinkLerp1_g389 = AudioLinkLerp1_g389( Position1_g389 );
			float4 ifLocalVar51_g386 = 0;
			if( temp_output_52_0_g386 == 3.0 )
				ifLocalVar51_g386 = localAudioLinkLerp1_g389;
			float4 color111_g386 = IsGammaSpace() ? float4(1,1,1,0) : float4(1,1,1,0);
			float4 ifLocalVar110_g386 = 0;
			if( temp_output_52_0_g386 == 4.0 )
				ifLocalVar110_g386 = color111_g386;
			float3 hsvTorgb116_g386 = HSVToRGB( float3(temp_output_55_0_g386,1.0,1.0) );
			float3 ifLocalVar117_g386 = 0;
			if( temp_output_52_0_g386 == 5.0 )
				ifLocalVar117_g386 = hsvTorgb116_g386;
			float4 temp_output_53_0_g386 = ( ifLocalVar49_g386 + ifLocalVar79_g386 + ifLocalVar50_g386 + ifLocalVar51_g386 + ifLocalVar110_g386 + float4( ifLocalVar117_g386 , 0.0 ) );
			float4 temp_output_2_0_g392 = temp_output_53_0_g386;
			float4 ifLocalVar107_g386 = 0;
			if( temp_output_106_0_g386 == 0.0 )
				ifLocalVar107_g386 = ( ( ( break5_g392.r * 0.2 ) + ( break5_g392.g * 0.7 ) + ( break5_g392.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g392 * temp_output_2_0_g392 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g392 ) * ( 1.0 - temp_output_2_0_g392 ) ) ) );
			float4 ifLocalVar108_g386 = 0;
			if( temp_output_106_0_g386 == 1.0 )
				ifLocalVar108_g386 = ( temp_output_8_0_g386 * temp_output_53_0_g386 );
			float4 ifLocalVar112_g386 = 0;
			if( temp_output_106_0_g386 == 2.0 )
				ifLocalVar112_g386 = temp_output_53_0_g386;
			float GlowMap433_g376 = break12_g376.a;
			int temp_output_106_0_g378 = _QBlendMode4;
			int temp_output_27_0_g378 = _QBand4;
			int Band3_g385 = temp_output_27_0_g378;
			float temp_output_1_0_g378 = (( _QInvertDirection4 )?( ( 1.0 - Direction11_g376 ) ):( Direction11_g376 ));
			float temp_output_5_0_g378 = ( _QHistory4 * temp_output_1_0_g378 );
			float Delay3_g385 = (( _QSmoothHistory )?( temp_output_5_0_g378 ):( floor( temp_output_5_0_g378 ) ));
			float localAudioLinkLerp3_g385 = AudioLinkLerp3_g385( Band3_g385 , Delay3_g385 );
			float temp_output_8_0_g378 = localAudioLinkLerp3_g385;
			float4 temp_cast_65 = (temp_output_8_0_g378).xxxx;
			float4 temp_output_1_0_g384 = temp_cast_65;
			float4 break5_g384 = temp_output_1_0_g384;
			int temp_output_52_0_g378 = _QType4;
			float temp_output_29_0_g378 = _QColorOffset4;
			int Band6_g382 = temp_output_27_0_g378;
			int Mode6_g382 = ( ( (int)_QColorRotationMode4 * 2 ) + (int)_QColorRotationSpeed4 );
			int localAudioLinkDecodeDataAsUInt6_g382 = AudioLinkDecodeDataAsUInt6_g382( Band6_g382 , Mode6_g382 );
			float temp_output_55_0_g378 = ( ( ( localAudioLinkDecodeDataAsUInt6_g382 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g378 = ( temp_output_55_0_g378 * (int)(( _QUseColorRotation4 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g378 = _QEffectScale4;
			int Index1_g379 = (int)floor( ( frac( ( ( temp_output_29_0_g378 + temp_output_95_0_g378 ) * temp_output_103_0_g378 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g379 = AudioLinkData1_g379( Index1_g379 );
			float4 ifLocalVar49_g378 = 0;
			if( temp_output_52_0_g378 == 0.0 )
				ifLocalVar49_g378 = localAudioLinkData1_g379;
			int Index1_g383 = (int)floor( ( frac( ( ( temp_output_29_0_g378 + temp_output_95_0_g378 + temp_output_1_0_g378 ) * temp_output_103_0_g378 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g383 = AudioLinkData1_g383( Index1_g383 );
			float4 ifLocalVar79_g378 = 0;
			if( temp_output_52_0_g378 == 1.0 )
				ifLocalVar79_g378 = localAudioLinkData1_g383;
			float Position1_g380 = saturate( frac( ( ( temp_output_8_0_g378 + temp_output_29_0_g378 + temp_output_95_0_g378 ) * temp_output_103_0_g378 ) ) );
			float4 localAudioLinkLerp1_g380 = AudioLinkLerp1_g380( Position1_g380 );
			float4 ifLocalVar50_g378 = 0;
			if( temp_output_52_0_g378 == 2.0 )
				ifLocalVar50_g378 = localAudioLinkLerp1_g380;
			float Position1_g381 = saturate( frac( ( ( temp_output_29_0_g378 + temp_output_1_0_g378 + temp_output_95_0_g378 ) * temp_output_103_0_g378 ) ) );
			float4 localAudioLinkLerp1_g381 = AudioLinkLerp1_g381( Position1_g381 );
			float4 ifLocalVar51_g378 = 0;
			if( temp_output_52_0_g378 == 3.0 )
				ifLocalVar51_g378 = localAudioLinkLerp1_g381;
			float4 color111_g378 = IsGammaSpace() ? float4(1,1,1,0) : float4(1,1,1,0);
			float4 ifLocalVar110_g378 = 0;
			if( temp_output_52_0_g378 == 4.0 )
				ifLocalVar110_g378 = color111_g378;
			float3 hsvTorgb116_g378 = HSVToRGB( float3(temp_output_55_0_g378,1.0,1.0) );
			float3 ifLocalVar117_g378 = 0;
			if( temp_output_52_0_g378 == 5.0 )
				ifLocalVar117_g378 = hsvTorgb116_g378;
			float4 temp_output_53_0_g378 = ( ifLocalVar49_g378 + ifLocalVar79_g378 + ifLocalVar50_g378 + ifLocalVar51_g378 + ifLocalVar110_g378 + float4( ifLocalVar117_g378 , 0.0 ) );
			float4 temp_output_2_0_g384 = temp_output_53_0_g378;
			float4 ifLocalVar107_g378 = 0;
			if( temp_output_106_0_g378 == 0.0 )
				ifLocalVar107_g378 = ( ( ( break5_g384.r * 0.2 ) + ( break5_g384.g * 0.7 ) + ( break5_g384.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g384 * temp_output_2_0_g384 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g384 ) * ( 1.0 - temp_output_2_0_g384 ) ) ) );
			float4 ifLocalVar108_g378 = 0;
			if( temp_output_106_0_g378 == 1.0 )
				ifLocalVar108_g378 = ( temp_output_8_0_g378 * temp_output_53_0_g378 );
			float4 ifLocalVar112_g378 = 0;
			if( temp_output_106_0_g378 == 2.0 )
				ifLocalVar112_g378 = temp_output_53_0_g378;
			float localIfAudioLinkv2Exists1_g377 = IfAudioLinkv2Exists1_g377();
			float4 lerpResult55_g376 = lerp( float4( 0,0,0,0 ) , ( _QuantumGlowColor * ( (( _QBandEnable1 )?( ( _QGlowColorBand1 * ( GlowMap130_g376 * ( ifLocalVar107_g394 + ifLocalVar108_g394 + ifLocalVar112_g394 ) ) * _QuantumGlowMultiply1 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable2 )?( ( _QGlowColorBand2 * ( GlowMap232_g376 * ( ifLocalVar107_g402 + ifLocalVar108_g402 + ifLocalVar112_g402 ) ) * _QuantumGlowMultiply2 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable3 )?( ( _QGlowColorBand3 * ( GlowMap331_g376 * ( ifLocalVar107_g386 + ifLocalVar108_g386 + ifLocalVar112_g386 ) ) * _QuantumGlowMultiply3 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable4 )?( ( _QGlowColorBand4 * ( GlowMap433_g376 * ( ifLocalVar107_g378 + ifLocalVar108_g378 + ifLocalVar112_g378 ) ) * _QuantumGlowMultiply4 ) ):( float4( 0,0,0,0 ) )) ) * _QuantumGlowMultiplyGlobal ) , localIfAudioLinkv2Exists1_g377);
			float4 Emission179 = ( MainEmission88 + MainEmission2222 + (( _QEnableGlobal )?( lerpResult55_g376 ):( float4( 0,0,0,0 ) )) );
			o.Emission = Emission179.rgb;
			float SpecularValue83 = tex2DNode18.g;
			float SpecularResult78 = ( SpecularValue83 * _SpecularCorretive * _Specular );
			float4 temp_cast_81 = (SpecularResult78).xxxx;
			float4 lerpResult20 = lerp( temp_cast_81 , Albedo63 , MetallicResult68);
			float4 SpecularMap73 = lerpResult20;
			o.Specular = SpecularMap73.rgb;
			float RoughnessValue84 = tex2DNode18.b;
			float Smoothness76 = ( 1.0 - ( RoughnessValue84 * _Roughness ) );
			o.Smoothness = Smoothness76;
			o.Alpha = 1;
			float2 uv_AlphaMap = i.uv_texcoord * _AlphaMap_ST.xy + _AlphaMap_ST.zw;
			float2 uv2_AlphaMap = i.uv2_texcoord2 * _AlphaMap_ST.xy + _AlphaMap_ST.zw;
			int temp_output_18_0_g373 = _AlphaUVIndex;
			float2 lerpResult22_g373 = lerp( uv_AlphaMap , uv2_AlphaMap , (float)saturate( temp_output_18_0_g373 ));
			float2 uv3_AlphaMap = i.uv3_texcoord3 * _AlphaMap_ST.xy + _AlphaMap_ST.zw;
			int temp_output_26_0_g373 = ( temp_output_18_0_g373 - 1 );
			float2 lerpResult25_g373 = lerp( lerpResult22_g373 , uv3_AlphaMap , (float)saturate( temp_output_26_0_g373 ));
			float2 uv4_AlphaMap = i.uv4_texcoord4 * _AlphaMap_ST.xy + _AlphaMap_ST.zw;
			int temp_output_31_0_g373 = ( temp_output_26_0_g373 - 1 );
			float2 lerpResult29_g373 = lerp( lerpResult25_g373 , uv4_AlphaMap , (float)saturate( temp_output_31_0_g373 ));
			float2 uv5_AlphaMap = i.ase_texcoord5 * _AlphaMap_ST.xy + _AlphaMap_ST.zw;
			float2 lerpResult35_g373 = lerp( lerpResult29_g373 , uv5_AlphaMap.xy , (float)saturate( ( temp_output_31_0_g373 - 1 ) ));
			float AlphaMap210 = tex2D( _AlphaMap, lerpResult35_g373 ).r;
			clip( AlphaMap210 - _Cutoff );
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
Node;AmplifyShaderEditor.CommentaryNode;202;-4329.88,158;Inherit;False;4084.335;3031.936;Base Textures;60;237;225;224;209;204;195;203;210;64;211;208;212;207;14;230;222;15;205;206;12;88;63;84;221;201;10;220;200;9;11;219;218;82;83;199;56;5;217;216;18;53;52;4;233;232;231;215;16;55;228;236;229;227;238;239;241;242;243;244;245;;1,1,1,1;0;0
Node;AmplifyShaderEditor.IntNode;242;-2016,448;Inherit;False;Property;_MainUVIndex;MainUVIndex;108;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.TexturePropertyNode;4;-2048,208;Inherit;True;Property;_MainTex;Main Tex;9;0;Create;True;0;0;0;False;0;False;None;a16b3161c8c05f54ba87ec06bfdd6b82;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.FunctionNode;243;-1824,432;Inherit;False;UVSelect;-1;;369;be9f0a2bbb8e0f340a2211011430e00a;0;2;3;SAMPLER2D;_Sampler3243;False;18;INT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;227;-1632,432;Inherit;False;MainUV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;229;-1968,576;Inherit;False;227;MainUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;236;-1760,576;Inherit;False;UVHandling;0;;370;c17d079c1ac3cf440936a2325286a38a;0;1;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;228;-1568,576;Inherit;False;MainUVFinal;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexturePropertyNode;55;-1936,1552;Inherit;True;Property;_EmissionMap;Emission Map;11;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;16;-1936,1296;Inherit;True;Property;_PBRMap;Packed PBR Map;21;0;Create;False;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;215;-1968,1984;Inherit;True;Property;_EmissionMap2;Emission Map 2;12;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode;231;-1648,1360;Inherit;False;228;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;232;-1648,1616;Inherit;False;228;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;233;-1680,2064;Inherit;False;228;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ColorNode;52;-1392,1760;Inherit;False;Property;_EmissionColor;Emission Color;15;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;4,4,4,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;53;-1424,1552;Inherit;True;Property;_TextureSample5;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;18;-1424,1296;Inherit;True;Property;_TextureSample2;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;216;-1456,1984;Inherit;True;Property;_TextureSample10;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;217;-1424,2192;Inherit;False;Property;_EmissionColor2;Emission Color2;14;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;4,4,4,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.CommentaryNode;98;-144,1280;Inherit;False;852;339;Specular Color;5;36;50;86;78;38;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;93;-160,960;Inherit;False;820;243;Metallic Map;4;34;35;85;68;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;5;-1616,208;Inherit;False;MainTexTex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;56;-1040,1552;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;199;-1040,1680;Inherit;False;Property;_Emission;Emission;107;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;83;-816,1312;Inherit;False;SpecularValue;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;82;-816,1232;Inherit;False;MetallicValue;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;218;-1168,1984;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;219;-1168,2096;Inherit;False;Property;_Emission2;Emission2;112;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;238;-1600,288;Inherit;False;228;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;86;-96,1328;Inherit;False;83;SpecularValue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;85;-112,1008;Inherit;False;82;MetallicValue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;50;-96,1504;Inherit;False;Property;_Specular;Specular;24;0;Create;False;0;0;0;False;0;False;0.5;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;36;-96,1424;Inherit;False;Property;_SpecularCorretive;Specular Corretive;23;0;Create;False;0;0;0;False;0;False;0.1;0.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;11;-1344,416;Inherit;False;Property;_Color;Color;10;0;Create;False;0;0;0;False;0;False;0,0,0,0;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;9;-1408,208;Inherit;True;Property;_TextureSample0;Texture Sample 0;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;200;-848,1552;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;35;-112,1088;Inherit;False;Property;_Metallic;Metallic;22;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;220;-1008,1984;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.IntNode;244;-2016,1088;Inherit;False;Property;_DetailUVIndex;DetailUVIndex;111;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.TexturePropertyNode;206;-2048,896;Inherit;True;Property;_DetailNormalMap;Detail Normal Map;17;0;Create;False;0;0;0;False;0;False;None;aef25913bc0271f498e5006238d33577;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.CommentaryNode;95;-144,1712;Inherit;False;1044;259;Roughness;5;37;87;39;42;76;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;38;240,1328;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;34;192,1008;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;10;-928,208;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;201;-704,1552;Inherit;False;Property;_EnableEmission;EnableEmission;105;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;221;-864,1984;Inherit;False;Property;_EnableEmission2;EnableEmission2;109;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;84;-816,1392;Inherit;False;RoughnessValue;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;241;-1924.434,2719.717;Inherit;False;Property;_AlphaUVIndex;AlphaUVIndex;106;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.FunctionNode;245;-1792,976;Inherit;False;UVSelect;-1;;372;be9f0a2bbb8e0f340a2211011430e00a;0;2;3;SAMPLER2D;_Sampler3245;False;18;INT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexturePropertyNode;212;-1936,2448;Inherit;True;Property;_AlphaMap;AlphaMap;13;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.CommentaryNode;92;-160,496;Inherit;False;788;323;Specular Map (dielectric = grayscale | metallic = albedo);5;70;67;79;20;73;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;91;-160,160;Inherit;False;820;243;Specular albedo (metallic = black);4;66;69;19;72;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;68;416,1008;Inherit;False;MetallicResult;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;78;464,1328;Inherit;False;SpecularResult;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;87;-96,1760;Inherit;False;84;RoughnessValue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;37;-96,1856;Inherit;False;Property;_Roughness;Roughness;26;0;Create;True;0;0;0;False;0;False;0.5;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;63;-736,208;Inherit;False;Albedo;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;88;-480,1552;Inherit;False;MainEmission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;12;-1920,656;Inherit;True;Property;_BumpMap;NormalMap;16;0;Create;False;0;0;0;False;0;False;None;aef25913bc0271f498e5006238d33577;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;15;-1696,768;Inherit;False;Property;_BumpScale;Normal Scale;18;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;222;-656,1984;Inherit;False;MainEmission2;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;230;-1648,672;Inherit;False;228;MainUVFinal;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;205;-1728,1088;Inherit;False;Property;_DetailNormalMapScale;Detail Normal Map Scale;20;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;239;-1716.434,2703.717;Inherit;False;UVSelect;-1;;373;be9f0a2bbb8e0f340a2211011430e00a;0;2;3;SAMPLER2D;_Sampler3239;False;18;INT;0;False;1;FLOAT2;0
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
Node;AmplifyShaderEditor.FunctionNode;214;-32,2384;Inherit;False;QuatumGlow;27;;376;7730a8711ab108044bac907ea573069c;0;0;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;20;192,544;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;19;160,208;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;42;448,1760;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendNormalsNode;208;-1024,656;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;176;192,2224;Inherit;True;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;211;-1424,2448;Inherit;True;Property;_TextureSample9;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.CommentaryNode;97;912,160;Inherit;False;660;675;Output;7;77;75;65;74;81;0;213;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;76;656,1760;Inherit;False;Smoothness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;72;416,208;Inherit;False;SpecularAlbedo;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;73;384,544;Inherit;False;SpecularMap;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;64;-768,656;Inherit;False;Normal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;179;416,2224;Inherit;False;Emission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;210;-848,2496;Inherit;False;AlphaMap;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;77;992,560;Inherit;False;76;Smoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;75;992,464;Inherit;False;73;SpecularMap;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;74;960,208;Inherit;False;72;SpecularAlbedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;65;992,288;Inherit;False;64;Normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;81;960,384;Inherit;False;179;Emission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;213;992,688;Inherit;False;210;AlphaMap;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;203;-2672,336;Inherit;False;Property;_ShowRendering;ShowRendering;110;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;195;-2672,240;Inherit;False;Property;_ShowMain;ShowMain;104;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;204;-2848,336;Inherit;False;Property;_Culling;Culling;25;1;[Enum];Create;False;0;1;Option1;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;209;-3024,240;Inherit;False;Property;_Cutoff;Cutoff;19;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;224;-2880,544;Inherit;False;Property;_ShaderType;ShaderType;103;0;Create;True;0;0;0;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;225;-2880,448;Inherit;False;Property;_RenderType;RenderType;102;0;Create;True;0;0;0;True;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;237;-2688,448;Inherit;False;Property;_ShowParallax;ShowParallax;113;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;1296,336;Float;False;True;-1;4;Saphi.QuantumShader.QuantumShaderUI;0;0;StandardSpecular;Saphi/QuantumShaderPackedPBRCutout;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;;0;False;;False;0;False;;0;False;;False;0;Masked;0.5;True;True;0;False;TransparentCutout;;AlphaTest;All;12;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;0;0;False;;0;False;;0;0;False;;0;False;;0;False;;0;False;;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;;-1;-1;-1;-1;0;False;0;0;True;_Culling;-1;0;True;_Cutoff;1;Include;;True;1ec20832dfbb48343b8e0764e0864276;Custom;False;0;0;;0;0;False;0.1;False;;0;False;;False;17;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;16;FLOAT4;0,0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;243;3;4;0
WireConnection;243;18;242;0
WireConnection;227;0;243;0
WireConnection;236;1;229;0
WireConnection;228;0;236;0
WireConnection;53;0;55;0
WireConnection;53;1;232;0
WireConnection;18;0;16;0
WireConnection;18;1;231;0
WireConnection;216;0;215;0
WireConnection;216;1;233;0
WireConnection;5;0;4;0
WireConnection;56;0;53;0
WireConnection;56;1;52;0
WireConnection;83;0;18;2
WireConnection;82;0;18;1
WireConnection;218;0;216;0
WireConnection;218;1;217;0
WireConnection;9;0;5;0
WireConnection;9;1;238;0
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
WireConnection;201;1;200;0
WireConnection;221;1;220;0
WireConnection;84;0;18;3
WireConnection;245;3;206;0
WireConnection;245;18;244;0
WireConnection;68;0;34;0
WireConnection;78;0;38;0
WireConnection;63;0;10;0
WireConnection;88;0;201;0
WireConnection;222;0;221;0
WireConnection;239;3;212;0
WireConnection;239;18;241;0
WireConnection;39;0;87;0
WireConnection;39;1;37;0
WireConnection;14;0;12;0
WireConnection;14;1;230;0
WireConnection;14;5;15;0
WireConnection;207;0;206;0
WireConnection;207;1;245;0
WireConnection;207;5;205;0
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
WireConnection;211;0;212;0
WireConnection;211;1;239;0
WireConnection;76;0;42;0
WireConnection;72;0;19;0
WireConnection;73;0;20;0
WireConnection;64;0;208;0
WireConnection;179;0;176;0
WireConnection;210;0;211;1
WireConnection;0;0;74;0
WireConnection;0;1;65;0
WireConnection;0;2;81;0
WireConnection;0;3;75;0
WireConnection;0;4;77;0
WireConnection;0;10;213;0
ASEEND*/
//CHKSM=5EA8F64E62BE9A660E344E742FFC23F99500000E