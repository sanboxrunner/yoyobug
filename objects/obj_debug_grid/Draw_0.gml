if not toggle_grid	{
	exit;	
}

draw_set_alpha(0.4);
draw_rectangle_ocolor(0,0,room_width,room_height,c_black,false);
draw_set_alpha(1);

var id_to_print		=	"";

draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_font(fnt_debugging_font);

var hcells = ds_grid_width(global.game_grid),
	vcells = ds_grid_height(global.game_grid);


for (var _w = 0; _w < hcells; ++_w) {
    for (var _h = 0; _h < vcells; ++_h) {

	var id_to_print = global.game_grid[# _w,_h];
	//id_to_print = debug_convert_to_readable(id_to_print);

	var _x = global.ox + _w*TILE_WIDTH + HALF_WIDTH;
	var _y = global.oy + _h*TILE_WIDTH + HALF_WIDTH;

	draw_text(_x,_y,id_to_print);
	}
}

draw_set_color(c_white);