shader_type sky;

uniform sampler2D stars : source_color;

void sky() {
	COLOR = texture(stars,SKY_COORDS).rgb * EYEDIR;
}
