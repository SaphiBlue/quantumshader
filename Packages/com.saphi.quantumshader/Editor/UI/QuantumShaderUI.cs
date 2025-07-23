#if UNITY_EDITOR

using UnityEngine;
using UnityEditor;
using System;

namespace Saphi.QuantumShader
{


    public class QuantumShaderUI : ShaderGUI
    {
        private Texture2D logo;
        Material target;
        MaterialEditor editor;
        MaterialProperty[] properties;

        Shader shaderBasicPBR = Shader.Find("Saphi/QuantumShaderBasicPBR");
        Shader shaderBasicPBRCutout = Shader.Find("Saphi/QuantumShaderBasicPBRCutout");
        Shader shaderBasicPBRTransparent = Shader.Find("Saphi/QuantumShaderBasicPBRTransparent");
        Shader shaderPackedPBR = Shader.Find("Saphi/QuantumShaderPackedPBR");
        Shader shaderPackedPBRCutout = Shader.Find("Saphi/QuantumShaderPackedPBRCutout");
        Shader shaderPackedPBRTransparent = Shader.Find("Saphi/QuantumShaderPackedPBRTransparent");
        Shader shaderSpecular = Shader.Find("Saphi/QuantumShaderSpecular");
        Shader shaderSpecularCutout = Shader.Find("Saphi/QuantumShaderSpecularCutout");
        Shader shaderSpecularTransparent = Shader.Find("Saphi/QuantumShaderSpecularTransparent");
        Shader shaderMetallic = Shader.Find("Saphi/QuantumShaderMetallic");
        Shader shaderMetallicCutout = Shader.Find("Saphi/QuantumShaderMetallicCutout");
        Shader shaderMetallicTransparent = Shader.Find("Saphi/QuantumShaderMetallicTransparent");

        enum TransparencyBlendMode
        {
            AlphaBlend,
            Premultiplied,
            Additive,
            SoftAdditive,
            Multiplicative,
            DoubleMultiplicative,
            ParticleAdditive,
        }

        enum RenderType
        {
            Opaque,
            Cutout,
            Transparent
        }

        enum ShaderType
        {
            StandardSpecular,
            Standard,
            Packed,
            Basic
        }

        public override void OnGUI(MaterialEditor editor, MaterialProperty[] properties)
        {
            this.editor = editor;
            this.properties = properties;
            this.target = editor.target as Material;


            setlogo();

            GUILayout.Space(10);

            MainProps();
            QuantumGlow();
            LightVolumes();
            Parallax();
            Rendering();
        }

        MaterialProperty getProperty(string name)
        {
            return FindProperty(name, properties);
        }

        void setlogo()
        {

            logo = AssetDatabase.LoadAssetAtPath<Texture2D>("Packages/com.saphi.quantumshader/Editor/Assets/Logo.png");

            // Center the image in a horizontal and vertical layout group
            GUILayout.BeginHorizontal();
            GUILayout.FlexibleSpace();
            GUILayout.BeginVertical();
            GUILayout.FlexibleSpace();
            GUILayout.Label(logo, GUILayout.MaxHeight(100));
            GUILayout.FlexibleSpace();
            GUILayout.EndVertical();
            GUILayout.FlexibleSpace();
            GUILayout.EndHorizontal();
        }

        //static GUIContent staticLabel = new GUIContent();
        static GUIContent buildLabel(string text, string tooltip = null)
        {
            GUIContent label = new GUIContent();
            label.text = text;
            label.tooltip = tooltip;
            return label;
        }

        void buildTextureInputs(string name, string tooltip, string nameTex, string nameProp2 = "", bool textureScaleOffset = false)
        {
            MaterialProperty texture = getProperty(nameTex);
            if (nameProp2 != string.Empty)
            {
                MaterialProperty prop2 = getProperty(nameProp2);
                editor.TexturePropertySingleLine(buildLabel(name, tooltip), texture, prop2);
            }
            else
            {
                editor.TexturePropertySingleLine(buildLabel(name, tooltip), texture);
            }

            if(textureScaleOffset){
                EditorGUI.indentLevel += 2;
                editor.TextureScaleOffsetProperty(texture);
                EditorGUI.indentLevel -= 2;
            }
        }

