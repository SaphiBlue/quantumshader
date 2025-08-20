// Made with Amplify Shader Editor v1.9.9.3
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Saphi/QuantumShaderSpecularTransparentSimple"
{
	Properties
	{
		[Toggle( _LIGHTVOLUMES_ON )] _LightVolumes( "Enable Light Volumes", Float ) = 1
		[Toggle( _LIGHTVOLUMESSUBSTRACTLIGHTPROBES_ON )] _LightVolumesSubstractLightProbes( "LightVolumesSubstractLightProbes", Float ) = 1
		_LightVolumesBias( "Light Volumes Bias", Float ) = 0
		[Toggle( _SPECULARS_ON )] _Speculars( "Speculars", Float ) = 1
		[Toggle( _DOMINANTDIRSPECULARS_ON )] _DominantDirSpeculars( "Dominant Dir Speculars", Float ) = 0
		_ShowLightVolumes( "ShowLightVolumes", Float ) = 0
		_LightVolumesMultiplier( "LightVolumesMultiplier", Float ) = 1
		_Color( "Color", Color ) = ( 1, 1, 1, 0 )
		_SpecColor( "SpecColor", Color ) = ( 0.2980392, 0.2980392, 0.2980392, 1 )
		_Glossiness( "Smoothness", Range( 0, 1 ) ) = 1
		[Enum(UnityEngine.Rendering.CullMode)] _Culling( "Culling", Float ) = 2
		_ShowMain( "ShowMain", Float ) = 0
		_ShowRendering( "ShowRendering", Float ) = 0
		[Toggle( _Q_LIGHTVOLUMES_ON )] _Q_LightVolumes( "Q_LightVolumes", Float ) = 0
		[HideInInspector] __dirty( "", Int ) = 1
		[Header(Forward Rendering Options)]
		[ToggleOff] _SpecularHighlights("Specular Highlights", Float) = 1.0
		[ToggleOff] _GlossyReflections("Reflections", Float) = 1.0
	}

	SubShader
	{
		Tags{ "RenderType" = "TransparentCutout"  "Queue" = "Transparent+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
		Cull [_Culling]
		Blend SrcAlpha OneMinusSrcAlpha
		
		CGINCLUDE
		#include "Packages/com.saphi.quantumshader/Runtime/Shader/ThirdParty/LightVolumes/LightVolumes.cginc"
		#include "UnityStandardBRDF.cginc"
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 4.0
		#pragma shader_feature _SPECULARHIGHLIGHTS_OFF
		#pragma shader_feature _GLOSSYREFLECTIONS_OFF
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
		struct Input
		{
			float3 worldNormal;
			INTERNAL_DATA
			float3 worldPos;
		};

		uniform float _ShowLightVolumes;
		uniform float _LightVolumesMultiplier;
		uniform float _ShowRendering;
		uniform float _ShowMain;
		uniform float _Culling;
		uniform float4 _Color;
		uniform float _LightVolumesBias;
		uniform float _Glossiness;

		void surf( Input i , inout SurfaceOutputStandardSpecular o )
		{
			o.Normal = float3(0,0,1);
			float3 Albedo63 = _Color.rgb;
			o.Albedo = Albedo63;
			float localLightVolumesEnabled2_g512 = LightVolumesEnabled(  );
			float3 ase_normalWS = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 ase_normalOS = mul( unity_WorldToObject, float4( ase_normalWS, 0 ) );
			ase_normalOS = normalize( ase_normalOS );
			float3 normalizeResult3_g506 = normalize( (WorldNormalVector( i , ase_normalOS )) );
			float3 World_Normal53_g506 = normalizeResult3_g506;
			float3 worldNormal2_g511 = World_Normal53_g506;
			float3 appendResult13_g506 = (float3(unity_SHAr.w , unity_SHAg.w , unity_SHAb.w));
			float localLightVolumeSH1_g508 = ( 0.0 );
			float3 ase_positionWS = i.worldPos;
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
			#ifdef _LIGHTVOLUMESSUBSTRACTLIGHTPROBES_ON
				float3 staticSwitch129_g506 = ( staticSwitch17_g506 - appendResult13_g506 );
			#else
				float3 staticSwitch129_g506 = staticSwitch17_g506;
			#endif
			#ifdef _LIGHTVOLUMES_ON
				float3 staticSwitch21_g506 = staticSwitch129_g506;
			#else
				float3 staticSwitch21_g506 = appendResult13_g506;
			#endif
			float3 L025_g506 = staticSwitch21_g506;
			float3 L02_g511 = L025_g506;
			float3 temp_output_10_0_g506 = (unity_SHAr).xyz;
			#ifdef LIGHTMAP_ON
				float3 staticSwitch14_g506 = L1r1_g507;
			#else
				float3 staticSwitch14_g506 = L1r1_g508;
			#endif
			#ifdef _LIGHTVOLUMESSUBSTRACTLIGHTPROBES_ON
				float3 staticSwitch128_g506 = ( staticSwitch14_g506 - temp_output_10_0_g506 );
			#else
				float3 staticSwitch128_g506 = staticSwitch14_g506;
			#endif
			#ifdef _LIGHTVOLUMES_ON
				float3 staticSwitch18_g506 = staticSwitch128_g506;
			#else
				float3 staticSwitch18_g506 = temp_output_10_0_g506;
			#endif
			float3 L1r22_g506 = staticSwitch18_g506;
			float3 L1r2_g511 = L1r22_g506;
			float3 temp_output_11_0_g506 = (unity_SHAg).xyz;
			#ifdef LIGHTMAP_ON
				float3 staticSwitch15_g506 = L1g1_g507;
			#else
				float3 staticSwitch15_g506 = L1g1_g508;
			#endif
			#ifdef _LIGHTVOLUMESSUBSTRACTLIGHTPROBES_ON
				float3 staticSwitch123_g506 = ( staticSwitch15_g506 - temp_output_11_0_g506 );
			#else
				float3 staticSwitch123_g506 = staticSwitch15_g506;
			#endif
			#ifdef _LIGHTVOLUMES_ON
				float3 staticSwitch19_g506 = staticSwitch123_g506;
			#else
				float3 staticSwitch19_g506 = temp_output_11_0_g506;
			#endif
			float3 L1g23_g506 = staticSwitch19_g506;
			float3 L1g2_g511 = L1g23_g506;
			float3 temp_output_12_0_g506 = (unity_SHAb).xyz;
			#ifdef LIGHTMAP_ON
				float3 staticSwitch16_g506 = L1b1_g507;
			#else
				float3 staticSwitch16_g506 = L1b1_g508;
			#endif
			#ifdef _LIGHTVOLUMESSUBSTRACTLIGHTPROBES_ON
				float3 staticSwitch122_g506 = ( staticSwitch16_g506 - temp_output_12_0_g506 );
			#else
				float3 staticSwitch122_g506 = staticSwitch16_g506;
			#endif
			#ifdef _LIGHTVOLUMES_ON
				float3 staticSwitch20_g506 = staticSwitch122_g506;
			#else
				float3 staticSwitch20_g506 = temp_output_12_0_g506;
			#endif
			float3 L1b24_g506 = staticSwitch20_g506;
			float3 L1b2_g511 = L1b24_g506;
			float3 localLightVolumeEvaluate2_g511 = LightVolumeEvaluate( worldNormal2_g511 , L02_g511 , L1r2_g511 , L1g2_g511 , L1b2_g511 );
			float3 Albedo33_g506 = Albedo63;
			float3 temp_output_82_0_g506 = ( localLightVolumeEvaluate2_g511 * Albedo33_g506 );
			float3 Specular83 = _SpecColor.rgb;
			float3 SpecularMap34_g506 = Specular83;
			float3 temp_output_138_0_g510 = SpecularMap34_g506;
			float3 f0157_g510 = temp_output_138_0_g510;
			float ResultSmoothness286 = _Glossiness;
			float Smoothness35_g506 = ResultSmoothness286;
			float temp_output_3_0_g510 = Smoothness35_g506;
			float smoothness157_g510 = temp_output_3_0_g510;
			float3 temp_output_2_0_g510 = World_Normal53_g506;
			float3 worldNormal157_g510 = temp_output_2_0_g510;
			float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_positionWS );
			float3 ase_viewDirSafeWS = Unity_SafeNormalize( ase_viewVectorWS );
			float3 temp_output_9_0_g510 = ase_viewDirSafeWS;
			float3 viewDir157_g510 = temp_output_9_0_g510;
			float3 temp_output_65_0_g510 = L025_g506;
			float3 L0157_g510 = temp_output_65_0_g510;
			float3 temp_output_1_0_g510 = L1r22_g506;
			float3 L1r157_g510 = temp_output_1_0_g510;
			float3 temp_output_36_0_g510 = L1g23_g506;
			float3 L1g157_g510 = temp_output_36_0_g510;
			float3 temp_output_37_0_g510 = L1b24_g506;
			float3 L1b157_g510 = temp_output_37_0_g510;
			float3 localLightVolumeSpecular157_g510 = LightVolumeSpecular( f0157_g510 , smoothness157_g510 , worldNormal157_g510 , viewDir157_g510 , L0157_g510 , L1r157_g510 , L1g157_g510 , L1b157_g510 );
			float3 temp_output_138_0_g509 = SpecularMap34_g506;
			float3 f0158_g509 = temp_output_138_0_g509;
			float temp_output_3_0_g509 = Smoothness35_g506;
			float smoothness158_g509 = temp_output_3_0_g509;
			float3 temp_output_2_0_g509 = World_Normal53_g506;
			float3 worldNormal158_g509 = temp_output_2_0_g509;
			float3 temp_output_9_0_g509 = ase_viewDirSafeWS;
			float3 viewDir158_g509 = temp_output_9_0_g509;
			float3 temp_output_65_0_g509 = L025_g506;
			float3 L0158_g509 = temp_output_65_0_g509;
			float3 temp_output_1_0_g509 = L1r22_g506;
			float3 L1r158_g509 = temp_output_1_0_g509;
			float3 temp_output_36_0_g509 = L1g23_g506;
			float3 L1g158_g509 = temp_output_36_0_g509;
			float3 temp_output_37_0_g509 = L1b24_g506;
			float3 L1b158_g509 = temp_output_37_0_g509;
			float3 localLightVolumeSpecularDominant158_g509 = LightVolumeSpecularDominant( f0158_g509 , smoothness158_g509 , worldNormal158_g509 , viewDir158_g509 , L0158_g509 , L1r158_g509 , L1g158_g509 , L1b158_g509 );
			#ifdef _DOMINANTDIRSPECULARS_ON
				float3 staticSwitch38_g506 = localLightVolumeSpecularDominant158_g509;
			#else
				float3 staticSwitch38_g506 = localLightVolumeSpecular157_g510;
			#endif
			float AO56_g506 = 1.0;
			float3 Speculars40_g506 = ( staticSwitch38_g506 * AO56_g506 );
			#ifdef _SPECULARS_ON
				float3 staticSwitch84_g506 = ( temp_output_82_0_g506 + Speculars40_g506 );
			#else
				float3 staticSwitch84_g506 = temp_output_82_0_g506;
			#endif
			float3 IndirectAndSpeculars86_g506 = ( staticSwitch84_g506 * AO56_g506 );
			float3 ifLocalVar132_g506 = 0;
			if( localLightVolumesEnabled2_g512 > 0.0 )
				ifLocalVar132_g506 = ( _LightVolumesMultiplier * IndirectAndSpeculars86_g506 );
			#ifdef _Q_LIGHTVOLUMES_ON
				float3 staticSwitch273 = ifLocalVar132_g506;
			#else
				float3 staticSwitch273 = float3( 0,0,0 );
			#endif
			float3 Emission179 = staticSwitch273;
			o.Emission = Emission179;
			o.Specular = Specular83;
			o.Smoothness = ResultSmoothness286;
			float Alpha287 = _Color.a;
			o.Alpha = Alpha287;
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
				float4 tSpace0 : TEXCOORD1;
				float4 tSpace1 : TEXCOORD2;
				float4 tSpace2 : TEXCOORD3;
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
				float3 worldPos = mul( unity_ObjectToWorld, v.vertex ).xyz;
				half3 worldNormal = UnityObjectToWorldNormal( v.normal );
				half3 worldTangent = UnityObjectToWorldDir( v.tangent.xyz );
				half tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				half3 worldBinormal = cross( worldNormal, worldTangent ) * tangentSign;
				o.tSpace0 = float4( worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x );
				o.tSpace1 = float4( worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y );
				o.tSpace2 = float4( worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z );
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
				float3 worldPos = float3( IN.tSpace0.w, IN.tSpace1.w, IN.tSpace2.w );
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
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
Version=19903
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;204;-2638.565,158;Inherit;False;2446.399;944.335;Base Textures;10;63;83;283;11;206;195;205;284;286;287;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;284;-912,464;Inherit;False;Property;_Glossiness;Smoothness;11;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;283;-928,576;Inherit;False;Property;_SpecColor;SpecColor;10;0;Fetch;False;0;0;0;False;0;False;0.2980392,0.2980392,0.2980392,1;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;83;-624,592;Inherit;False;Specular;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;286;-560,448;Inherit;False;ResultSmoothness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;268;672,1296;Inherit;False;63;Albedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;269;672,1376;Inherit;False;83;Specular;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;270;640,1440;Inherit;False;286;ResultSmoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;289;688,1568;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;282;928,1296;Inherit;False;LightVolumesSpecularConnector;1;;506;e7830579c7edaa2489fdbf704cb14f73;0;5;32;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;31;FLOAT;0;False;1;FLOAT3;0,0,0;False;90;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;11;-928,224;Inherit;False;Property;_Color;Color;9;0;Create;False;0;0;0;False;0;False;1,1,1,0;0,0,0,0.07843138;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;273;1248,1280;Inherit;False;Property;_Q_LightVolumes;Q_LightVolumes;15;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;63;-608,224;Inherit;False;Albedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;213;494,158;Inherit;False;1917;900;Output;7;0;74;81;75;280;288;290;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;179;1568,1280;Inherit;False;Emission;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;287;-608,336;Inherit;False;Alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;205;-2192,336;Inherit;False;Property;_ShowRendering;ShowRendering;14;0;Create;True;0;0;0;True;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;195;-2192,240;Inherit;False;Property;_ShowMain;ShowMain;13;0;Create;True;0;0;0;True;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;206;-2384,320;Inherit;False;Property;_Culling;Culling;12;1;[Enum];Create;False;0;1;Option1;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;75;960,400;Inherit;False;83;Specular;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;280;928,496;Inherit;False;286;ResultSmoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;74;960,240;Inherit;False;63;Albedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;81;976,320;Inherit;False;179;Emission;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;290;1611.536,650.4822;Inherit;False;Constant;_1;1;9;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;288;1200,608;Inherit;False;287;Alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;0;1936,256;Float;False;True;-1;4;Saphi.QuantumShader.QuantumShaderUI;0;0;StandardSpecular;Saphi/QuantumShaderSpecularTransparentSimple;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;True;True;False;Back;0;False;;0;False;;False;0;False;;0;False;;False;0;Custom;0.5;True;True;0;True;TransparentCutout;;Transparent;All;12;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;2;5;False;_BlendModeSrc;10;False;_BlendModeDst;0;5;False;;10;False;;0;False;;0;False;;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;;0;-1;-1;-1;0;False;0;0;True;_Culling;-1;0;False;_Culling;1;Include;audio;True;1ec20832dfbb48343b8e0764e0864276;Custom;False;0;0;;0;0;False;0.1;False;;0;False;;False;17;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;16;FLOAT4;0,0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;83;0;283;5
WireConnection;286;0;284;0
WireConnection;282;32;268;0
WireConnection;282;30;269;0
WireConnection;282;31;270;0
WireConnection;282;1;289;0
WireConnection;273;0;282;0
WireConnection;63;0;11;5
WireConnection;179;0;273;0
WireConnection;287;0;11;4
WireConnection;0;0;74;0
WireConnection;0;2;81;0
WireConnection;0;3;75;0
WireConnection;0;4;280;0
WireConnection;0;9;288;0
ASEEND*/
//CHKSM=9A6A559694F3B1C00AD9B5539BE57ED55C19E5FD