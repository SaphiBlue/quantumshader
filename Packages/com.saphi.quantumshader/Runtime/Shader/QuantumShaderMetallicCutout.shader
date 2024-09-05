// Made with Amplify Shader Editor v1.9.6.3
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Saphi/QuantumShaderMetallicCutout"
{
	Properties
	{
		_Cutoff( "Mask Clip Value", Float ) = 0.5
		_MainTex("Main Tex", 2D) = "white" {}
		_Color("Color", Color) = (0,0,0,0)
		_EmissionMap("Emission Map", 2D) = "white" {}
		_AlphaMap("AlphaMap", 2D) = "white" {}
		[HDR]_EmissionColor("Emission Color", Color) = (0,0,0,0)
		_BumpMap("NormalMap", 2D) = "bump" {}
		_BumpScale("Normal Scale", Range( 0 , 1)) = 1
		_DetailNormalMap("Detail Normal Map", 2D) = "bump" {}
		_MetallicGlossMap("Metallic Gloss Map", 2D) = "black" {}
		_DetailNormalMapScale("Detail Normal Map Scale", Range( 0 , 1)) = 0
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
		[Enum(UnityEngine.Rendering.CullMode)]_Culling("Culling", Float) = 2
		_ShowMain("ShowMain", Float) = 0
		[Toggle]_EnableEmission("EnableEmission", Float) = 0
		_Emission("Emission", Float) = 1
		_ShowRendering("ShowRendering", Float) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "TransparentCutout"  "Queue" = "AlphaTest+0" "IsEmissive" = "true"  }
		Cull [_Culling]
		CGPROGRAM
		#include "UnityStandardUtils.cginc"
		#pragma target 4.0
		#include "Packages/com.llealloo.audiolink/Runtime/Shaders/AudioLink.cginc"
		#pragma surface surf Standard keepalpha addshadow fullforwardshadows 
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
		uniform float _ShowRendering;
		uniform float _ShowMain;
		uniform float _Culling;
		uniform sampler2D _BumpMap;
		uniform float4 _BumpMap_ST;
		uniform float _BumpScale;
		uniform sampler2D _DetailNormalMap;
		uniform float4 _DetailNormalMap_ST;
		uniform float _DetailNormalMapScale;
		uniform sampler2D _MainTex;
		uniform float4 _MainTex_ST;
		uniform float4 _Color;
		uniform float _EnableEmission;
		uniform sampler2D _EmissionMap;
		uniform float4 _EmissionMap_ST;
		uniform float4 _EmissionColor;
		uniform float _Emission;
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
		uniform sampler2D _MetallicGlossMap;
		uniform float4 _MetallicGlossMap_ST;
		uniform sampler2D _AlphaMap;
		uniform float4 _AlphaMap_ST;
		uniform float _Cutoff = 0.5;


		inline float AudioLinkLerp3_g217( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g214( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g211( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g215( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g212( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g213( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		float3 HSVToRGB( float3 c )
		{
			float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
			float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
			return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
		}


		inline float AudioLinkLerp3_g209( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g206( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g203( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g207( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g204( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g205( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g201( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g198( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g195( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g199( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g196( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g197( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g193( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g190( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g187( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g191( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g188( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g189( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		float IfAudioLinkv2Exists1_g117(  )
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


		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float2 uv_BumpMap = i.uv_texcoord * _BumpMap_ST.xy + _BumpMap_ST.zw;
			float2 uv_DetailNormalMap = i.uv_texcoord * _DetailNormalMap_ST.xy + _DetailNormalMap_ST.zw;
			float3 Normal64 = BlendNormals( UnpackScaleNormal( tex2D( _BumpMap, uv_BumpMap ), _BumpScale ) , UnpackScaleNormal( tex2D( _DetailNormalMap, uv_DetailNormalMap ), _DetailNormalMapScale ) );
			o.Normal = Normal64;
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST.xy + _MainTex_ST.zw;
			float4 Albedo63 = ( tex2D( _MainTex, uv_MainTex ) * _Color );
			o.Albedo = Albedo63.rgb;
			float2 uv_EmissionMap = i.uv_texcoord * _EmissionMap_ST.xy + _EmissionMap_ST.zw;
			float4 MainEmission88 = (( _EnableEmission )?( ( ( tex2D( _EmissionMap, uv_EmissionMap ) * _EmissionColor ) * _Emission ) ):( float4( 0,0,0,0 ) ));
			float2 uv_QGlowMap = i.uv_texcoord * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			float4 GlowMap7_g116 = tex2D( _QGlowMap, uv_QGlowMap );
			float4 break12_g116 = GlowMap7_g116;
			float GlowMap130_g116 = break12_g116.r;
			int temp_output_106_0_g210 = _QBlendMode1;
			int temp_output_27_0_g210 = _QBand1;
			int Band3_g217 = temp_output_27_0_g210;
			float2 uv_QDirection = i.uv_texcoord * _QDirection_ST.xy + _QDirection_ST.zw;
			float4 DirectionMap5_g116 = tex2D( _QDirection, uv_QDirection );
			float Direction11_g116 = (( _UseUVAsDirection )?( (( _UseUVAsDirectionUV )?( i.uv_texcoord.y ):( i.uv_texcoord.x )) ):( DirectionMap5_g116.r ));
			float temp_output_1_0_g210 = (( _QInvertDirection1 )?( ( 1.0 - Direction11_g116 ) ):( Direction11_g116 ));
			float temp_output_5_0_g210 = ( _QHistory1 * temp_output_1_0_g210 );
			float Delay3_g217 = (( _QSmoothHistory )?( temp_output_5_0_g210 ):( floor( temp_output_5_0_g210 ) ));
			float localAudioLinkLerp3_g217 = AudioLinkLerp3_g217( Band3_g217 , Delay3_g217 );
			float temp_output_8_0_g210 = localAudioLinkLerp3_g217;
			float4 temp_cast_1 = (temp_output_8_0_g210).xxxx;
			float4 temp_output_1_0_g216 = temp_cast_1;
			float4 break5_g216 = temp_output_1_0_g216;
			int temp_output_52_0_g210 = _QType1;
			float temp_output_29_0_g210 = _QColorOffset1;
			int Band6_g214 = temp_output_27_0_g210;
			int Mode6_g214 = ( ( (int)_QColorRotationMode1 * 2 ) + (int)_QColorRotationSpeed1 );
			int localAudioLinkDecodeDataAsUInt6_g214 = AudioLinkDecodeDataAsUInt6_g214( Band6_g214 , Mode6_g214 );
			float temp_output_55_0_g210 = ( ( ( localAudioLinkDecodeDataAsUInt6_g214 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g210 = ( temp_output_55_0_g210 * (int)(( _QUseColorRotation1 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g210 = _QEffectScale1;
			int Index1_g211 = (int)floor( ( frac( ( ( temp_output_29_0_g210 + temp_output_95_0_g210 ) * temp_output_103_0_g210 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g211 = AudioLinkData1_g211( Index1_g211 );
			float4 ifLocalVar49_g210 = 0;
			if( temp_output_52_0_g210 == 0.0 )
				ifLocalVar49_g210 = localAudioLinkData1_g211;
			int Index1_g215 = (int)floor( ( frac( ( ( temp_output_29_0_g210 + temp_output_95_0_g210 + temp_output_1_0_g210 ) * temp_output_103_0_g210 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g215 = AudioLinkData1_g215( Index1_g215 );
			float4 ifLocalVar79_g210 = 0;
			if( temp_output_52_0_g210 == 1.0 )
				ifLocalVar79_g210 = localAudioLinkData1_g215;
			float Position1_g212 = saturate( frac( ( ( temp_output_8_0_g210 + temp_output_29_0_g210 + temp_output_95_0_g210 ) * temp_output_103_0_g210 ) ) );
			float4 localAudioLinkLerp1_g212 = AudioLinkLerp1_g212( Position1_g212 );
			float4 ifLocalVar50_g210 = 0;
			if( temp_output_52_0_g210 == 2.0 )
				ifLocalVar50_g210 = localAudioLinkLerp1_g212;
			float Position1_g213 = saturate( frac( ( ( temp_output_29_0_g210 + temp_output_1_0_g210 + temp_output_95_0_g210 ) * temp_output_103_0_g210 ) ) );
			float4 localAudioLinkLerp1_g213 = AudioLinkLerp1_g213( Position1_g213 );
			float4 ifLocalVar51_g210 = 0;
			if( temp_output_52_0_g210 == 3.0 )
				ifLocalVar51_g210 = localAudioLinkLerp1_g213;
			float4 color111_g210 = IsGammaSpace() ? float4(1,1,1,0) : float4(1,1,1,0);
			float4 ifLocalVar110_g210 = 0;
			if( temp_output_52_0_g210 == 4.0 )
				ifLocalVar110_g210 = color111_g210;
			float3 hsvTorgb116_g210 = HSVToRGB( float3(temp_output_55_0_g210,1.0,1.0) );
			float3 ifLocalVar117_g210 = 0;
			if( temp_output_52_0_g210 == 5.0 )
				ifLocalVar117_g210 = hsvTorgb116_g210;
			float4 temp_output_53_0_g210 = ( ifLocalVar49_g210 + ifLocalVar79_g210 + ifLocalVar50_g210 + ifLocalVar51_g210 + ifLocalVar110_g210 + float4( ifLocalVar117_g210 , 0.0 ) );
			float4 temp_output_2_0_g216 = temp_output_53_0_g210;
			float4 ifLocalVar107_g210 = 0;
			if( temp_output_106_0_g210 == 0.0 )
				ifLocalVar107_g210 = ( ( ( break5_g216.r * 0.2 ) + ( break5_g216.g * 0.7 ) + ( break5_g216.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g216 * temp_output_2_0_g216 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g216 ) * ( 1.0 - temp_output_2_0_g216 ) ) ) );
			float4 ifLocalVar108_g210 = 0;
			if( temp_output_106_0_g210 == 1.0 )
				ifLocalVar108_g210 = ( temp_output_8_0_g210 * temp_output_53_0_g210 );
			float4 ifLocalVar112_g210 = 0;
			if( temp_output_106_0_g210 == 2.0 )
				ifLocalVar112_g210 = temp_output_53_0_g210;
			float GlowMap232_g116 = break12_g116.g;
			int temp_output_106_0_g202 = _QBlendMode2;
			int temp_output_27_0_g202 = _QBand2;
			int Band3_g209 = temp_output_27_0_g202;
			float temp_output_1_0_g202 = (( _QInvertDirection2 )?( ( 1.0 - Direction11_g116 ) ):( Direction11_g116 ));
			float temp_output_5_0_g202 = ( _QHistory2 * temp_output_1_0_g202 );
			float Delay3_g209 = (( _QSmoothHistory )?( temp_output_5_0_g202 ):( floor( temp_output_5_0_g202 ) ));
			float localAudioLinkLerp3_g209 = AudioLinkLerp3_g209( Band3_g209 , Delay3_g209 );
			float temp_output_8_0_g202 = localAudioLinkLerp3_g209;
			float4 temp_cast_16 = (temp_output_8_0_g202).xxxx;
			float4 temp_output_1_0_g208 = temp_cast_16;
			float4 break5_g208 = temp_output_1_0_g208;
			int temp_output_52_0_g202 = _QType2;
			float temp_output_29_0_g202 = _QColorOffset2;
			int Band6_g206 = temp_output_27_0_g202;
			int Mode6_g206 = ( ( (int)_QColorRotationMode2 * 2 ) + (int)_QColorRotationSpeed2 );
			int localAudioLinkDecodeDataAsUInt6_g206 = AudioLinkDecodeDataAsUInt6_g206( Band6_g206 , Mode6_g206 );
			float temp_output_55_0_g202 = ( ( ( localAudioLinkDecodeDataAsUInt6_g206 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g202 = ( temp_output_55_0_g202 * (int)(( _QUseColorRotation2 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g202 = _QEffectScale2;
			int Index1_g203 = (int)floor( ( frac( ( ( temp_output_29_0_g202 + temp_output_95_0_g202 ) * temp_output_103_0_g202 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g203 = AudioLinkData1_g203( Index1_g203 );
			float4 ifLocalVar49_g202 = 0;
			if( temp_output_52_0_g202 == 0.0 )
				ifLocalVar49_g202 = localAudioLinkData1_g203;
			int Index1_g207 = (int)floor( ( frac( ( ( temp_output_29_0_g202 + temp_output_95_0_g202 + temp_output_1_0_g202 ) * temp_output_103_0_g202 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g207 = AudioLinkData1_g207( Index1_g207 );
			float4 ifLocalVar79_g202 = 0;
			if( temp_output_52_0_g202 == 1.0 )
				ifLocalVar79_g202 = localAudioLinkData1_g207;
			float Position1_g204 = saturate( frac( ( ( temp_output_8_0_g202 + temp_output_29_0_g202 + temp_output_95_0_g202 ) * temp_output_103_0_g202 ) ) );
			float4 localAudioLinkLerp1_g204 = AudioLinkLerp1_g204( Position1_g204 );
			float4 ifLocalVar50_g202 = 0;
			if( temp_output_52_0_g202 == 2.0 )
				ifLocalVar50_g202 = localAudioLinkLerp1_g204;
			float Position1_g205 = saturate( frac( ( ( temp_output_29_0_g202 + temp_output_1_0_g202 + temp_output_95_0_g202 ) * temp_output_103_0_g202 ) ) );
			float4 localAudioLinkLerp1_g205 = AudioLinkLerp1_g205( Position1_g205 );
			float4 ifLocalVar51_g202 = 0;
			if( temp_output_52_0_g202 == 3.0 )
				ifLocalVar51_g202 = localAudioLinkLerp1_g205;
			float4 color111_g202 = IsGammaSpace() ? float4(1,1,1,0) : float4(1,1,1,0);
			float4 ifLocalVar110_g202 = 0;
			if( temp_output_52_0_g202 == 4.0 )
				ifLocalVar110_g202 = color111_g202;
			float3 hsvTorgb116_g202 = HSVToRGB( float3(temp_output_55_0_g202,1.0,1.0) );
			float3 ifLocalVar117_g202 = 0;
			if( temp_output_52_0_g202 == 5.0 )
				ifLocalVar117_g202 = hsvTorgb116_g202;
			float4 temp_output_53_0_g202 = ( ifLocalVar49_g202 + ifLocalVar79_g202 + ifLocalVar50_g202 + ifLocalVar51_g202 + ifLocalVar110_g202 + float4( ifLocalVar117_g202 , 0.0 ) );
			float4 temp_output_2_0_g208 = temp_output_53_0_g202;
			float4 ifLocalVar107_g202 = 0;
			if( temp_output_106_0_g202 == 0.0 )
				ifLocalVar107_g202 = ( ( ( break5_g208.r * 0.2 ) + ( break5_g208.g * 0.7 ) + ( break5_g208.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g208 * temp_output_2_0_g208 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g208 ) * ( 1.0 - temp_output_2_0_g208 ) ) ) );
			float4 ifLocalVar108_g202 = 0;
			if( temp_output_106_0_g202 == 1.0 )
				ifLocalVar108_g202 = ( temp_output_8_0_g202 * temp_output_53_0_g202 );
			float4 ifLocalVar112_g202 = 0;
			if( temp_output_106_0_g202 == 2.0 )
				ifLocalVar112_g202 = temp_output_53_0_g202;
			float GlowMap331_g116 = break12_g116.b;
			int temp_output_106_0_g194 = _QBlendMode3;
			int temp_output_27_0_g194 = _QBand3;
			int Band3_g201 = temp_output_27_0_g194;
			float temp_output_1_0_g194 = (( _QInvertDirection3 )?( ( 1.0 - Direction11_g116 ) ):( Direction11_g116 ));
			float temp_output_5_0_g194 = ( _QHistory3 * temp_output_1_0_g194 );
			float Delay3_g201 = (( _QSmoothHistory )?( temp_output_5_0_g194 ):( floor( temp_output_5_0_g194 ) ));
			float localAudioLinkLerp3_g201 = AudioLinkLerp3_g201( Band3_g201 , Delay3_g201 );
			float temp_output_8_0_g194 = localAudioLinkLerp3_g201;
			float4 temp_cast_31 = (temp_output_8_0_g194).xxxx;
			float4 temp_output_1_0_g200 = temp_cast_31;
			float4 break5_g200 = temp_output_1_0_g200;
			int temp_output_52_0_g194 = _QType3;
			float temp_output_29_0_g194 = _QColorOffset3;
			int Band6_g198 = temp_output_27_0_g194;
			int Mode6_g198 = ( ( (int)_QColorRotationMode3 * 2 ) + (int)_QColorRotationSpeed3 );
			int localAudioLinkDecodeDataAsUInt6_g198 = AudioLinkDecodeDataAsUInt6_g198( Band6_g198 , Mode6_g198 );
			float temp_output_55_0_g194 = ( ( ( localAudioLinkDecodeDataAsUInt6_g198 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g194 = ( temp_output_55_0_g194 * (int)(( _QUseColorRotation3 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g194 = _QEffectScale3;
			int Index1_g195 = (int)floor( ( frac( ( ( temp_output_29_0_g194 + temp_output_95_0_g194 ) * temp_output_103_0_g194 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g195 = AudioLinkData1_g195( Index1_g195 );
			float4 ifLocalVar49_g194 = 0;
			if( temp_output_52_0_g194 == 0.0 )
				ifLocalVar49_g194 = localAudioLinkData1_g195;
			int Index1_g199 = (int)floor( ( frac( ( ( temp_output_29_0_g194 + temp_output_95_0_g194 + temp_output_1_0_g194 ) * temp_output_103_0_g194 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g199 = AudioLinkData1_g199( Index1_g199 );
			float4 ifLocalVar79_g194 = 0;
			if( temp_output_52_0_g194 == 1.0 )
				ifLocalVar79_g194 = localAudioLinkData1_g199;
			float Position1_g196 = saturate( frac( ( ( temp_output_8_0_g194 + temp_output_29_0_g194 + temp_output_95_0_g194 ) * temp_output_103_0_g194 ) ) );
			float4 localAudioLinkLerp1_g196 = AudioLinkLerp1_g196( Position1_g196 );
			float4 ifLocalVar50_g194 = 0;
			if( temp_output_52_0_g194 == 2.0 )
				ifLocalVar50_g194 = localAudioLinkLerp1_g196;
			float Position1_g197 = saturate( frac( ( ( temp_output_29_0_g194 + temp_output_1_0_g194 + temp_output_95_0_g194 ) * temp_output_103_0_g194 ) ) );
			float4 localAudioLinkLerp1_g197 = AudioLinkLerp1_g197( Position1_g197 );
			float4 ifLocalVar51_g194 = 0;
			if( temp_output_52_0_g194 == 3.0 )
				ifLocalVar51_g194 = localAudioLinkLerp1_g197;
			float4 color111_g194 = IsGammaSpace() ? float4(1,1,1,0) : float4(1,1,1,0);
			float4 ifLocalVar110_g194 = 0;
			if( temp_output_52_0_g194 == 4.0 )
				ifLocalVar110_g194 = color111_g194;
			float3 hsvTorgb116_g194 = HSVToRGB( float3(temp_output_55_0_g194,1.0,1.0) );
			float3 ifLocalVar117_g194 = 0;
			if( temp_output_52_0_g194 == 5.0 )
				ifLocalVar117_g194 = hsvTorgb116_g194;
			float4 temp_output_53_0_g194 = ( ifLocalVar49_g194 + ifLocalVar79_g194 + ifLocalVar50_g194 + ifLocalVar51_g194 + ifLocalVar110_g194 + float4( ifLocalVar117_g194 , 0.0 ) );
			float4 temp_output_2_0_g200 = temp_output_53_0_g194;
			float4 ifLocalVar107_g194 = 0;
			if( temp_output_106_0_g194 == 0.0 )
				ifLocalVar107_g194 = ( ( ( break5_g200.r * 0.2 ) + ( break5_g200.g * 0.7 ) + ( break5_g200.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g200 * temp_output_2_0_g200 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g200 ) * ( 1.0 - temp_output_2_0_g200 ) ) ) );
			float4 ifLocalVar108_g194 = 0;
			if( temp_output_106_0_g194 == 1.0 )
				ifLocalVar108_g194 = ( temp_output_8_0_g194 * temp_output_53_0_g194 );
			float4 ifLocalVar112_g194 = 0;
			if( temp_output_106_0_g194 == 2.0 )
				ifLocalVar112_g194 = temp_output_53_0_g194;
			float GlowMap433_g116 = break12_g116.a;
			int temp_output_106_0_g186 = _QBlendMode4;
			int temp_output_27_0_g186 = _QBand4;
			int Band3_g193 = temp_output_27_0_g186;
			float temp_output_1_0_g186 = (( _QInvertDirection4 )?( ( 1.0 - Direction11_g116 ) ):( Direction11_g116 ));
			float temp_output_5_0_g186 = ( _QHistory4 * temp_output_1_0_g186 );
			float Delay3_g193 = (( _QSmoothHistory )?( temp_output_5_0_g186 ):( floor( temp_output_5_0_g186 ) ));
			float localAudioLinkLerp3_g193 = AudioLinkLerp3_g193( Band3_g193 , Delay3_g193 );
			float temp_output_8_0_g186 = localAudioLinkLerp3_g193;
			float4 temp_cast_46 = (temp_output_8_0_g186).xxxx;
			float4 temp_output_1_0_g192 = temp_cast_46;
			float4 break5_g192 = temp_output_1_0_g192;
			int temp_output_52_0_g186 = _QType4;
			float temp_output_29_0_g186 = _QColorOffset4;
			int Band6_g190 = temp_output_27_0_g186;
			int Mode6_g190 = ( ( (int)_QColorRotationMode4 * 2 ) + (int)_QColorRotationSpeed4 );
			int localAudioLinkDecodeDataAsUInt6_g190 = AudioLinkDecodeDataAsUInt6_g190( Band6_g190 , Mode6_g190 );
			float temp_output_55_0_g186 = ( ( ( localAudioLinkDecodeDataAsUInt6_g190 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g186 = ( temp_output_55_0_g186 * (int)(( _QUseColorRotation4 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g186 = _QEffectScale4;
			int Index1_g187 = (int)floor( ( frac( ( ( temp_output_29_0_g186 + temp_output_95_0_g186 ) * temp_output_103_0_g186 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g187 = AudioLinkData1_g187( Index1_g187 );
			float4 ifLocalVar49_g186 = 0;
			if( temp_output_52_0_g186 == 0.0 )
				ifLocalVar49_g186 = localAudioLinkData1_g187;
			int Index1_g191 = (int)floor( ( frac( ( ( temp_output_29_0_g186 + temp_output_95_0_g186 + temp_output_1_0_g186 ) * temp_output_103_0_g186 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g191 = AudioLinkData1_g191( Index1_g191 );
			float4 ifLocalVar79_g186 = 0;
			if( temp_output_52_0_g186 == 1.0 )
				ifLocalVar79_g186 = localAudioLinkData1_g191;
			float Position1_g188 = saturate( frac( ( ( temp_output_8_0_g186 + temp_output_29_0_g186 + temp_output_95_0_g186 ) * temp_output_103_0_g186 ) ) );
			float4 localAudioLinkLerp1_g188 = AudioLinkLerp1_g188( Position1_g188 );
			float4 ifLocalVar50_g186 = 0;
			if( temp_output_52_0_g186 == 2.0 )
				ifLocalVar50_g186 = localAudioLinkLerp1_g188;
			float Position1_g189 = saturate( frac( ( ( temp_output_29_0_g186 + temp_output_1_0_g186 + temp_output_95_0_g186 ) * temp_output_103_0_g186 ) ) );
			float4 localAudioLinkLerp1_g189 = AudioLinkLerp1_g189( Position1_g189 );
			float4 ifLocalVar51_g186 = 0;
			if( temp_output_52_0_g186 == 3.0 )
				ifLocalVar51_g186 = localAudioLinkLerp1_g189;
			float4 color111_g186 = IsGammaSpace() ? float4(1,1,1,0) : float4(1,1,1,0);
			float4 ifLocalVar110_g186 = 0;
			if( temp_output_52_0_g186 == 4.0 )
				ifLocalVar110_g186 = color111_g186;
			float3 hsvTorgb116_g186 = HSVToRGB( float3(temp_output_55_0_g186,1.0,1.0) );
			float3 ifLocalVar117_g186 = 0;
			if( temp_output_52_0_g186 == 5.0 )
				ifLocalVar117_g186 = hsvTorgb116_g186;
			float4 temp_output_53_0_g186 = ( ifLocalVar49_g186 + ifLocalVar79_g186 + ifLocalVar50_g186 + ifLocalVar51_g186 + ifLocalVar110_g186 + float4( ifLocalVar117_g186 , 0.0 ) );
			float4 temp_output_2_0_g192 = temp_output_53_0_g186;
			float4 ifLocalVar107_g186 = 0;
			if( temp_output_106_0_g186 == 0.0 )
				ifLocalVar107_g186 = ( ( ( break5_g192.r * 0.2 ) + ( break5_g192.g * 0.7 ) + ( break5_g192.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g192 * temp_output_2_0_g192 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g192 ) * ( 1.0 - temp_output_2_0_g192 ) ) ) );
			float4 ifLocalVar108_g186 = 0;
			if( temp_output_106_0_g186 == 1.0 )
				ifLocalVar108_g186 = ( temp_output_8_0_g186 * temp_output_53_0_g186 );
			float4 ifLocalVar112_g186 = 0;
			if( temp_output_106_0_g186 == 2.0 )
				ifLocalVar112_g186 = temp_output_53_0_g186;
			float localIfAudioLinkv2Exists1_g117 = IfAudioLinkv2Exists1_g117();
			float4 lerpResult55_g116 = lerp( float4( 0,0,0,0 ) , ( _QuantumGlowColor * ( (( _QBandEnable1 )?( ( _QGlowColorBand1 * ( GlowMap130_g116 * ( ifLocalVar107_g210 + ifLocalVar108_g210 + ifLocalVar112_g210 ) ) * _QuantumGlowMultiply1 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable2 )?( ( _QGlowColorBand2 * ( GlowMap232_g116 * ( ifLocalVar107_g202 + ifLocalVar108_g202 + ifLocalVar112_g202 ) ) * _QuantumGlowMultiply2 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable3 )?( ( _QGlowColorBand3 * ( GlowMap331_g116 * ( ifLocalVar107_g194 + ifLocalVar108_g194 + ifLocalVar112_g194 ) ) * _QuantumGlowMultiply3 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable4 )?( ( _QGlowColorBand4 * ( GlowMap433_g116 * ( ifLocalVar107_g186 + ifLocalVar108_g186 + ifLocalVar112_g186 ) ) * _QuantumGlowMultiply4 ) ):( float4( 0,0,0,0 ) )) ) * _QuantumGlowMultiplyGlobal ) , localIfAudioLinkv2Exists1_g117);
			float4 Emission179 = ( MainEmission88 + (( _QEnableGlobal )?( lerpResult55_g116 ):( float4( 0,0,0,0 ) )) );
			o.Emission = Emission179.rgb;
			float2 uv_MetallicGlossMap = i.uv_texcoord * _MetallicGlossMap_ST.xy + _MetallicGlossMap_ST.zw;
			float4 Metallic83 = tex2D( _MetallicGlossMap, uv_MetallicGlossMap );
			float4 break199 = Metallic83;
			o.Metallic = break199;
			o.Smoothness = break199.a;
			o.Alpha = 1;
			float2 uv_AlphaMap = i.uv_texcoord * _AlphaMap_ST.xy + _AlphaMap_ST.zw;
			float AlphaMap212 = tex2D( _AlphaMap, uv_AlphaMap ).r;
			clip( AlphaMap212 - _Cutoff );
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "Saphi.QuantumShader.QuantumShaderUI"
}
/*ASEBEGIN
Version=19603
Node;AmplifyShaderEditor.CommentaryNode;203;-1826,158;Inherit;False;1799.691;2137.696;Base Textures;32;214;213;212;205;210;195;204;64;63;209;83;10;28;208;14;9;11;206;15;29;207;12;88;5;202;4;201;200;56;53;52;55;;1,1,1,1;0;0
Node;AmplifyShaderEditor.TexturePropertyNode;55;-1776,1552;Inherit;True;Property;_EmissionMap;Emission Map;2;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.ColorNode;52;-1232,1760;Inherit;False;Property;_EmissionColor;Emission Color;4;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;4,4,4,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;53;-1264,1552;Inherit;True;Property;_TextureSample5;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;56;-880,1552;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;200;-864,1664;Inherit;False;Property;_Emission;Emission;87;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;201;-704,1552;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;4;-1760,208;Inherit;True;Property;_MainTex;Main Tex;0;0;Create;True;0;0;0;False;0;False;None;a16b3161c8c05f54ba87ec06bfdd6b82;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.ToggleSwitchNode;202;-560,1552;Inherit;False;Property;_EnableEmission;EnableEmission;86;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;5;-1456,208;Inherit;False;MainTexTex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;88;-272,1552;Inherit;False;MainEmission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;12;-1760,656;Inherit;True;Property;_BumpMap;NormalMap;5;0;Create;False;0;0;0;False;0;False;None;aef25913bc0271f498e5006238d33577;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;207;-1760,880;Inherit;True;Property;_DetailNormalMap;Detail Normal Map;7;0;Create;False;0;0;0;False;0;False;None;aef25913bc0271f498e5006238d33577;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;29;-1760,1264;Inherit;True;Property;_MetallicGlossMap;Metallic Gloss Map;9;0;Create;False;0;0;0;False;0;False;None;95bc897e80af50446bc05c7e8d2649ae;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;15;-1536,768;Inherit;False;Property;_BumpScale;Normal Scale;6;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;206;-1536,992;Inherit;False;Property;_DetailNormalMapScale;Detail Normal Map Scale;10;0;Create;False;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;11;-1184,416;Inherit;False;Property;_Color;Color;1;0;Create;False;0;0;0;False;0;False;0,0,0,0;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;9;-1248,208;Inherit;True;Property;_TextureSample0;Texture Sample 0;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;14;-1248,656;Inherit;True;Property;_TextureSample1;Texture Sample 1;3;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;208;-1248,880;Inherit;True;Property;_TextureSample8;Texture Sample 1;3;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;28;-1248,1264;Inherit;True;Property;_TextureSample3;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.GetLocalVarNode;89;144,2048;Inherit;False;88;MainEmission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;198;176,2128;Inherit;False;QuatumGlow;11;;116;7730a8711ab108044bac907ea573069c;0;0;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;214;-1760,2032;Inherit;True;Property;_AlphaMap;AlphaMap;3;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.CommentaryNode;211;494,158;Inherit;False;1076;675;Output;7;75;199;65;81;74;0;215;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;10;-768,208;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;83;-768,1264;Inherit;False;Metallic;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendNormalsNode;209;-896,656;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;176;400,2048;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;213;-1248,2032;Inherit;True;Property;_TextureSample9;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RegisterLocalVarNode;63;-576,208;Inherit;False;Albedo;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;64;-480,656;Inherit;True;Normal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;75;544,576;Inherit;False;83;Metallic;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;179;624,2048;Inherit;False;Emission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;212;-672,2080;Inherit;False;AlphaMap;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;204;-403.0739,1879.228;Inherit;False;Property;_ShowRendering;ShowRendering;88;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;195;-400,1792;Inherit;False;Property;_ShowMain;ShowMain;85;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;205;-592,1872;Inherit;False;Property;_Culling;Culling;84;1;[Enum];Create;False;0;1;Option1;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;199;760.534,552.9935;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.GetLocalVarNode;65;992,288;Inherit;False;64;Normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;74;960,208;Inherit;False;63;Albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;81;960,384;Inherit;False;179;Emission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;215;992,656;Inherit;False;212;AlphaMap;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;210;-688,1792;Inherit;False;Property;_Cutoff;Cutoff;8;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;1296,336;Float;False;True;-1;4;Saphi.QuantumShader.QuantumShaderUI;0;0;Standard;Saphi/QuantumShaderMetallicCutout;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;;0;False;;False;0;False;;0;False;;False;0;Masked;0.5;True;True;0;False;TransparentCutout;;AlphaTest;All;12;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;0;0;False;;0;False;;0;0;False;;0;False;;0;False;;0;False;;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;;-1;-1;-1;-1;0;False;0;0;True;_Culling;-1;0;False;;1;Include;;True;1ec20832dfbb48343b8e0764e0864276;Custom;False;0;0;;0;0;False;0.1;False;;0;False;;False;17;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;16;FLOAT4;0,0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;53;0;55;0
WireConnection;56;0;53;0
WireConnection;56;1;52;0
WireConnection;201;0;56;0
WireConnection;201;1;200;0
WireConnection;202;1;201;0
WireConnection;5;0;4;0
WireConnection;88;0;202;0
WireConnection;9;0;5;0
WireConnection;14;0;12;0
WireConnection;14;5;15;0
WireConnection;208;0;207;0
WireConnection;208;5;206;0
WireConnection;28;0;29;0
WireConnection;10;0;9;0
WireConnection;10;1;11;0
WireConnection;83;0;28;0
WireConnection;209;0;14;0
WireConnection;209;1;208;0
WireConnection;176;0;89;0
WireConnection;176;1;198;0
WireConnection;213;0;214;0
WireConnection;63;0;10;0
WireConnection;64;0;209;0
WireConnection;179;0;176;0
WireConnection;212;0;213;1
WireConnection;199;0;75;0
WireConnection;0;0;74;0
WireConnection;0;1;65;0
WireConnection;0;2;81;0
WireConnection;0;3;199;0
WireConnection;0;4;199;3
WireConnection;0;10;215;0
ASEEND*/
//CHKSM=5843E7D537154866DCFF025EE6DA7A7B0AF7E65D