        void buildNormalInputs(string name, string tooltip, string nameTex, string nameScale, bool textureScaleOffset = false)
        {
            MaterialProperty texture = getProperty(nameTex);
            MaterialProperty scale = getProperty(nameScale);
            editor.TexturePropertySingleLine(buildLabel(name, tooltip), texture, scale);

            if(textureScaleOffset){
                EditorGUI.indentLevel += 2;
                editor.TextureScaleOffsetProperty(texture);
                EditorGUI.indentLevel -= 2;
            }
        }

        void buildPBRMaps()
        {
            if (target.shader == shaderBasicPBR || target.shader == shaderBasicPBRCutout || target.shader == shaderBasicPBRTransparent)
            {
                buildTextureInputs("Metallic Map", "Metallic", "_MetallicMap");
                buildTextureInputs("Specular Map", "Reflectivity of the Material", "_SpecularMap");
                buildTextureInputs("Roughness Map", "Roughness of the Material", "_RoughnessMap");
            }

            if (target.shader == shaderPackedPBR || target.shader == shaderPackedPBRCutout || target.shader == shaderPackedPBRTransparent)
            {
                buildTextureInputs("PBR Data", "RGB; R = Metallic, G = Specular, B = Roughness", "_PBRMap");
            }

            if (target.shader == shaderSpecular || target.shader == shaderSpecularCutout || target.shader == shaderSpecularTransparent)
            {
                buildTextureInputs("Specular", "Specular (RGBA) RGB = Specular, A = Smoothness", "_SpecularTextureChannel");
                editor.ShaderProperty(getProperty("_Glossiness"), "Smoothness", 0);
            }

            if (target.shader == shaderMetallic || target.shader == shaderMetallicCutout || target.shader == shaderMetallicTransparent)
            {
                editor.ShaderProperty(getProperty("_AlbedoAlpha"), "Use Albedo Alpha as Smoothness", 0);
                buildTextureInputs("Metallic", "Metallic (RGBA) R = Metallic, A = Smoothness", "_MetallicGlossMap");
                editor.ShaderProperty(getProperty("_Metallic"), "Metallic", 0);
                editor.ShaderProperty(getProperty("_Glossiness"), "Smoothness", 0);
                
            }
        }

        void MainProps()
        {
            bool showMain;
            string toggle = "_ShowMain";

            if (target.GetFloat(toggle) == 1)
            {
                showMain = true;
            }
            else
            {
                showMain = false;
            }

            showMain = EditorGUILayout.Foldout(showMain, "Main", true, EditorStyles.foldoutHeader);
            if (showMain)
            {
                target.SetFloat(toggle, 1);

                GUILayout.BeginVertical("box");
                EditorGUI.indentLevel += 2;
                buildTextureInputs("Main Texture", "Main Color/Albedo", "_MainTex", "_Color", true);
                editor.ShaderProperty(getProperty("_MainUVIndex"), "Main UV", 2);
                GUILayout.Space(10);
                editor.ShaderProperty(getProperty("_EnableEmission"), "Enable Main Emission", 0);
                editor.ShaderProperty(getProperty("_Emission"), "Emission Main Multiplier", 0);
                buildTextureInputs("Main Emission", "Emission with Color", "_EmissionMap", "_EmissionColor");
                GUILayout.Space(10);
                editor.ShaderProperty(getProperty("_EnableEmission2"), "Enable Secondary Emission", 0);
                editor.ShaderProperty(getProperty("_Emission2"), "Emission Secondary Multiplier", 0);
                buildTextureInputs("Secondary Emission", "Emission with Color", "_EmissionMap2", "_EmissionColor2");
                GUILayout.Space(10);
                buildNormalInputs("Normal Map", "Normal Map", "_BumpMap", "_BumpScale");
                GUILayout.Space(10);
                buildPBRMaps();
                GUILayout.Space(10);
                buildNormalInputs("Detail Normal Map", "Detail Normal Map", "_DetailNormalMap", "_DetailNormalMapScale", true);
                editor.ShaderProperty(getProperty("_DetailUVIndex"), "Detail UV", 2);
                GUILayout.Space(10);
                EditorGUI.indentLevel -= 2;
                GUILayout.EndVertical();

                if (target.shader == shaderBasicPBR || target.shader == shaderPackedPBR || target.shader == shaderBasicPBRCutout || target.shader == shaderPackedPBRCutout || target.shader == shaderBasicPBRTransparent || target.shader == shaderPackedPBRTransparent)
                {
                    editor.ShaderProperty(getProperty("_SpecularCorretive"), "Specular Corrective", 2);
                    editor.ShaderProperty(getProperty("_Metallic"), "Metallic", 2);
                    editor.ShaderProperty(getProperty("_Specular"), "Specular", 2);
                    editor.ShaderProperty(getProperty("_Roughness"), "Roughness", 2);
                }

                if (target.shader == shaderBasicPBRCutout || target.shader == shaderPackedPBRCutout || target.shader == shaderMetallicCutout || target.shader == shaderSpecularCutout || target.shader == shaderBasicPBRTransparent || target.shader == shaderPackedPBRTransparent || target.shader == shaderMetallicTransparent || target.shader == shaderSpecularTransparent)
                {
                    GUILayout.Space(10);
                    GUILayout.BeginVertical("box");
                    EditorGUI.indentLevel += 2;
                    buildTextureInputs("Alpha Map", "Alpha Map", "_AlphaMap", "", true);
                    editor.ShaderProperty(getProperty("_AlphaUVIndex"), "Alpha UV", 2);
                    editor.ShaderProperty(getProperty("_Cutoff"), "Cutoff", 0);

                    if (target.shader == shaderBasicPBRTransparent || target.shader == shaderPackedPBRTransparent || target.shader == shaderMetallicTransparent || target.shader == shaderSpecularTransparent)
                    {
                        editor.ShaderProperty(getProperty("_Opacity"), "Opacity", 0);
                        TransparencyMode();
                    }


                    EditorGUI.indentLevel -= 2;
                    GUILayout.EndVertical();
                }



            }
            else
            {
                target.SetFloat(toggle, 0);
            }
        }

