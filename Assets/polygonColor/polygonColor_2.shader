Shader "lowPolygon_2" {
    Properties {
        _ColorL_1("ColorL_1", Color) = (0,0.1721497,3301887,1)
        _ColorL_2("ColorL_2", Color) = (0.2783019,0.6024179,1,1)
        _ColorL_3("ColorL_3", Color) = (0.2783019,0.6024179,1,1)
        _ColorL_Offset_1("ColorL_Offset_1", Float) = 1
        _ColorL_Offset_2("ColorL_Offset_2", Float) = 1


        _ColorR_1("ColorR_1", Color) = (0,0.1721497,3301887,1)
        _ColorR_2("ColorR_2", Color) = (0.2783019,0.6024179,1,1)
        _ColorR_3("ColorR_3", Color) = (0.2783019,0.6024179,1,1)
        _ColorR_Offset_1("ColorR_Offset_1", Float) = 1
        _ColorR_Offset_2("ColorR_Offset_2", Float) = 1

        _Dark("Dark", Color) = (0,0,0,1)
        _texture ("texture", 2D) = "white" {}
        _speed ("speed", Float ) = 5
        _tiling("tiling", Float) = 0.01
        _vertexHeight("vertexHeight",Float) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }

            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"

            #pragma multi_compile_fog
            uniform float4 _TimeEditor;
            uniform float4 _ColorL_1, _ColorL_2, _ColorL_3, _ColorR_1, _ColorR_2, _ColorR_3, _Dark;
            uniform sampler2D _texture; uniform float4 _texture_ST;
            uniform float _speed, _tiling , _vertexHeight, _ColorL_Offset_1, _ColorL_Offset_2, _ColorR_Offset_1, _ColorR_Offset_2;
            
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                //float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 timeUv : TEXCOORD2;
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float4 materialTime = _Time + _TimeEditor;
                float2 texUv0 = v.texcoord0 + (materialTime.g * _speed) * _tiling;
                float2 texUv1 = v.texcoord1 + (materialTime.g * _speed) * _tiling;
                o.timeUv = texUv0;
                float4 offset_var = tex2Dlod(_texture, float4(TRANSFORM_TEX(texUv1, _texture), 0.0, 0));
                v.vertex.xyz += offset_var.r * _vertexHeight;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o, o.pos);
                //o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                return o;
            }
            //Unity3D LowPoly 动态渐变效果
            float4 frag(VertexOutput i) : COLOR {

                float texture_R = tex2D(_texture,TRANSFORM_TEX(i.timeUv, _texture)).r;
                float texture_G = tex2D(_texture, TRANSFORM_TEX(i.uv1, _texture)).g; //Mask要用正常的uv，mesh里要展uv2
                float texture_B = tex2D(_texture, TRANSFORM_TEX(i.uv1, _texture)).b; //Mask要用正常的uv，mesh里要展uv2

                float3 color_L = lerp(_ColorL_1.rgb, _ColorL_2.rgb, texture_R * _ColorL_Offset_1);
                float3 color_L2 = lerp(color_L, _ColorL_3, saturate(pow(texture_R * _ColorL_Offset_2, 3)));

                float3 color_R = lerp(_ColorR_1.rgb, _ColorR_2.rgb, texture_R * _ColorR_Offset_1);
                float3 color_R2 = lerp(color_R, _ColorR_3, saturate(pow(texture_R * _ColorR_Offset_2, 3)));

                float3 colorlerp = lerp(color_L2, color_R2, texture_G) * (texture_B + _Dark.rgb);
                float4 finalColor = float4(colorlerp, 1);
                UNITY_APPLY_FOG(i.fogCoord, finalColor);
                return finalColor;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
}
