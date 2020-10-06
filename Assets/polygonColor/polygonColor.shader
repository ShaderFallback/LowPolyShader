Shader "lowPolygon" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _Color2("Color2", Color) = (0.07843138,0.3921569,0.7843137,1)
        _texture ("texture", 2D) = "white" {}
        _speed ("speed", Float ) = 5
        _tiling("tiling", Float) = 0.01
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
            uniform float4 _TimeEditor;
            uniform float4 _Color, _Color2;
            uniform sampler2D _texture; uniform float4 _texture_ST;
            uniform float _speed, _tiling;

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
                float4 materialTime = _Time + _TimeEditor;
                float2 texUv = i.uv0+(materialTime.g *_speed)* _tiling;
                float4 texture_var = tex2D(_texture,TRANSFORM_TEX(texUv, _texture));
                float3 emissive = lerp(_Color.rgb, _Color2.rgb,texture_var.r);
                return fixed4(emissive,1);
            }
            ENDCG
        }
    }
}
