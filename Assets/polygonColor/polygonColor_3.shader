// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.36 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.36;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34057,y:32782,varname:node_3138,prsc:2|emission-817-OUT,alpha-2638-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:33271,y:32699,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Tex2d,id:9414,x:32928,y:33009,ptovrint:False,ptlb:texture,ptin:_texture,varname:node_9414,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-1798-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:9386,x:32498,y:33004,varname:node_9386,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:9416,x:32300,y:33130,varname:node_9416,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1671,x:32518,y:33247,varname:node_1671,prsc:2|A-9416-T,B-1810-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1810,x:32300,y:33293,ptovrint:False,ptlb:speed,ptin:_speed,varname:node_1810,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:817,x:33551,y:32816,varname:node_817,prsc:2|A-7241-RGB,B-9414-RGB;n:type:ShaderForge.SFN_Add,id:3351,x:33182,y:33089,varname:node_3351,prsc:2|A-9414-R,B-9414-G,C-9414-B,D-8305-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8305,x:32928,y:33245,ptovrint:False,ptlb:intensity,ptin:_intensity,varname:node_8305,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Clamp01,id:6976,x:33513,y:32987,varname:node_6976,prsc:2|IN-3351-OUT;n:type:ShaderForge.SFN_Step,id:5809,x:33524,y:33163,varname:node_5809,prsc:2|A-4652-OUT,B-3351-OUT;n:type:ShaderForge.SFN_Vector1,id:4652,x:33339,y:33089,varname:node_4652,prsc:2,v1:0.5;n:type:ShaderForge.SFN_SwitchProperty,id:2638,x:33745,y:33067,ptovrint:False,ptlb:ramp,ptin:_ramp,varname:node_2638,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-6976-OUT,B-5809-OUT;n:type:ShaderForge.SFN_Rotator,id:1798,x:32740,y:33130,varname:node_1798,prsc:2|UVIN-9386-UVOUT,ANG-953-OUT,SPD-1671-OUT;n:type:ShaderForge.SFN_Vector1,id:953,x:32498,y:33164,varname:node_953,prsc:2,v1:0.1;proporder:7241-9414-1810-8305-2638;pass:END;sub:END;*/

Shader "Shader Forge/polygonColor_2" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _texture ("texture", 2D) = "white" {}
        _speed ("speed", Float ) = 0
        _intensity ("intensity", Float ) = 0
        [MaterialToggle] _ramp ("ramp", Float ) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform sampler2D _texture; uniform float4 _texture_ST;
            uniform float _speed;
            uniform float _intensity;
            uniform fixed _ramp;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_9416 = _Time + _TimeEditor;
                float node_1798_ang = 0.1;
                float node_1798_spd = (node_9416.g*_speed);
                float node_1798_cos = cos(node_1798_spd*node_1798_ang);
                float node_1798_sin = sin(node_1798_spd*node_1798_ang);
                float2 node_1798_piv = float2(0.5,0.5);
                float2 node_1798 = (mul(i.uv0-node_1798_piv,float2x2( node_1798_cos, -node_1798_sin, node_1798_sin, node_1798_cos))+node_1798_piv);
                float4 _texture_var = tex2D(_texture,TRANSFORM_TEX(node_1798, _texture));
                float3 emissive = (_Color.rgb*_texture_var.rgb);
                float3 finalColor = emissive;
                float node_3351 = (_texture_var.r+_texture_var.g+_texture_var.b+_intensity);
                return fixed4(finalColor,lerp( saturate(node_3351), step(0.5,node_3351), _ramp ));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