        void shaderMode()
        {

            if(target.shader == shaderMetallic){
                target.SetFloat("_ShaderType", (float)ShaderType.Standard);
                target.SetFloat("_RenderType", (float)RenderType.Opaque);
            }
            if(target.shader == shaderMetallicCutout){
                target.SetFloat("_ShaderType", (float)ShaderType.Standard);
                target.SetFloat("_RenderType", (float)RenderType.Cutout);
            }
            if(target.shader == shaderMetallicTransparent){
                target.SetFloat("_ShaderType", (float)ShaderType.Standard);
                target.SetFloat("_RenderType", (float)RenderType.Transparent);
            }
            

            if(target.shader == shaderSpecular){
                target.SetFloat("_ShaderType", (float)ShaderType.StandardSpecular);
                target.SetFloat("_RenderType", (float)RenderType.Opaque);
            }
            if(target.shader == shaderSpecularCutout){
                target.SetFloat("_ShaderType", (float)ShaderType.StandardSpecular);
                target.SetFloat("_RenderType", (float)RenderType.Cutout);
            }
            if(target.shader == shaderSpecularTransparent){
                target.SetFloat("_ShaderType", (float)ShaderType.StandardSpecular);
                target.SetFloat("_RenderType", (float)RenderType.Transparent);
            }

            if(target.shader == shaderPackedPBR){
                target.SetFloat("_ShaderType", (float)ShaderType.Packed);
                target.SetFloat("_RenderType", (float)RenderType.Opaque);
            }
            if(target.shader == shaderPackedPBRCutout){
                target.SetFloat("_ShaderType", (float)ShaderType.Packed);
                target.SetFloat("_RenderType", (float)RenderType.Cutout);
            }
            if(target.shader == shaderPackedPBRTransparent){
                target.SetFloat("_ShaderType", (float)ShaderType.Packed);
                target.SetFloat("_RenderType", (float)RenderType.Transparent);
            }

            if(target.shader == shaderBasicPBR){
                target.SetFloat("_ShaderType", (float)ShaderType.Basic);
                target.SetFloat("_RenderType", (float)RenderType.Opaque);
            }
            if(target.shader == shaderBasicPBRCutout){
                target.SetFloat("_ShaderType", (float)ShaderType.Basic);
                target.SetFloat("_RenderType", (float)RenderType.Cutout);
            }
            if(target.shader == shaderBasicPBRTransparent){
                target.SetFloat("_ShaderType", (float)ShaderType.Basic);
                target.SetFloat("_RenderType", (float)RenderType.Transparent);
            }

            

            ShaderType shaderType = (ShaderType)target.GetFloat("_ShaderType");
            RenderType renderType = (RenderType)target.GetFloat("_RenderType");

            EditorGUI.BeginChangeCheck();

            shaderType = (ShaderType)EditorGUILayout.EnumPopup(new GUIContent("Shader Type"), shaderType);
            renderType = (RenderType)EditorGUILayout.EnumPopup(new GUIContent("Render Type"), renderType);

            if (EditorGUI.EndChangeCheck()){
                editor.RegisterPropertyChangeUndo("Update Shader Type");
                target.SetFloat("_ShaderType", (float)shaderType);
                target.SetFloat("_RenderType", (float)renderType);

                if((ShaderType)target.GetFloat("_ShaderType") == ShaderType.Standard){
                    if((RenderType)target.GetFloat("_RenderType") == RenderType.Opaque){
                        editor.SetShader(shaderMetallic);
                    }
                    if((RenderType)target.GetFloat("_RenderType") == RenderType.Cutout){
                        editor.SetShader(shaderMetallicCutout);
                    }
                    if((RenderType)target.GetFloat("_RenderType") == RenderType.Transparent){
                        editor.SetShader(shaderMetallicTransparent);
                    }
                }

                if((ShaderType)target.GetFloat("_ShaderType") == ShaderType.StandardSpecular){
                    if((RenderType)target.GetFloat("_RenderType") == RenderType.Opaque){
                        editor.SetShader(shaderSpecular);
                    }
                    if((RenderType)target.GetFloat("_RenderType") == RenderType.Cutout){
                        editor.SetShader(shaderSpecularCutout);
                    }
                    if((RenderType)target.GetFloat("_RenderType") == RenderType.Transparent){
                        editor.SetShader(shaderSpecularTransparent);
                    }
                }

                if((ShaderType)target.GetFloat("_ShaderType") == ShaderType.Basic){
                    if((RenderType)target.GetFloat("_RenderType") == RenderType.Opaque){
                        editor.SetShader(shaderBasicPBR);
                    }
                    if((RenderType)target.GetFloat("_RenderType") == RenderType.Cutout){
                        editor.SetShader(shaderBasicPBRCutout);
                    }
                    if((RenderType)target.GetFloat("_RenderType") == RenderType.Transparent){
                        editor.SetShader(shaderBasicPBRTransparent);
                    }
                }

                if((ShaderType)target.GetFloat("_ShaderType") == ShaderType.Packed){
                    if((RenderType)target.GetFloat("_RenderType") == RenderType.Opaque){
                        editor.SetShader(shaderPackedPBR);
                    }
                    if((RenderType)target.GetFloat("_RenderType") == RenderType.Cutout){
                        editor.SetShader(shaderPackedPBRCutout);
                    }
                    if((RenderType)target.GetFloat("_RenderType") == RenderType.Transparent){
                        editor.SetShader(shaderPackedPBRTransparent);
                    }
                }
            }
        }

