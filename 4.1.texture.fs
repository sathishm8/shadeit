#version 330 core
out vec4 FragColor;

in vec3 ourColor;
in vec2 TexCoord;

// texture sampler
uniform sampler2D texture1;

void main()
{
	FragColor.rgb = texture(texture1, TexCoord).rrr;
	//FragColor.rgb = vec3(0.2, 0.6, 0.6);
	FragColor.a = texture(texture1, TexCoord).a;
}
