if !(ds_exists(tower_grid,ds_type_grid))	{
	state_switch("Find Terminal Locations");
	 debug_message("Something Went Wrong. Going back to making the terminals.")
} else	{
if global.start	{
	for (var i = 0; i < number; ++i) {
	var _inst = 0;
	_inst[i]	=	instance_create_layer(tower_grid[# i,tower_x],tower_grid[# i,tower_y],"Instances",obj_about_to_spawn);
	_inst[i].color = tower_grid[# i, tower_color];
	}
	state_switch("Idle",false);
}
}