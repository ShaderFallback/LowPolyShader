// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.36 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.36;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34067,y:33708,varname:node_3138,prsc:2|custl-7588-OUT;n:type:ShaderForge.SFN_Slider,id:1960,x:33293,y:33106,ptovrint:False,ptlb:Blur,ptin:_Blur,varname:node_1960,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.05;n:type:ShaderForge.SFN_ScreenPos,id:2233,x:31412,y:33676,varname:node_2233,prsc:2,sctp:2;n:type:ShaderForge.SFN_Add,id:5091,x:32190,y:32854,varname:node_5091,prsc:2|A-2233-UVOUT,B-2910-OUT;n:type:ShaderForge.SFN_Add,id:9471,x:32164,y:33189,varname:node_9471,prsc:2|A-2233-U,B-8351-OUT;n:type:ShaderForge.SFN_Append,id:6719,x:32421,y:33189,varname:node_6719,prsc:2|A-9471-OUT,B-2233-V;n:type:ShaderForge.SFN_SceneColor,id:420,x:32621,y:33189,varname:node_420,prsc:2|UVIN-6719-OUT;n:type:ShaderForge.SFN_Add,id:222,x:32897,y:33333,varname:node_222,prsc:2|A-420-RGB,B-9780-RGB,C-835-RGB,D-6916-RGB;n:type:ShaderForge.SFN_SceneColor,id:9780,x:32626,y:33335,varname:node_9780,prsc:2|UVIN-7530-OUT;n:type:ShaderForge.SFN_Append,id:7530,x:32421,y:33335,varname:node_7530,prsc:2|A-2233-U,B-1676-OUT;n:type:ShaderForge.SFN_Add,id:1676,x:32177,y:33362,varname:node_1676,prsc:2|A-2233-V,B-3712-OUT;n:type:ShaderForge.SFN_Multiply,id:6726,x:33508,y:34009,varname:node_6726,prsc:2|A-9349-OUT,B-5877-OUT;n:type:ShaderForge.SFN_Vector1,id:5877,x:33210,y:34043,varname:node_5877,prsc:2,v1:0.12;n:type:ShaderForge.SFN_Add,id:2175,x:32158,y:33921,varname:node_2175,prsc:2|A-2233-UVOUT,B-9488-OUT;n:type:ShaderForge.SFN_Append,id:2459,x:32432,y:33542,varname:node_2459,prsc:2|A-9481-OUT,B-2233-V;n:type:ShaderForge.SFN_SceneColor,id:835,x:32626,y:33542,varname:node_835,prsc:2|UVIN-2459-OUT;n:type:ShaderForge.SFN_SceneColor,id:6916,x:32626,y:33694,varname:node_6916,prsc:2|UVIN-3689-OUT;n:type:ShaderForge.SFN_Append,id:3689,x:32432,y:33709,varname:node_3689,prsc:2|A-2233-U,B-5599-OUT;n:type:ShaderForge.SFN_Subtract,id:9481,x:32177,y:33542,varname:node_9481,prsc:2|A-2233-U,B-6158-OUT;n:type:ShaderForge.SFN_Subtract,id:5599,x:32177,y:33737,varname:node_5599,prsc:2|A-2233-V,B-1024-OUT;n:type:ShaderForge.SFN_SceneColor,id:2416,x:32451,y:33917,varname:node_2416,prsc:2|UVIN-2175-OUT;n:type:ShaderForge.SFN_Subtract,id:9946,x:32158,y:34058,varname:node_9946,prsc:2|A-2233-UVOUT,B-9282-OUT;n:type:ShaderForge.SFN_SceneColor,id:1496,x:32451,y:34058,varname:node_1496,prsc:2|UVIN-9946-OUT;n:type:ShaderForge.SFN_Add,id:2651,x:32851,y:33952,varname:node_2651,prsc:2|A-2416-RGB,B-1496-RGB,C-8052-RGB,D-2381-RGB;n:type:ShaderForge.SFN_Add,id:9056,x:32161,y:34244,varname:node_9056,prsc:2|A-2233-U,B-2412-OUT;n:type:ShaderForge.SFN_Subtract,id:2797,x:32161,y:34379,varname:node_2797,prsc:2|A-2233-V,B-7778-OUT;n:type:ShaderForge.SFN_Append,id:3518,x:32415,y:34331,varname:node_3518,prsc:2|A-9056-OUT,B-2797-OUT;n:type:ShaderForge.SFN_SceneColor,id:8052,x:32622,y:34370,varname:node_8052,prsc:2|UVIN-3518-OUT;n:type:ShaderForge.SFN_Add,id:5287,x:32167,y:34689,varname:node_5287,prsc:2|A-2233-V,B-2999-OUT;n:type:ShaderForge.SFN_Subtract,id:390,x:32167,y:34557,varname:node_390,prsc:2|A-2233-U,B-4368-OUT;n:type:ShaderForge.SFN_Append,id:8193,x:32411,y:34610,varname:node_8193,prsc:2|A-390-OUT,B-5287-OUT;n:type:ShaderForge.SFN_SceneColor,id:2381,x:32641,y:34610,varname:node_2381,prsc:2|UVIN-8193-OUT;n:type:ShaderForge.SFN_Add,id:9349,x:33158,y:33811,varname:node_9349,prsc:2|A-222-OUT,B-2651-OUT;n:type:ShaderForge.SFN_Set,id:2506,x:34225,y:33252,varname:Blur_Offset,prsc:2|IN-5410-OUT;n:type:ShaderForge.SFN_Get,id:2910,x:31933,y:32872,varname:node_2910,prsc:2|IN-2506-OUT;n:type:ShaderForge.SFN_Get,id:8351,x:31899,y:33237,varname:node_8351,prsc:2|IN-2506-OUT;n:type:ShaderForge.SFN_Get,id:3712,x:31937,y:33378,varname:node_3712,prsc:2|IN-2506-OUT;n:type:ShaderForge.SFN_Get,id:6158,x:31898,y:33562,varname:node_6158,prsc:2|IN-2506-OUT;n:type:ShaderForge.SFN_Get,id:1024,x:31898,y:33756,varname:node_1024,prsc:2|IN-2506-OUT;n:type:ShaderForge.SFN_Get,id:9488,x:31916,y:33933,varname:node_9488,prsc:2|IN-2506-OUT;n:type:ShaderForge.SFN_Get,id:9282,x:31899,y:34080,varname:node_9282,prsc:2|IN-2506-OUT;n:type:ShaderForge.SFN_Get,id:2412,x:31899,y:34244,varname:node_2412,prsc:2|IN-2506-OUT;n:type:ShaderForge.SFN_Get,id:7778,x:31920,y:34446,varname:node_7778,prsc:2|IN-2506-OUT;n:type:ShaderForge.SFN_Get,id:4368,x:31945,y:34641,varname:node_4368,prsc:2|IN-2506-OUT;n:type:ShaderForge.SFN_Get,id:2999,x:31976,y:34773,varname:node_2999,prsc:2|IN-2506-OUT;n:type:ShaderForge.SFN_Divide,id:5410,x:33795,y:33245,varname:node_5410,prsc:2|A-1960-OUT,B-5944-OUT;n:type:ShaderForge.SFN_ObjectPosition,id:2699,x:33367,y:33216,varname:node_2699,prsc:2;n:type:ShaderForge.SFN_ViewPosition,id:8512,x:33367,y:33353,varname:node_8512,prsc:2;n:type:ShaderForge.SFN_Distance,id:5944,x:33575,y:33289,varname:node_5944,prsc:2|A-2699-XYZ,B-8512-XYZ;n:type:ShaderForge.SFN_Log,id:3719,x:33770,y:33461,varname:node_3719,prsc:2,lt:0;n:type:ShaderForge.SFN_Divide,id:4443,x:34006,y:33449,varname:node_4443,prsc:2|B-3719-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:7588,x:33819,y:33953,ptovrint:False,ptlb:Blur_ON/OFF,ptin:_Blur_ONOFF,varname:node_7588,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3311-RGB,B-7094-OUT;n:type:ShaderForge.SFN_SceneColor,id:3311,x:33606,y:33797,varname:node_3311,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:8833,x:33496,y:34182,ptovrint:False,ptlb:node_8833,ptin:_node_8833,varname:node_8833,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:7094,x:33808,y:34130,varname:node_7094,prsc:2|A-6726-OUT,B-8833-RGB;proporder:7588-1960-8833;pass:END;sub:END;*/

