var _color = c_white;
//_color = choose(c_white, "nope");
//if _color != c_white	{
//	_color = choose(global.purple1, global.green1);
//}

var light_source = 8;
var light_destination = 8;

draw_set_color(_color);
repeat (5) {
	light_source+=4;
	light_destination+=4;
    draw_lightning(240+tile_width,light_source,399-tile_width,light_destination,20, 40,2,5);
}