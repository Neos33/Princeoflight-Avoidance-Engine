//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.	
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//

uniform float time;
uniform float intensity;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
const float INVSQRT2 = 0.707106781;
const float PIMINUSONE=0.31830988618;
const float PI=3.14159265359;

vec2 cart2pol(vec2 cart,vec2 centerPosition){ //(x,y)=>(r,theta)
    return vec2(
    sqrt(pow(cart[0]-centerPosition[0],2.0)+pow(cart[1]-centerPosition[1],2.0)),
    atan(cart[1]-centerPosition[1],cart[0]-centerPosition[0])*PIMINUSONE*0.5
    );
}

vec2 pol2cart(vec2 pol,vec2 centerPosition){

    return vec2(pol.x*cos(2.0*PI*pol.y)+centerPosition.x,pol.x*sin(2.0*PI*pol.y)+centerPosition.y);
}

void main()
{
    vec2 centerPosition = vec2(0.5,0.5);
    vec2 texcoord_pol = cart2pol(v_vTexcoord,centerPosition);
    float twirlIntensity = intensity*(1.0-2.0*INVSQRT2*texcoord_pol.x); // the angular shift in radians
    texcoord_pol.y+=twirlIntensity;
    
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, pol2cart(texcoord_pol,centerPosition)); 
}

