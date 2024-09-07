// Made with Amplify Shader Editor v1.9.6.3
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Saphi/QuantumShaderBasicPBRTransparent"
{
	Properties
	{
		_MainTex("Main Tex", 2D) = "white" {}
		_Color("Color", Color) = (0,0,0,0)
		_AlphaMap("AlphaMap", 2D) = "white" {}
		_EmissionMap2("Emission Map 2", 2D) = "black" {}
		_EmissionMap("Emission Map", 2D) = "white" {}
		_Opacity("Opacity", Range( 0 , 1)) = 1
		[HDR]_EmissionColor("Emission Color", Color) = (0,0,0,0)
		[HDR]_EmissionColor2("Emission Color2", Color) = (0,0,0,0)
		_BumpMap("NormalMap", 2D) = "bump" {}
		_DetailNormalMap("Detail Normal Map", 2D) = "bump" {}
		_DetailNormalMapScale("Detail Normal Map Scale", Range( 0 , 1)) = 0
		_Cutoff("Cutoff", Range( 0 , 1)) = 0
		_BumpScale("Normal Scale", Range( 0 , 1)) = 1
		_MetallicMap("Metallic Map", 2D) = "white" {}
		_Metallic("Metallic", Range( 0 , 1)) = 0
		_SpecularMap("Specular Map", 2D) = "white" {}
		[Enum(UnityEngine.Rendering.CullMode)]_Culling("Culling", Float) = 2
		_RoughnessMap("Roghness Map", 2D) = "white" {}
		_SpecularCorretive("Specular Corretive", Float) = 0.1
		_Specular("Specular", Range( 0 , 1)) = 0.5
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
		_RenderType("RenderType", Float) = 2
		_ShaderType("ShaderType", Float) = 3
		_BlendMode("BlendMode", Float) = 0
		[Enum(UnityEngine.Rendering.BlendMode)]_BlendModeDst("BlendModeDst", Float) = 10
		[Enum(UnityEngine.Rendering.BlendMode)]_BlendModeSrc("BlendModeSrc", Float) = 5
		[Toggle]_EnableEmission("EnableEmission", Float) = 0
		[Toggle]_EnableEmission2("EnableEmission2", Float) = 0
		_Emission("Emission", Float) = 1
		_ShowMain("ShowMain", Float) = 0
		_Emission2("Emission2", Float) = 1
		_ShowRendering("ShowRendering", Float) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Custom"  "Queue" = "Transparent+0" "IsEmissive" = "true"  }
		Cull [_Culling]
		Blend [_BlendModeSrc] [_BlendModeDst]
		
		CGINCLUDE
		#include "UnityStandardUtils.cginc"
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 4.0
		#include "Packages/com.llealloo.audiolink/Runtime/Shaders/AudioLink.cginc"
		struct Input
		{
			float2 uv_texcoord;
		};

		uniform float _ShowQuantumBand3;
		uniform float _ShowQuantumBand4;
		uniform float _ShowQuantumBand1;
		uniform float _ShowQuantumBand2;
		uniform float _ShowQuantum;
		uniform int _QBlendMode2;
		uniform float _ShowMain;
		uniform float _ShowRendering;
		uniform float _Cutoff;
		uniform float _Culling;
		uniform float _BlendMode;
		uniform float _BlendModeSrc;
		uniform float _BlendModeDst;
		uniform float _ShaderType;
		uniform float _RenderType;
		uniform sampler2D _BumpMap;
		uniform float4 _BumpMap_ST;
		uniform float _BumpScale;
		uniform sampler2D _DetailNormalMap;
		uniform float4 _DetailNormalMap_ST;
		uniform float _DetailNormalMapScale;
		uniform sampler2D _MainTex;
		uniform float4 _MainTex_ST;
		uniform float4 _Color;
		uniform sampler2D _MetallicMap;
		uniform float4 _MetallicMap_ST;
		uniform float _Metallic;
		uniform float _EnableEmission;
		uniform sampler2D _EmissionMap;
		uniform float4 _EmissionMap_ST;
		uniform float4 _EmissionColor;
		uniform float _Emission;
		uniform float _EnableEmission2;
		uniform sampler2D _EmissionMap2;
		uniform float4 _EmissionMap2_ST;
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
		uniform sampler2D _SpecularMap;
		uniform float4 _SpecularMap_ST;
		uniform float _SpecularCorretive;
		uniform float _Specular;
		uniform sampler2D _RoughnessMap;
		uniform float4 _RoughnessMap_ST;
		uniform float _Roughness;
		uniform sampler2D _AlphaMap;
		uniform float4 _AlphaMap_ST;
		uniform float _Opacity;


		inline float AudioLinkLerp3_g243( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g240( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g237( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g241( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g238( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g239( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		float3 HSVToRGB( float3 c )
		{
			float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
			float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
			return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
		}


		inline float AudioLinkLerp3_g251( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g248( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g245( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g249( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g246( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g247( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g235( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g232( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g229( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g233( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g230( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g231( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g227( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g224( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g221( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g225( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g222( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g223( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		float IfAudioLinkv2Exists1_g219(  )
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
			float2 uv_BumpMap = i.uv_texcoord * _BumpMap_ST.xy + _BumpMap_ST.zw;
			float2 uv_DetailNormalMap = i.uv_texcoord * _DetailNormalMap_ST.xy + _DetailNormalMap_ST.zw;
			float3 Normal64 = BlendNormals( UnpackScaleNormal( tex2D( _BumpMap, uv_BumpMap ), _BumpScale ) , UnpackScaleNormal( tex2D( _DetailNormalMap, uv_DetailNormalMap ), _DetailNormalMapScale ) );
			o.Normal = Normal64;
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST.xy + _MainTex_ST.zw;
			float4 Albedo63 = ( tex2D( _MainTex, uv_MainTex ) * _Color );
			float2 uv_MetallicMap = i.uv_texcoord * _MetallicMap_ST.xy + _MetallicMap_ST.zw;
			float MetallicValue82 = tex2D( _MetallicMap, uv_MetallicMap ).r;
			float MetallicResult68 = ( MetallicValue82 * _Metallic );
			float4 lerpResult19 = lerp( Albedo63 , float4( 0,0,0,0 ) , MetallicResult68);
			float4 SpecularAlbedo72 = lerpResult19;
			o.Albedo = SpecularAlbedo72.rgb;
			float2 uv_EmissionMap = i.uv_texcoord * _EmissionMap_ST.xy + _EmissionMap_ST.zw;
			float4 MainEmission88 = (( _EnableEmission )?( ( ( tex2D( _EmissionMap, uv_EmissionMap ) * _EmissionColor ) * _Emission ) ):( float4( 0,0,0,0 ) ));
			float2 uv_EmissionMap2 = i.uv_texcoord * _EmissionMap2_ST.xy + _EmissionMap2_ST.zw;
			float4 MainEmission2255 = (( _EnableEmission2 )?( ( ( tex2D( _EmissionMap2, uv_EmissionMap2 ) * _EmissionColor2 ) * _Emission2 ) ):( float4( 0,0,0,0 ) ));
			float2 uv_QGlowMap = i.uv_texcoord * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			float4 GlowMap7_g218 = tex2D( _QGlowMap, uv_QGlowMap );
			float4 break12_g218 = GlowMap7_g218;
			float GlowMap130_g218 = break12_g218.r;
			int temp_output_106_0_g236 = _QBlendMode1;
			int temp_output_27_0_g236 = _QBand1;
			int Band3_g243 = temp_output_27_0_g236;
			float2 uv_QDirection = i.uv_texcoord * _QDirection_ST.xy + _QDirection_ST.zw;
			float4 DirectionMap5_g218 = tex2D( _QDirection, uv_QDirection );
			float Direction11_g218 = (( _UseUVAsDirection )?( (( _UseUVAsDirectionUV )?( i.uv_texcoord.y ):( i.uv_texcoord.x )) ):( DirectionMap5_g218.r ));
			float temp_output_1_0_g236 = (( _QInvertDirection1 )?( ( 1.0 - Direction11_g218 ) ):( Direction11_g218 ));
			float temp_output_5_0_g236 = ( _QHistory1 * temp_output_1_0_g236 );
			float Delay3_g243 = (( _QSmoothHistory )?( temp_output_5_0_g236 ):( floor( temp_output_5_0_g236 ) ));
			float localAudioLinkLerp3_g243 = AudioLinkLerp3_g243( Band3_g243 , Delay3_g243 );
			float temp_output_8_0_g236 = localAudioLinkLerp3_g243;
			float4 temp_cast_1 = (temp_output_8_0_g236).xxxx;
			float4 temp_output_1_0_g242 = temp_cast_1;
			float4 break5_g242 = temp_output_1_0_g242;
			int temp_output_52_0_g236 = _QType1;
			float temp_output_29_0_g236 = _QColorOffset1;
			int Band6_g240 = temp_output_27_0_g236;
			int Mode6_g240 = ( ( (int)_QColorRotationMode1 * 2 ) + (int)_QColorRotationSpeed1 );
			int localAudioLinkDecodeDataAsUInt6_g240 = AudioLinkDecodeDataAsUInt6_g240( Band6_g240 , Mode6_g240 );
			float temp_output_55_0_g236 = ( ( ( localAudioLinkDecodeDataAsUInt6_g240 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g236 = ( temp_output_55_0_g236 * (int)(( _QUseColorRotation1 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g236 = _QEffectScale1;
			int Index1_g237 = (int)floor( ( frac( ( ( temp_output_29_0_g236 + temp_output_95_0_g236 ) * temp_output_103_0_g236 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g237 = AudioLinkData1_g237( Index1_g237 );
			float4 ifLocalVar49_g236 = 0;
			if( temp_output_52_0_g236 == 0.0 )
				ifLocalVar49_g236 = localAudioLinkData1_g237;
			int Index1_g241 = (int)floor( ( frac( ( ( temp_output_29_0_g236 + temp_output_95_0_g236 + temp_output_1_0_g236 ) * temp_output_103_0_g236 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g241 = AudioLinkData1_g241( Index1_g241 );
			float4 ifLocalVar79_g236 = 0;
			if( temp_output_52_0_g236 == 1.0 )
				ifLocalVar79_g236 = localAudioLinkData1_g241;
			float Position1_g238 = saturate( frac( ( ( temp_output_8_0_g236 + temp_output_29_0_g236 + temp_output_95_0_g236 ) * temp_output_103_0_g236 ) ) );
			float4 localAudioLinkLerp1_g238 = AudioLinkLerp1_g238( Position1_g238 );
			float4 ifLocalVar50_g236 = 0;
			if( temp_output_52_0_g236 == 2.0 )
				ifLocalVar50_g236 = localAudioLinkLerp1_g238;
			float Position1_g239 = saturate( frac( ( ( temp_output_29_0_g236 + temp_output_1_0_g236 + temp_output_95_0_g236 ) * temp_output_103_0_g236 ) ) );
			float4 localAudioLinkLerp1_g239 = AudioLinkLerp1_g239( Position1_g239 );
			float4 ifLocalVar51_g236 = 0;
			if( temp_output_52_0_g236 == 3.0 )
				ifLocalVar51_g236 = localAudioLinkLerp1_g239;
			float4 color111_g236 = IsGammaSpace() ? float4(1,1,1,0) : float4(1,1,1,0);
			float4 ifLocalVar110_g236 = 0;
			if( temp_output_52_0_g236 == 4.0 )
				ifLocalVar110_g236 = color111_g236;
			float3 hsvTorgb116_g236 = HSVToRGB( float3(temp_output_55_0_g236,1.0,1.0) );
			float3 ifLocalVar117_g236 = 0;
			if( temp_output_52_0_g236 == 5.0 )
				ifLocalVar117_g236 = hsvTorgb116_g236;
			float4 temp_output_53_0_g236 = ( ifLocalVar49_g236 + ifLocalVar79_g236 + ifLocalVar50_g236 + ifLocalVar51_g236 + ifLocalVar110_g236 + float4( ifLocalVar117_g236 , 0.0 ) );
			float4 temp_output_2_0_g242 = temp_output_53_0_g236;
			float4 ifLocalVar107_g236 = 0;
			if( temp_output_106_0_g236 == 0.0 )
				ifLocalVar107_g236 = ( ( ( break5_g242.r * 0.2 ) + ( break5_g242.g * 0.7 ) + ( break5_g242.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g242 * temp_output_2_0_g242 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g242 ) * ( 1.0 - temp_output_2_0_g242 ) ) ) );
			float4 ifLocalVar108_g236 = 0;
			if( temp_output_106_0_g236 == 1.0 )
				ifLocalVar108_g236 = ( temp_output_8_0_g236 * temp_output_53_0_g236 );
			float4 ifLocalVar112_g236 = 0;
			if( temp_output_106_0_g236 == 2.0 )
				ifLocalVar112_g236 = temp_output_53_0_g236;
			float GlowMap232_g218 = break12_g218.g;
			int temp_output_106_0_g244 = _QBlendMode2;
			int temp_output_27_0_g244 = _QBand2;
			int Band3_g251 = temp_output_27_0_g244;
			float temp_output_1_0_g244 = (( _QInvertDirection2 )?( ( 1.0 - Direction11_g218 ) ):( Direction11_g218 ));
			float temp_output_5_0_g244 = ( _QHistory2 * temp_output_1_0_g244 );
			float Delay3_g251 = (( _QSmoothHistory )?( temp_output_5_0_g244 ):( floor( temp_output_5_0_g244 ) ));
			float localAudioLinkLerp3_g251 = AudioLinkLerp3_g251( Band3_g251 , Delay3_g251 );
			float temp_output_8_0_g244 = localAudioLinkLerp3_g251;
			float4 temp_cast_16 = (temp_output_8_0_g244).xxxx;
			float4 temp_output_1_0_g250 = temp_cast_16;
			float4 break5_g250 = temp_output_1_0_g250;
			int temp_output_52_0_g244 = _QType2;
			float temp_output_29_0_g244 = _QColorOffset2;
			int Band6_g248 = temp_output_27_0_g244;
			int Mode6_g248 = ( ( (int)_QColorRotationMode2 * 2 ) + (int)_QColorRotationSpeed2 );
			int localAudioLinkDecodeDataAsUInt6_g248 = AudioLinkDecodeDataAsUInt6_g248( Band6_g248 , Mode6_g248 );
			float temp_output_55_0_g244 = ( ( ( localAudioLinkDecodeDataAsUInt6_g248 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g244 = ( temp_output_55_0_g244 * (int)(( _QUseColorRotation2 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g244 = _QEffectScale2;
			int Index1_g245 = (int)floor( ( frac( ( ( temp_output_29_0_g244 + temp_output_95_0_g244 ) * temp_output_103_0_g244 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g245 = AudioLinkData1_g245( Index1_g245 );
			float4 ifLocalVar49_g244 = 0;
			if( temp_output_52_0_g244 == 0.0 )
				ifLocalVar49_g244 = localAudioLinkData1_g245;
			int Index1_g249 = (int)floor( ( frac( ( ( temp_output_29_0_g244 + temp_output_95_0_g244 + temp_output_1_0_g244 ) * temp_output_103_0_g244 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g249 = AudioLinkData1_g249( Index1_g249 );
			float4 ifLocalVar79_g244 = 0;
			if( temp_output_52_0_g244 == 1.0 )
				ifLocalVar79_g244 = localAudioLinkData1_g249;
			float Position1_g246 = saturate( frac( ( ( temp_output_8_0_g244 + temp_output_29_0_g244 + temp_output_95_0_g244 ) * temp_output_103_0_g244 ) ) );
			float4 localAudioLinkLerp1_g246 = AudioLinkLerp1_g246( Position1_g246 );
			float4 ifLocalVar50_g244 = 0;
			if( temp_output_52_0_g244 == 2.0 )
				ifLocalVar50_g244 = localAudioLinkLerp1_g246;
			float Position1_g247 = saturate( frac( ( ( temp_output_29_0_g244 + temp_output_1_0_g244 + temp_output_95_0_g244 ) * temp_output_103_0_g244 ) ) );
			float4 localAudioLinkLerp1_g247 = AudioLinkLerp1_g247( Position1_g247 );
			float4 ifLocalVar51_g244 = 0;
			if( temp_output_52_0_g244 == 3.0 )
				ifLocalVar51_g244 = localAudioLinkLerp1_g247;
			float4 color111_g244 = IsGammaSpace() ? float4(1,1,1,0) : float4(1,1,1,0);
			float4 ifLocalVar110_g244 = 0;
			if( temp_output_52_0_g244 == 4.0 )
				ifLocalVar110_g244 = color111_g244;
			float3 hsvTorgb116_g244 = HSVToRGB( float3(temp_output_55_0_g244,1.0,1.0) );
			float3 ifLocalVar117_g244 = 0;
			if( temp_output_52_0_g244 == 5.0 )
				ifLocalVar117_g244 = hsvTorgb116_g244;
			float4 temp_output_53_0_g244 = ( ifLocalVar49_g244 + ifLocalVar79_g244 + ifLocalVar50_g244 + ifLocalVar51_g244 + ifLocalVar110_g244 + float4( ifLocalVar117_g244 , 0.0 ) );
			float4 temp_output_2_0_g250 = temp_output_53_0_g244;
			float4 ifLocalVar107_g244 = 0;
			if( temp_output_106_0_g244 == 0.0 )
				ifLocalVar107_g244 = ( ( ( break5_g250.r * 0.2 ) + ( break5_g250.g * 0.7 ) + ( break5_g250.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g250 * temp_output_2_0_g250 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g250 ) * ( 1.0 - temp_output_2_0_g250 ) ) ) );
			float4 ifLocalVar108_g244 = 0;
			if( temp_output_106_0_g244 == 1.0 )
				ifLocalVar108_g244 = ( temp_output_8_0_g244 * temp_output_53_0_g244 );
			float4 ifLocalVar112_g244 = 0;
			if( temp_output_106_0_g244 == 2.0 )
				ifLocalVar112_g244 = temp_output_53_0_g244;
			float GlowMap331_g218 = break12_g218.b;
			int temp_output_106_0_g228 = _QBlendMode3;
			int temp_output_27_0_g228 = _QBand3;
			int Band3_g235 = temp_output_27_0_g228;
			float temp_output_1_0_g228 = (( _QInvertDirection3 )?( ( 1.0 - Direction11_g218 ) ):( Direction11_g218 ));
			float temp_output_5_0_g228 = ( _QHistory3 * temp_output_1_0_g228 );
			float Delay3_g235 = (( _QSmoothHistory )?( temp_output_5_0_g228 ):( floor( temp_output_5_0_g228 ) ));
			float localAudioLinkLerp3_g235 = AudioLinkLerp3_g235( Band3_g235 , Delay3_g235 );
			float temp_output_8_0_g228 = localAudioLinkLerp3_g235;
			float4 temp_cast_31 = (temp_output_8_0_g228).xxxx;
			float4 temp_output_1_0_g234 = temp_cast_31;
			float4 break5_g234 = temp_output_1_0_g234;
			int temp_output_52_0_g228 = _QType3;
			float temp_output_29_0_g228 = _QColorOffset3;
			int Band6_g232 = temp_output_27_0_g228;
			int Mode6_g232 = ( ( (int)_QColorRotationMode3 * 2 ) + (int)_QColorRotationSpeed3 );
			int localAudioLinkDecodeDataAsUInt6_g232 = AudioLinkDecodeDataAsUInt6_g232( Band6_g232 , Mode6_g232 );
			float temp_output_55_0_g228 = ( ( ( localAudioLinkDecodeDataAsUInt6_g232 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g228 = ( temp_output_55_0_g228 * (int)(( _QUseColorRotation3 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g228 = _QEffectScale3;
			int Index1_g229 = (int)floor( ( frac( ( ( temp_output_29_0_g228 + temp_output_95_0_g228 ) * temp_output_103_0_g228 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g229 = AudioLinkData1_g229( Index1_g229 );
			float4 ifLocalVar49_g228 = 0;
			if( temp_output_52_0_g228 == 0.0 )
				ifLocalVar49_g228 = localAudioLinkData1_g229;
			int Index1_g233 = (int)floor( ( frac( ( ( temp_output_29_0_g228 + temp_output_95_0_g228 + temp_output_1_0_g228 ) * temp_output_103_0_g228 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g233 = AudioLinkData1_g233( Index1_g233 );
			float4 ifLocalVar79_g228 = 0;
			if( temp_output_52_0_g228 == 1.0 )
				ifLocalVar79_g228 = localAudioLinkData1_g233;
			float Position1_g230 = saturate( frac( ( ( temp_output_8_0_g228 + temp_output_29_0_g228 + temp_output_95_0_g228 ) * temp_output_103_0_g228 ) ) );
			float4 localAudioLinkLerp1_g230 = AudioLinkLerp1_g230( Position1_g230 );
			float4 ifLocalVar50_g228 = 0;
			if( temp_output_52_0_g228 == 2.0 )
				ifLocalVar50_g228 = localAudioLinkLerp1_g230;
			float Position1_g231 = saturate( frac( ( ( temp_output_29_0_g228 + temp_output_1_0_g228 + temp_output_95_0_g228 ) * temp_output_103_0_g228 ) ) );
			float4 localAudioLinkLerp1_g231 = AudioLinkLerp1_g231( Position1_g231 );
			float4 ifLocalVar51_g228 = 0;
			if( temp_output_52_0_g228 == 3.0 )
				ifLocalVar51_g228 = localAudioLinkLerp1_g231;
			float4 color111_g228 = IsGammaSpace() ? float4(1,1,1,0) : float4(1,1,1,0);
			float4 ifLocalVar110_g228 = 0;
			if( temp_output_52_0_g228 == 4.0 )
				ifLocalVar110_g228 = color111_g228;
			float3 hsvTorgb116_g228 = HSVToRGB( float3(temp_output_55_0_g228,1.0,1.0) );
			float3 ifLocalVar117_g228 = 0;
			if( temp_output_52_0_g228 == 5.0 )
				ifLocalVar117_g228 = hsvTorgb116_g228;
			float4 temp_output_53_0_g228 = ( ifLocalVar49_g228 + ifLocalVar79_g228 + ifLocalVar50_g228 + ifLocalVar51_g228 + ifLocalVar110_g228 + float4( ifLocalVar117_g228 , 0.0 ) );
			float4 temp_output_2_0_g234 = temp_output_53_0_g228;
			float4 ifLocalVar107_g228 = 0;
			if( temp_output_106_0_g228 == 0.0 )
				ifLocalVar107_g228 = ( ( ( break5_g234.r * 0.2 ) + ( break5_g234.g * 0.7 ) + ( break5_g234.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g234 * temp_output_2_0_g234 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g234 ) * ( 1.0 - temp_output_2_0_g234 ) ) ) );
			float4 ifLocalVar108_g228 = 0;
			if( temp_output_106_0_g228 == 1.0 )
				ifLocalVar108_g228 = ( temp_output_8_0_g228 * temp_output_53_0_g228 );
			float4 ifLocalVar112_g228 = 0;
			if( temp_output_106_0_g228 == 2.0 )
				ifLocalVar112_g228 = temp_output_53_0_g228;
			float GlowMap433_g218 = break12_g218.a;
			int temp_output_106_0_g220 = _QBlendMode4;
			int temp_output_27_0_g220 = _QBand4;
			int Band3_g227 = temp_output_27_0_g220;
			float temp_output_1_0_g220 = (( _QInvertDirection4 )?( ( 1.0 - Direction11_g218 ) ):( Direction11_g218 ));
			float temp_output_5_0_g220 = ( _QHistory4 * temp_output_1_0_g220 );
			float Delay3_g227 = (( _QSmoothHistory )?( temp_output_5_0_g220 ):( floor( temp_output_5_0_g220 ) ));
			float localAudioLinkLerp3_g227 = AudioLinkLerp3_g227( Band3_g227 , Delay3_g227 );
			float temp_output_8_0_g220 = localAudioLinkLerp3_g227;
			float4 temp_cast_46 = (temp_output_8_0_g220).xxxx;
			float4 temp_output_1_0_g226 = temp_cast_46;
			float4 break5_g226 = temp_output_1_0_g226;
			int temp_output_52_0_g220 = _QType4;
			float temp_output_29_0_g220 = _QColorOffset4;
			int Band6_g224 = temp_output_27_0_g220;
			int Mode6_g224 = ( ( (int)_QColorRotationMode4 * 2 ) + (int)_QColorRotationSpeed4 );
			int localAudioLinkDecodeDataAsUInt6_g224 = AudioLinkDecodeDataAsUInt6_g224( Band6_g224 , Mode6_g224 );
			float temp_output_55_0_g220 = ( ( ( localAudioLinkDecodeDataAsUInt6_g224 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g220 = ( temp_output_55_0_g220 * (int)(( _QUseColorRotation4 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g220 = _QEffectScale4;
			int Index1_g221 = (int)floor( ( frac( ( ( temp_output_29_0_g220 + temp_output_95_0_g220 ) * temp_output_103_0_g220 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g221 = AudioLinkData1_g221( Index1_g221 );
			float4 ifLocalVar49_g220 = 0;
			if( temp_output_52_0_g220 == 0.0 )
				ifLocalVar49_g220 = localAudioLinkData1_g221;
			int Index1_g225 = (int)floor( ( frac( ( ( temp_output_29_0_g220 + temp_output_95_0_g220 + temp_output_1_0_g220 ) * temp_output_103_0_g220 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g225 = AudioLinkData1_g225( Index1_g225 );
			float4 ifLocalVar79_g220 = 0;
			if( temp_output_52_0_g220 == 1.0 )
				ifLocalVar79_g220 = localAudioLinkData1_g225;
			float Position1_g222 = saturate( frac( ( ( temp_output_8_0_g220 + temp_output_29_0_g220 + temp_output_95_0_g220 ) * temp_output_103_0_g220 ) ) );
			float4 localAudioLinkLerp1_g222 = AudioLinkLerp1_g222( Position1_g222 );
			float4 ifLocalVar50_g220 = 0;
			if( temp_output_52_0_g220 == 2.0 )
				ifLocalVar50_g220 = localAudioLinkLerp1_g222;
			float Position1_g223 = saturate( frac( ( ( temp_output_29_0_g220 + temp_output_1_0_g220 + temp_output_95_0_g220 ) * temp_output_103_0_g220 ) ) );
			float4 localAudioLinkLerp1_g223 = AudioLinkLerp1_g223( Position1_g223 );
			float4 ifLocalVar51_g220 = 0;
			if( temp_output_52_0_g220 == 3.0 )
				ifLocalVar51_g220 = localAudioLinkLerp1_g223;
			float4 color111_g220 = IsGammaSpace() ? float4(1,1,1,0) : float4(1,1,1,0);
			float4 ifLocalVar110_g220 = 0;
			if( temp_output_52_0_g220 == 4.0 )
				ifLocalVar110_g220 = color111_g220;
			float3 hsvTorgb116_g220 = HSVToRGB( float3(temp_output_55_0_g220,1.0,1.0) );
			float3 ifLocalVar117_g220 = 0;
			if( temp_output_52_0_g220 == 5.0 )
				ifLocalVar117_g220 = hsvTorgb116_g220;
			float4 temp_output_53_0_g220 = ( ifLocalVar49_g220 + ifLocalVar79_g220 + ifLocalVar50_g220 + ifLocalVar51_g220 + ifLocalVar110_g220 + float4( ifLocalVar117_g220 , 0.0 ) );
			float4 temp_output_2_0_g226 = temp_output_53_0_g220;
			float4 ifLocalVar107_g220 = 0;
			if( temp_output_106_0_g220 == 0.0 )
				ifLocalVar107_g220 = ( ( ( break5_g226.r * 0.2 ) + ( break5_g226.g * 0.7 ) + ( break5_g226.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g226 * temp_output_2_0_g226 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g226 ) * ( 1.0 - temp_output_2_0_g226 ) ) ) );
			float4 ifLocalVar108_g220 = 0;
			if( temp_output_106_0_g220 == 1.0 )
				ifLocalVar108_g220 = ( temp_output_8_0_g220 * temp_output_53_0_g220 );
			float4 ifLocalVar112_g220 = 0;
			if( temp_output_106_0_g220 == 2.0 )
				ifLocalVar112_g220 = temp_output_53_0_g220;
			float localIfAudioLinkv2Exists1_g219 = IfAudioLinkv2Exists1_g219();
			float4 lerpResult55_g218 = lerp( float4( 0,0,0,0 ) , ( _QuantumGlowColor * ( (( _QBandEnable1 )?( ( _QGlowColorBand1 * ( GlowMap130_g218 * ( ifLocalVar107_g236 + ifLocalVar108_g236 + ifLocalVar112_g236 ) ) * _QuantumGlowMultiply1 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable2 )?( ( _QGlowColorBand2 * ( GlowMap232_g218 * ( ifLocalVar107_g244 + ifLocalVar108_g244 + ifLocalVar112_g244 ) ) * _QuantumGlowMultiply2 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable3 )?( ( _QGlowColorBand3 * ( GlowMap331_g218 * ( ifLocalVar107_g228 + ifLocalVar108_g228 + ifLocalVar112_g228 ) ) * _QuantumGlowMultiply3 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable4 )?( ( _QGlowColorBand4 * ( GlowMap433_g218 * ( ifLocalVar107_g220 + ifLocalVar108_g220 + ifLocalVar112_g220 ) ) * _QuantumGlowMultiply4 ) ):( float4( 0,0,0,0 ) )) ) * _QuantumGlowMultiplyGlobal ) , localIfAudioLinkv2Exists1_g219);
			float4 Emission179 = ( MainEmission88 + MainEmission2255 + (( _QEnableGlobal )?( lerpResult55_g218 ):( float4( 0,0,0,0 ) )) );
			o.Emission = Emission179.rgb;
			float2 uv_SpecularMap = i.uv_texcoord * _SpecularMap_ST.xy + _SpecularMap_ST.zw;
			float SpecularValue83 = tex2D( _SpecularMap, uv_SpecularMap ).r;
			float SpecularResult78 = ( SpecularValue83 * _SpecularCorretive * _Specular );
			float4 temp_cast_62 = (SpecularResult78).xxxx;
			float4 lerpResult20 = lerp( temp_cast_62 , Albedo63 , MetallicResult68);
			float4 SpecularMap73 = lerpResult20;
			o.Specular = SpecularMap73.rgb;
			float2 uv_RoughnessMap = i.uv_texcoord * _RoughnessMap_ST.xy + _RoughnessMap_ST.zw;
			float RoghnessValue84 = tex2D( _RoughnessMap, uv_RoughnessMap ).r;
			float Smoothness76 = ( 1.0 - ( RoghnessValue84 * _Roughness ) );
			o.Smoothness = Smoothness76;
			float2 uv_AlphaMap = i.uv_texcoord * _AlphaMap_ST.xy + _AlphaMap_ST.zw;
			float4 tex2DNode243 = tex2D( _AlphaMap, uv_AlphaMap );
			float AlphaMap245 = saturate( ( tex2DNode243.r * _Opacity ) );
			o.Alpha = AlphaMap245;
			float AlphaMask261 = tex2DNode243.r;
			clip( AlphaMask261 - _Cutoff );
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
				float3 worldPos : TEXCOORD2;
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
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
				o.worldPos = worldPos;
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
				float3 worldPos = IN.worldPos;
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
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
Node;AmplifyShaderEditor.CommentaryNode;229;-2880,160;Inherit;False;2584.449;3538.463;Base Textures;54;255;254;253;252;251;250;249;242;235;231;195;245;64;243;241;244;238;14;236;15;237;88;63;12;228;84;10;227;31;9;11;226;56;32;83;82;5;53;52;28;18;4;55;29;16;248;257;258;259;261;263;264;265;266;;1,1,1,1;0;0
Node;AmplifyShaderEditor.TexturePropertyNode;16;-2016,1344;Inherit;True;Property;_MetallicMap;Metallic Map;13;0;Create;False;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;29;-2016,1584;Inherit;True;Property;_SpecularMap;Specular Map;15;0;Create;False;0;0;0;False;0;False;None;95bc897e80af50446bc05c7e8d2649ae;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;55;-2032,2016;Inherit;True;Property;_EmissionMap;Emission Map;4;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;248;-2048,2480;Inherit;True;Property;_EmissionMap2;Emission Map 2;3;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;4;-2032,208;Inherit;True;Property;_MainTex;Main Tex;0;0;Create;True;0;0;0;False;0;False;None;a16b3161c8c05f54ba87ec06bfdd6b82;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SamplerNode;18;-1504,1344;Inherit;True;Property;_TextureSample2;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;28;-1504,1584;Inherit;True;Property;_TextureSample3;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;52;-1488,2224;Inherit;False;Property;_EmissionColor;Emission Color;6;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;4,4,4,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;53;-1520,2016;Inherit;True;Property;_TextureSample5;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;250;-1504,2688;Inherit;False;Property;_EmissionColor2;Emission Color2;7;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;4,4,4,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;249;-1536,2480;Inherit;True;Property;_TextureSample10;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.CommentaryNode;98;-144,1280;Inherit;False;852;339;Specular Color;5;36;50;86;78;38;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;93;-160,960;Inherit;False;820;243;Metallic Map;4;34;35;85;68;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;5;-1728,208;Inherit;False;MainTexTex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;82;-1088,1376;Inherit;False;MetallicValue;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;83;-1168,1632;Inherit;False;SpecularValue;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;32;-2032,1808;Inherit;True;Property;_RoughnessMap;Roghness Map;17;0;Create;False;0;0;0;False;0;False;None;9ef4e7141633e7448abdfe031993c9c8;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;56;-1232,2016;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;226;-1232,2128;Inherit;False;Property;_Emission;Emission;101;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;251;-1248,2480;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;252;-1248,2592;Inherit;False;Property;_Emission2;Emission2;103;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;86;-96,1328;Inherit;False;83;SpecularValue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;85;-112,1008;Inherit;False;82;MetallicValue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;35;-112,1088;Inherit;False;Property;_Metallic;Metallic;14;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;50;-96,1504;Inherit;False;Property;_Specular;Specular;19;0;Create;False;0;0;0;False;0;False;0.5;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;36;-96,1424;Inherit;False;Property;_SpecularCorretive;Specular Corretive;18;0;Create;False;0;0;0;False;0;False;0.1;0.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;11;-1456,416;Inherit;False;Property;_Color;Color;1;0;Create;False;0;0;0;False;0;False;0,0,0,0;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;9;-1520,208;Inherit;True;Property;_TextureSample0;Texture Sample 0;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;31;-1504,1808;Inherit;True;Property;_TextureSample4;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;227;-1072,2016;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;253;-1088,2480;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;95;-144,1712;Inherit;False;1044;259;Roughness;5;37;87;39;42;76;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;38;240,1328;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;34;192,1008;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;10;-1040,208;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;84;-1168,1840;Inherit;False;RoghnessValue;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;228;-928,2016;Inherit;False;Property;_EnableEmission;EnableEmission;99;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;254;-944,2480;Inherit;False;Property;_EnableEmission2;EnableEmission2;100;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;244;-2032,3104;Inherit;True;Property;_AlphaMap;AlphaMap;2;0;Create;False;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;12;-2032,656;Inherit;True;Property;_BumpMap;NormalMap;8;0;Create;False;0;0;0;False;0;False;None;aef25913bc0271f498e5006238d33577;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.CommentaryNode;92;-160,496;Inherit;False;788;323;Specular Map (dielectric = grayscale | metallic = albedo);5;70;67;79;20;73;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;91;-160,160;Inherit;False;820;243;Specular albedo (metallic = black);4;66;69;19;72;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;68;416,1008;Inherit;False;MetallicResult;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;78;464,1328;Inherit;False;SpecularResult;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;87;-96,1760;Inherit;False;84;RoghnessValue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;37;-96,1856;Inherit;False;Property;_Roughness;Roughness;20;0;Create;True;0;0;0;False;0;False;0.5;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;63;-848,208;Inherit;False;Albedo;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;88;-672,2016;Inherit;False;MainEmission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;237;-2032,912;Inherit;True;Property;_DetailNormalMap;Detail Normal Map;9;0;Create;False;0;0;0;False;0;False;None;aef25913bc0271f498e5006238d33577;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;15;-1808,768;Inherit;False;Property;_BumpScale;Normal Scale;12;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;236;-1808,1024;Inherit;False;Property;_DetailNormalMapScale;Detail Normal Map Scale;10;0;Create;False;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;255;-736,2480;Inherit;False;MainEmission2;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;243;-1520,3104;Inherit;True;Property;_TextureSample9;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RangedFloatNode;264;-1216,3168;Inherit;False;Property;_Opacity;Opacity;5;0;Create;True;0;0;0;False;0;False;1;8.33;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;14;-1520,656;Inherit;True;Property;_TextureSample1;Texture Sample 1;3;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.GetLocalVarNode;70;-112,704;Inherit;False;68;MetallicResult;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;67;-80,624;Inherit;False;63;Albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;79;-112,544;Inherit;False;78;SpecularResult;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;66;-96,208;Inherit;False;63;Albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;69;-112,288;Inherit;False;68;MetallicResult;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;39;256,1760;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;89;-64,2224;Inherit;False;88;MainEmission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;238;-1520,912;Inherit;True;Property;_TextureSample8;Texture Sample 1;3;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.GetLocalVarNode;256;-64,2304;Inherit;False;255;MainEmission2;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;247;-32,2384;Inherit;False;QuatumGlow;21;;218;7730a8711ab108044bac907ea573069c;0;0;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;263;-928,3136;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;20;192,544;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;19;160,208;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;42;448,1760;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;176;192,2224;Inherit;True;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendNormalsNode;241;-1136,656;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;262;-752,3136;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;97;912,160;Inherit;False;660;675;Output;8;77;75;65;74;81;0;246;260;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;76;656,1760;Inherit;False;Smoothness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;72;416,208;Inherit;False;SpecularAlbedo;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;73;384,544;Inherit;False;SpecularMap;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;179;416,2224;Inherit;False;Emission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;64;-832,656;Inherit;False;Normal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;261;-928,3280;Inherit;False;AlphaMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;245;-592,3136;Inherit;False;AlphaMap;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;77;992,560;Inherit;False;76;Smoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;75;992,464;Inherit;False;73;SpecularMap;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;74;960,208;Inherit;False;72;SpecularAlbedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;65;992,288;Inherit;False;64;Normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;81;960,384;Inherit;False;179;Emission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;195;-2464,256;Inherit;False;Property;_ShowMain;ShowMain;102;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;231;-2464,352;Inherit;False;Property;_ShowRendering;ShowRendering;104;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;246;976,640;Inherit;False;245;AlphaMap;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;260;992,736;Inherit;False;261;AlphaMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;242;-2784,256;Inherit;False;Property;_Cutoff;Cutoff;11;0;Create;True;0;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;235;-2640,352;Inherit;False;Property;_Culling;Culling;16;1;[Enum];Create;False;0;1;Option1;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;257;-2832,768;Inherit;False;Property;_BlendMode;BlendMode;96;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;258;-2848,864;Inherit;False;Property;_BlendModeSrc;BlendModeSrc;98;1;[Enum];Create;True;0;1;Option1;0;1;UnityEngine.Rendering.BlendMode;True;0;False;5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;259;-2624,864;Inherit;False;Property;_BlendModeDst;BlendModeDst;97;1;[Enum];Create;True;0;1;Option1;0;1;UnityEngine.Rendering.BlendMode;True;0;False;10;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;265;-2640,560;Inherit;False;Property;_ShaderType;ShaderType;95;0;Create;True;0;0;0;True;0;False;3;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;266;-2640,464;Inherit;False;Property;_RenderType;RenderType;94;0;Create;True;0;0;0;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;1296,320;Float;False;True;-1;4;Saphi.QuantumShader.QuantumShaderUI;0;0;StandardSpecular;Saphi/QuantumShaderBasicPBRTransparent;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;;0;False;;False;0;False;;0;False;;False;0;Custom;0.5;True;True;0;True;Custom;;Transparent;All;12;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;2;5;True;_BlendModeSrc;10;True;_BlendModeDst;0;0;False;;0;False;;0;False;;0;False;;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;;-1;-1;-1;-1;0;False;0;0;True;_Culling;-1;0;True;_Cutoff;1;Include;audiol;True;1ec20832dfbb48343b8e0764e0864276;Custom;False;0;0;;0;0;False;0.1;False;;0;False;;False;17;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;16;FLOAT4;0,0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;18;0;16;0
WireConnection;28;0;29;0
WireConnection;53;0;55;0
WireConnection;249;0;248;0
WireConnection;5;0;4;0
WireConnection;82;0;18;1
WireConnection;83;0;28;1
WireConnection;56;0;53;0
WireConnection;56;1;52;0
WireConnection;251;0;249;0
WireConnection;251;1;250;0
WireConnection;9;0;5;0
WireConnection;31;0;32;0
WireConnection;227;0;56;0
WireConnection;227;1;226;0
WireConnection;253;0;251;0
WireConnection;253;1;252;0
WireConnection;38;0;86;0
WireConnection;38;1;36;0
WireConnection;38;2;50;0
WireConnection;34;0;85;0
WireConnection;34;1;35;0
WireConnection;10;0;9;0
WireConnection;10;1;11;0
WireConnection;84;0;31;1
WireConnection;228;1;227;0
WireConnection;254;1;253;0
WireConnection;68;0;34;0
WireConnection;78;0;38;0
WireConnection;63;0;10;0
WireConnection;88;0;228;0
WireConnection;255;0;254;0
WireConnection;243;0;244;0
WireConnection;14;0;12;0
WireConnection;14;5;15;0
WireConnection;39;0;87;0
WireConnection;39;1;37;0
WireConnection;238;0;237;0
WireConnection;238;5;236;0
WireConnection;263;0;243;1
WireConnection;263;1;264;0
WireConnection;20;0;79;0
WireConnection;20;1;67;0
WireConnection;20;2;70;0
WireConnection;19;0;66;0
WireConnection;19;2;69;0
WireConnection;42;0;39;0
WireConnection;176;0;89;0
WireConnection;176;1;256;0
WireConnection;176;2;247;0
WireConnection;241;0;14;0
WireConnection;241;1;238;0
WireConnection;262;0;263;0
WireConnection;76;0;42;0
WireConnection;72;0;19;0
WireConnection;73;0;20;0
WireConnection;179;0;176;0
WireConnection;64;0;241;0
WireConnection;261;0;243;1
WireConnection;245;0;262;0
WireConnection;0;0;74;0
WireConnection;0;1;65;0
WireConnection;0;2;81;0
WireConnection;0;3;75;0
WireConnection;0;4;77;0
WireConnection;0;9;246;0
WireConnection;0;10;260;0
ASEEND*/
//CHKSM=E7FBCC9D1D2D5077080AE381BDE5482CA71336A5