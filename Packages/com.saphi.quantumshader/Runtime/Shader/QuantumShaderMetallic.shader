// Made with Amplify Shader Editor v1.9.6.3
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Saphi/QuantumShaderMetallic"
{
	Properties
	{
		_MainTex("Main Tex", 2D) = "white" {}
		_Color("Color", Color) = (0,0,0,0)
		_EmissionMap("Emission Map", 2D) = "white" {}
		[HDR]_EmissionColor("Emission Color", Color) = (0,0,0,0)
		_BumpMap("NormalMap", 2D) = "bump" {}
		_BumpScale("Normal Scale", Float) = 1
		_MetallicGlossMap("Metallic Gloss Map", 2D) = "black" {}
		_QGlowMap("GlowMap", 2D) = "black" {}
		_QDirection("Direction", 2D) = "black" {}
		[HDR]_QuantumGlowColor("QuantumGlowColor", Color) = (1,1,1,0)
		[ToggleUI]_QSmoothHistory("Q Smooth History", Float) = 1
		[HDR]_QGlowColorBand1("QGlowColorBand1", Color) = (1,1,1,0)
		[Toggle]_QInvertDirection1("QInvertDirection1", Float) = 0
		[Enum(Band 1,0,Band 2,1,Band 3,2,Band 4,3)]_QBand1("QBand1", Int) = 0
		_QColorOffset1("QColorOffset1", Range( 0 , 1)) = 0
		_QHistory1("QHistory1", Range( 0 , 128)) = 0
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
		_ShowMain("ShowMain", Float) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" "IsEmissive" = "true"  }
		Cull Back
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
		uniform float _ShowQuantum;
		uniform float _ShowQuantumBand1;
		uniform float _ShowQuantumBand2;
		uniform float _ShowMain;
		uniform sampler2D _BumpMap;
		uniform float4 _BumpMap_ST;
		uniform float _BumpScale;
		uniform sampler2D _MainTex;
		uniform float4 _MainTex_ST;
		uniform float4 _Color;
		uniform sampler2D _EmissionMap;
		uniform float4 _EmissionMap_ST;
		uniform float4 _EmissionColor;
		uniform float _QEnableGlobal;
		uniform float4 _QuantumGlowColor;
		uniform float _QBandEnable1;
		uniform float4 _QGlowColorBand1;
		uniform sampler2D _QGlowMap;
		uniform float4 _QGlowMap_ST;
		uniform int _QBand1;
		uniform float _QSmoothHistory;
		uniform float _QHistory1;
		uniform float _QInvertDirection1;
		uniform sampler2D _QDirection;
		uniform float4 _QDirection_ST;
		uniform float _QColorOffset1;
		uniform float _QuantumGlowMultiply1;
		uniform float _QBandEnable2;
		uniform float4 _QGlowColorBand2;
		uniform int _QBand2;
		uniform float _QHistory2;
		uniform float _QInvertDirection2;
		uniform float _QColorOffset2;
		uniform float _QuantumGlowMultiply2;
		uniform float _QBandEnable3;
		uniform float4 _QGlowColorBand3;
		uniform int _QBand3;
		uniform float _QHistory3;
		uniform float _QInvertDirection3;
		uniform float _QColorOffset3;
		uniform float _QuantumGlowMultiply3;
		uniform float _QBandEnable4;
		uniform float4 _QGlowColorBand4;
		uniform int _QBand4;
		uniform float _QHistory4;
		uniform float _QInvertDirection4;
		uniform float _QColorOffset4;
		uniform float _QuantumGlowMultiply4;
		uniform float _QuantumGlowMultiplyGlobal;
		uniform sampler2D _MetallicGlossMap;
		uniform float4 _MetallicGlossMap_ST;


		inline float AudioLinkLerp3_g120( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline float4 AudioLinkData1_g118( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g124( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline float4 AudioLinkData1_g122( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g128( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline float4 AudioLinkData1_g126( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g132( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline float4 AudioLinkData1_g130( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		float IfAudioLinkv2Exists1_g133(  )
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
			float3 Normal64 = UnpackScaleNormal( tex2D( _BumpMap, uv_BumpMap ), _BumpScale );
			o.Normal = Normal64;
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST.xy + _MainTex_ST.zw;
			float4 Albedo63 = ( tex2D( _MainTex, uv_MainTex ) * _Color );
			o.Albedo = Albedo63.rgb;
			float2 uv_EmissionMap = i.uv_texcoord * _EmissionMap_ST.xy + _EmissionMap_ST.zw;
			float4 MainEmission88 = ( tex2D( _EmissionMap, uv_EmissionMap ) * _EmissionColor );
			float2 uv_QGlowMap = i.uv_texcoord * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			float4 GlowMap7_g116 = tex2D( _QGlowMap, uv_QGlowMap );
			float4 break12_g116 = GlowMap7_g116;
			float GlowMap130_g116 = break12_g116.r;
			int Band3_g120 = _QBand1;
			float2 uv_QDirection = i.uv_texcoord * _QDirection_ST.xy + _QDirection_ST.zw;
			float4 DirectionMap5_g116 = tex2D( _QDirection, uv_QDirection );
			float Direction11_g116 = DirectionMap5_g116.r;
			float temp_output_5_0_g117 = ( _QHistory1 * (( _QInvertDirection1 )?( ( 1.0 - Direction11_g116 ) ):( Direction11_g116 )) );
			float Delay3_g120 = (( _QSmoothHistory )?( temp_output_5_0_g117 ):( floor( temp_output_5_0_g117 ) ));
			float localAudioLinkLerp3_g120 = AudioLinkLerp3_g120( Band3_g120 , Delay3_g120 );
			float4 temp_cast_1 = (localAudioLinkLerp3_g120).xxxx;
			float4 temp_output_1_0_g119 = temp_cast_1;
			float4 break5_g119 = temp_output_1_0_g119;
			int Index1_g118 = (int)floor( ( _QColorOffset1 * 127.0 ) );
			float4 localAudioLinkData1_g118 = AudioLinkData1_g118( Index1_g118 );
			float4 temp_output_2_0_g119 = localAudioLinkData1_g118;
			float GlowMap232_g116 = break12_g116.g;
			int Band3_g124 = _QBand2;
			float temp_output_5_0_g121 = ( _QHistory2 * (( _QInvertDirection2 )?( ( 1.0 - Direction11_g116 ) ):( Direction11_g116 )) );
			float Delay3_g124 = (( _QSmoothHistory )?( temp_output_5_0_g121 ):( floor( temp_output_5_0_g121 ) ));
			float localAudioLinkLerp3_g124 = AudioLinkLerp3_g124( Band3_g124 , Delay3_g124 );
			float4 temp_cast_4 = (localAudioLinkLerp3_g124).xxxx;
			float4 temp_output_1_0_g123 = temp_cast_4;
			float4 break5_g123 = temp_output_1_0_g123;
			int Index1_g122 = (int)floor( ( _QColorOffset2 * 127.0 ) );
			float4 localAudioLinkData1_g122 = AudioLinkData1_g122( Index1_g122 );
			float4 temp_output_2_0_g123 = localAudioLinkData1_g122;
			float GlowMap331_g116 = break12_g116.b;
			int Band3_g128 = _QBand3;
			float temp_output_5_0_g125 = ( _QHistory3 * (( _QInvertDirection3 )?( ( 1.0 - Direction11_g116 ) ):( Direction11_g116 )) );
			float Delay3_g128 = (( _QSmoothHistory )?( temp_output_5_0_g125 ):( floor( temp_output_5_0_g125 ) ));
			float localAudioLinkLerp3_g128 = AudioLinkLerp3_g128( Band3_g128 , Delay3_g128 );
			float4 temp_cast_7 = (localAudioLinkLerp3_g128).xxxx;
			float4 temp_output_1_0_g127 = temp_cast_7;
			float4 break5_g127 = temp_output_1_0_g127;
			int Index1_g126 = (int)floor( ( _QColorOffset3 * 127.0 ) );
			float4 localAudioLinkData1_g126 = AudioLinkData1_g126( Index1_g126 );
			float4 temp_output_2_0_g127 = localAudioLinkData1_g126;
			float GlowMap433_g116 = break12_g116.a;
			int Band3_g132 = _QBand4;
			float temp_output_5_0_g129 = ( _QHistory4 * (( _QInvertDirection4 )?( ( 1.0 - Direction11_g116 ) ):( Direction11_g116 )) );
			float Delay3_g132 = (( _QSmoothHistory )?( temp_output_5_0_g129 ):( floor( temp_output_5_0_g129 ) ));
			float localAudioLinkLerp3_g132 = AudioLinkLerp3_g132( Band3_g132 , Delay3_g132 );
			float4 temp_cast_10 = (localAudioLinkLerp3_g132).xxxx;
			float4 temp_output_1_0_g131 = temp_cast_10;
			float4 break5_g131 = temp_output_1_0_g131;
			int Index1_g130 = (int)floor( ( _QColorOffset4 * 127.0 ) );
			float4 localAudioLinkData1_g130 = AudioLinkData1_g130( Index1_g130 );
			float4 temp_output_2_0_g131 = localAudioLinkData1_g130;
			float localIfAudioLinkv2Exists1_g133 = IfAudioLinkv2Exists1_g133();
			float4 lerpResult55_g116 = lerp( float4( 0,0,0,0 ) , ( _QuantumGlowColor * ( (( _QBandEnable1 )?( ( _QGlowColorBand1 * ( GlowMap130_g116 * ( ( ( break5_g119.r * 0.2 ) + ( break5_g119.g * 0.7 ) + ( break5_g119.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g119 * temp_output_2_0_g119 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g119 ) * ( 1.0 - temp_output_2_0_g119 ) ) ) ) ) * _QuantumGlowMultiply1 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable2 )?( ( _QGlowColorBand2 * ( GlowMap232_g116 * ( ( ( break5_g123.r * 0.2 ) + ( break5_g123.g * 0.7 ) + ( break5_g123.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g123 * temp_output_2_0_g123 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g123 ) * ( 1.0 - temp_output_2_0_g123 ) ) ) ) ) * _QuantumGlowMultiply2 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable3 )?( ( _QGlowColorBand3 * ( GlowMap331_g116 * ( ( ( break5_g127.r * 0.2 ) + ( break5_g127.g * 0.7 ) + ( break5_g127.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g127 * temp_output_2_0_g127 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g127 ) * ( 1.0 - temp_output_2_0_g127 ) ) ) ) ) * _QuantumGlowMultiply3 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable4 )?( float4( 0,0,0,0 ) ):( ( _QGlowColorBand4 * ( GlowMap433_g116 * ( ( ( break5_g131.r * 0.2 ) + ( break5_g131.g * 0.7 ) + ( break5_g131.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g131 * temp_output_2_0_g131 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g131 ) * ( 1.0 - temp_output_2_0_g131 ) ) ) ) ) * _QuantumGlowMultiply4 ) )) ) * _QuantumGlowMultiplyGlobal ) , localIfAudioLinkv2Exists1_g133);
			float4 Emission179 = ( MainEmission88 + (( _QEnableGlobal )?( lerpResult55_g116 ):( float4( 0,0,0,0 ) )) );
			o.Emission = Emission179.rgb;
			float2 uv_MetallicGlossMap = i.uv_texcoord * _MetallicGlossMap_ST.xy + _MetallicGlossMap_ST.zw;
			float4 Metallic83 = tex2D( _MetallicGlossMap, uv_MetallicGlossMap );
			float4 break199 = Metallic83;
			o.Metallic = break199;
			o.Smoothness = break199.a;
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "QuantumShaderUI"
}
/*ASEBEGIN
Version=19603
Node;AmplifyShaderEditor.CommentaryNode;102;-1826,158;Inherit;False;1492;1835;Base Textures;19;28;5;83;52;53;11;56;10;88;63;15;14;64;9;4;12;29;55;195;;1,1,1,1;0;0
Node;AmplifyShaderEditor.TexturePropertyNode;55;-1776,1552;Inherit;True;Property;_EmissionMap;Emission Map;2;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.ColorNode;52;-1232,1760;Inherit;False;Property;_EmissionColor;Emission Color;3;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;4,4,4,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;53;-1264,1552;Inherit;True;Property;_TextureSample5;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.TexturePropertyNode;4;-1760,208;Inherit;True;Property;_MainTex;Main Tex;0;0;Create;True;0;0;0;False;0;False;None;a16b3161c8c05f54ba87ec06bfdd6b82;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;56;-880,1552;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;29;-1760,1120;Inherit;True;Property;_MetallicGlossMap;Metallic Gloss Map;6;0;Create;False;0;0;0;False;0;False;None;95bc897e80af50446bc05c7e8d2649ae;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RegisterLocalVarNode;5;-1456,208;Inherit;False;MainTexTex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;88;-704,1552;Inherit;False;MainEmission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;28;-1248,1120;Inherit;True;Property;_TextureSample3;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;11;-1184,416;Inherit;False;Property;_Color;Color;1;0;Create;False;0;0;0;False;0;False;0,0,0,0;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;9;-1248,208;Inherit;True;Property;_TextureSample0;Texture Sample 0;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RangedFloatNode;15;-1488,768;Inherit;False;Property;_BumpScale;Normal Scale;5;0;Create;False;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;89;-64,2224;Inherit;False;88;MainEmission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;198;-32,2304;Inherit;False;QuatumGlow;7;;116;7730a8711ab108044bac907ea573069c;0;0;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;12;-1760,656;Inherit;True;Property;_BumpMap;NormalMap;4;0;Create;False;0;0;0;False;0;False;None;aef25913bc0271f498e5006238d33577;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;10;-768,208;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;14;-1248,656;Inherit;True;Property;_TextureSample1;Texture Sample 1;3;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleAddOpNode;176;192,2224;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;83;-768,1120;Inherit;False;Metallic;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;75;544,576;Inherit;False;83;Metallic;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;179;416,2224;Inherit;False;Emission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;63;-576,208;Inherit;False;Albedo;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;64;-848,656;Inherit;False;Normal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BreakToComponentsNode;199;760.534,552.9935;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.GetLocalVarNode;65;992,288;Inherit;False;64;Normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;81;960,384;Inherit;False;179;Emission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;195;-576,1856;Inherit;False;Property;_ShowMain;ShowMain;55;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;74;960,208;Inherit;False;63;Albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;1296,336;Float;False;True;-1;4;QuantumShaderUI;0;0;Standard;Saphi/QuantumShaderMetallic;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;;0;False;;False;0;False;;0;False;;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;All;12;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;0;0;False;;0;False;;0;0;False;;0;False;;0;False;;0;False;;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;;-1;0;False;;0;0;0;False;0.1;False;;0;False;;False;17;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;16;FLOAT4;0,0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;53;0;55;0
WireConnection;56;0;53;0
WireConnection;56;1;52;0
WireConnection;5;0;4;0
WireConnection;88;0;56;0
WireConnection;28;0;29;0
WireConnection;9;0;5;0
WireConnection;10;0;9;0
WireConnection;10;1;11;0
WireConnection;14;0;12;0
WireConnection;14;5;15;0
WireConnection;176;0;89;0
WireConnection;176;1;198;0
WireConnection;83;0;28;0
WireConnection;179;0;176;0
WireConnection;63;0;10;0
WireConnection;64;0;14;0
WireConnection;199;0;75;0
WireConnection;0;0;74;0
WireConnection;0;1;65;0
WireConnection;0;2;81;0
WireConnection;0;3;199;0
WireConnection;0;4;199;3
ASEEND*/
//CHKSM=8CC25AE9D62C018CD97BC4D95AE7860210092FB0