Shader "Shader Forge/SimpleBlur" {
    Properties {
        [MaterialToggle] _Blur_ONOFF ("Blur_ON/OFF", Float ) = 0
        _Blur ("Blur", Range(0, 0.05)) = 0
        _node_8833 ("node_8833", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float _Blur;
            uniform fixed _Blur_ONOFF;
            uniform sampler2D _node_8833; uniform float4 _node_8833_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 screenPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.pos = UnityObjectToClipPos(v.vertex );
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
                float node_5944 = distance(objPos.rgb,_WorldSpaceCameraPos);
                float Blur_Offset = (_Blur/node_5944);
                float4 _node_8833_var = tex2D(_node_8833,TRANSFORM_TEX(i.uv0, _node_8833));
                float3 finalColor = lerp( sceneColor.rgb, ((((tex2D( _GrabTexture, float2((sceneUVs.r+Blur_Offset),sceneUVs.g)).rgb+tex2D( _GrabTexture, float2(sceneUVs.r,(sceneUVs.g+Blur_Offset))).rgb+tex2D( _GrabTexture, float2((sceneUVs.r-Blur_Offset),sceneUVs.g)).rgb+tex2D( _GrabTexture, float2(sceneUVs.r,(sceneUVs.g-Blur_Offset))).rgb)+(tex2D( _GrabTexture, (sceneUVs.rg+Blur_Offset)).rgb+tex2D( _GrabTexture, (sceneUVs.rg-Blur_Offset)).rgb+tex2D( _GrabTexture, float2((sceneUVs.r+Blur_Offset),(sceneUVs.g-Blur_Offset))).rgb+tex2D( _GrabTexture, float2((sceneUVs.r-Blur_Offset),(sceneUVs.g+Blur_Offset))).rgb))*0.12)*_node_8833_var.rgb), _Blur_ONOFF );

                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