        void TransparencyMode()
        {
            TransparencyBlendMode mode = (TransparencyBlendMode)target.GetFloat("_BlendMode");

            EditorGUI.BeginChangeCheck();

            mode = (TransparencyBlendMode)EditorGUILayout.EnumPopup(new GUIContent("Transparency Blend Mode"), mode);

            if (EditorGUI.EndChangeCheck())
            {
                editor.RegisterPropertyChangeUndo("Transparency Blend Mode");
                target.SetFloat("_BlendMode", (float)mode);

                if ((TransparencyBlendMode)target.GetFloat("_BlendMode") == TransparencyBlendMode.AlphaBlend)
                {
                    target.SetFloat("_BlendModeSrc", (float)UnityEngine.Rendering.BlendMode.SrcAlpha);
                    target.SetFloat("_BlendModeDst", (float)UnityEngine.Rendering.BlendMode.OneMinusSrcAlpha);
                }

                if ((TransparencyBlendMode)target.GetFloat("_BlendMode") == TransparencyBlendMode.Premultiplied)
                {
                    target.SetFloat("_BlendModeSrc", (float)UnityEngine.Rendering.BlendMode.One);
                    target.SetFloat("_BlendModeDst", (float)UnityEngine.Rendering.BlendMode.OneMinusSrcAlpha);
                }

                if ((TransparencyBlendMode)target.GetFloat("_BlendMode") == TransparencyBlendMode.Additive)
                {
                    target.SetFloat("_BlendModeSrc", (float)UnityEngine.Rendering.BlendMode.One);
                    target.SetFloat("_BlendModeDst", (float)UnityEngine.Rendering.BlendMode.One);
                }

                if ((TransparencyBlendMode)target.GetFloat("_BlendMode") == TransparencyBlendMode.SoftAdditive)
                {
                    target.SetFloat("_BlendModeSrc", (float)UnityEngine.Rendering.BlendMode.OneMinusDstColor);
                    target.SetFloat("_BlendModeDst", (float)UnityEngine.Rendering.BlendMode.One);
                }

                if ((TransparencyBlendMode)target.GetFloat("_BlendMode") == TransparencyBlendMode.SoftAdditive)
                {
                    target.SetFloat("_BlendModeSrc", (float)UnityEngine.Rendering.BlendMode.DstColor);
                    target.SetFloat("_BlendModeDst", (float)UnityEngine.Rendering.BlendMode.Zero);
                }

                if ((TransparencyBlendMode)target.GetFloat("_BlendMode") == TransparencyBlendMode.DoubleMultiplicative)
                {
                    target.SetFloat("_BlendModeSrc", (float)UnityEngine.Rendering.BlendMode.DstColor);
                    target.SetFloat("_BlendModeDst", (float)UnityEngine.Rendering.BlendMode.SrcColor);
                }     

                if ((TransparencyBlendMode)target.GetFloat("_BlendMode") == TransparencyBlendMode.ParticleAdditive)
                {
                    target.SetFloat("_BlendModeSrc", (float)UnityEngine.Rendering.BlendMode.SrcAlpha);
                    target.SetFloat("_BlendModeDst", (float)UnityEngine.Rendering.BlendMode.One);
                }             

            }
        }

