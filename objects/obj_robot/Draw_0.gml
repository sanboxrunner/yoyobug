if to_be_destroyed	{
shader_set(sh_desaturate);
	draw_self();
shader_reset();

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,image_blend,sat);
} else

draw_self();
