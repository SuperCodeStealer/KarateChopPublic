shader_type canvas_item;

uniform vec4 target_color : source_color = vec4(0.0, 0.0, 0.0, 1.0);

void fragment() {
    vec4 tex_color = texture(TEXTURE, UV);
    float alpha = tex_color.a > 0.0 ? 1.0 : 0.0;
    COLOR.rgb = mix(tex_color.rgb, target_color.rgb, alpha);
    COLOR.a = tex_color.a * target_color.a;
}