        void QuantumGlow()
        {
            bool showQuantum;
            string toggle = "_ShowQuantum";

            if (target.GetFloat(toggle) == 1)
            {
                showQuantum = true;
            }
            else
            {
                showQuantum = false;
            }

            showQuantum = EditorGUILayout.Foldout(showQuantum, "Quantum", true, EditorStyles.foldoutHeader);
            if (showQuantum)
            {
                target.SetFloat(toggle, 1);

                GUILayout.BeginVertical("box");

                EditorGUI.indentLevel += 2;

                buildTextureInputs("Glow Map", "Uses RGBA for Directional Glow", "_QGlowMap", "", true);
                editor.ShaderProperty(getProperty("_QGlowMapUVIndex"), "GlowMap UV", 2);
                
                buildTextureInputs("Direction", "Direction of the glow band", "_QDirection", "", true);
                editor.ShaderProperty(getProperty("_QDirectionUVIndex"), "Direction UV", 2);

                editor.ShaderProperty(getProperty("_UseUVAsDirection"), "Use UV Map as direction map", 2);
                editor.ShaderProperty(getProperty("_UseUVAsDirectionUV"), "UV Map as direction U or V", 2);

                EditorGUI.indentLevel -= 2;

                GUILayout.EndVertical();

                editor.ShaderProperty(getProperty("_QEnableGlobal"), "Enable Glow", 2);
                editor.ShaderProperty(getProperty("_QSmoothHistory"), "Smooth History", 2);
                editor.ShaderProperty(getProperty("_QuantumGlowColor"), "Glow Color", 2);
                editor.ShaderProperty(getProperty("_QuantumGlowMultiplyGlobal"), "Multiplier", 2);

                EditorGUI.indentLevel += 2;
                QuantumBand(1, "Quantum Band 1 (R)");
                QuantumBand(2, "Quantum Band 2 (G)");
                QuantumBand(3, "Quantum Band 3 (B)");
                QuantumBand(4, "Quantum Band 4 (A)");
                EditorGUI.indentLevel -= 2;
            }
            else
            {
                target.SetFloat(toggle, 0);
            }
        }


