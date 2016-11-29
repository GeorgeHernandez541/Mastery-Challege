#version 330 compatibility

uniform float	uTime;		// "Time", from Animate( )
out vec2  	vST;		// texture coords
out vec3	vert;
const float PI = 	3.14159265;
const float AMP = 	0.2;		// amplitude
const float W = 	2.;		// frequency

void
main( )
{ 
	vST = gl_MultiTexCoord0.st;
	vec3 vert = gl_Vertex.xyz;
	vert.x = sin(360*uTIme);
	vert.y = sin(360*uTime);
	vert.z = sin(360*uTIme);
	gl_Position = gl_ModelViewProjectionMatrix * vec4( vert, 1. );
}
new new new!