        void QuantumBand(int band, string title)
        {
            bool element;
            string toggle = "_ShowQuantumBand" + band;

            if (target.GetFloat(toggle) == 1)
            {
                element = true;
            }
            else
            {
                element = false;
            }

            element = EditorGUILayout.Foldout(element, title, true, EditorStyles.foldoutHeader);
            if (element)
            {
                target.SetFloat(toggle, 1);
                editor.ShaderProperty(getProperty("_QBandEnable" + band), "Enable Band", 2);
                editor.ShaderProperty(getProperty("_QInvertDirection" + band), "Invert Dircection", 2);


                editor.ShaderProperty(getProperty("_QuantumGlowMultiply" + band), "Multiplier", 2);
                editor.ShaderProperty(getProperty("_QGlowColorBand" + band), "Color", 2);
                editor.ShaderProperty(getProperty("_QBlendMode" + band), "Blend Mode", 2);
                editor.ShaderProperty(getProperty("_QBand" + band), "Band", 2);
                editor.ShaderProperty(getProperty("_QType" + band), "Type", 2);

                editor.ShaderProperty(getProperty("_QHistory" + band), "History", 2);
                editor.ShaderProperty(getProperty("_QColorOffset" + band), "Color Offset", 2);

                editor.ShaderProperty(getProperty("_QEffectScale" + band), "Effect Scale", 2);

                editor.ShaderProperty(getProperty("_QUseColorRotation" + band), "Use Color Rotation", 2);
                editor.ShaderProperty(getProperty("_QColorRotationSpeed" + band), "Color Rotation Speed", 2);
                editor.ShaderProperty(getProperty("_QColorRotationMode" + band), "Color Rotation Mode", 2);

            }
            else
            {
                target.SetFloat(toggle, 0);
            }
        }

        void Parallax()
        {
            bool showParallax;
            string toggle = "_ShowParallax";

            if (target.GetFloat(toggle) == 1)
            {
                showParallax = true;
            }
            else
            {
                showParallax = false;
            }

            showParallax = EditorGUILayout.Foldout(showParallax, "Parallax", true, EditorStyles.foldoutHeader);
            if (showParallax)
            {
                target.SetFloat(toggle, 1);

                GUILayout.BeginVertical("box");
                EditorGUI.indentLevel += 2;
                editor.ShaderProperty(getProperty("_ParallaxEnable"), "Enable Parallax");
                buildTextureInputs("Height Map", "Height Map", "_ParallaxMap", "", false);
                editor.ShaderProperty(getProperty("_Parallax"), "Height Scale");
                editor.ShaderProperty(getProperty("_ParallaxMinSamples"), "Min Samples");
                editor.ShaderProperty(getProperty("_ParallaxMaxSamples"), "Max Samples");
                editor.ShaderProperty(getProperty("_ParallaxSideWallSteps"), "Side Wall Steps");
                editor.ShaderProperty(getProperty("_ParallaxRefPlane"), "Reference Plane");
                
                
                EditorGUI.indentLevel -= 2;
                GUILayout.EndVertical();


            }
            else
            {
                target.SetFloat(toggle, 0);
            }
        }

        void LightVolumes()
        {
            bool showLightVolumes;
            string toggle = "_ShowLightVolumes";

            if (target.GetFloat(toggle) == 1)
            {
                showLightVolumes = true;
            }
            else
            {
                showLightVolumes = false;
            }

            showLightVolumes = EditorGUILayout.Foldout(showLightVolumes, "Light Volumes", true, EditorStyles.foldoutHeader);
            if (showLightVolumes)
            {
                target.SetFloat(toggle, 1);

                GUILayout.BeginVertical("box");
                EditorGUI.indentLevel += 2;

                editor.ShaderProperty(getProperty("_Q_LightVolumes"), "Enable Light Volumes");
                editor.ShaderProperty(getProperty("_LightVolumes"), "Use Light Volumes");
                editor.ShaderProperty(getProperty("_Speculars"), "Speculars");
                editor.ShaderProperty(getProperty("_DominantDirSpeculars"), "Dominant Dir Speculars");
                editor.ShaderProperty(getProperty("_LightVolumesBias"), "Light Volumes Bias");
                



                EditorGUI.indentLevel -= 2;
                GUILayout.EndVertical();


            }
            else
            {
                target.SetFloat(toggle, 0);
            }
        }

        void Rendering()
        {
            bool showRendering;
            string toggle = "_ShowRendering";

            if (target.GetFloat(toggle) == 1)
            {
                showRendering = true;
            }
            else
            {
                showRendering = false;
            }

            showRendering = EditorGUILayout.Foldout(showRendering, "Rendering", true, EditorStyles.foldoutHeader);
            if (showRendering)
            {
                target.SetFloat(toggle, 1);

                

                EditorGUI.indentLevel += 2;
                shaderMode();
                GUILayout.Space(10);
                editor.ShaderProperty(getProperty("_Culling"), "Culling", 0);
                editor.RenderQueueField();
                editor.EnableInstancingField();
                editor.DoubleSidedGIField();
                editor.LightmapEmissionProperty();
                EditorGUI.indentLevel -= 2;
            }
            else
            {
                target.SetFloat(toggle, 0);
            }
        }
    }

}

#endif