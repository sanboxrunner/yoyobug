var params = argument0;
var returnable = "";

if global.energy < 1	{
	screen_shake(2,5);
	run = false;
	return;
}

if !(instance_exists(obj_tower_controller_parent))	{
	run = false;
	screen_shake(4,30);
	exit;	
}
var count = 0;
var total_run = 5000;
repeat (total_run) {
	count++;
	var list = obj_tower_controller_parent.percent_player_spawn;
	var random_number = irandom_range(0, ds_list_size(list)-1);

	var _x = tile_width*(list[| random_number] mod global.grid_width) + tile_width;
	var _y = tile_width*(list[| random_number] div global.grid_width) + tile_width;
	
	if place_meeting(_x,_y,obj_solid)	{
		continue;	
	}
	
	if place_meeting(_x,_y,obj_robot_spawner)	{
		continue;	
	}
	
	if place_meeting(_x,_y,obj_terminal)	{
		continue;	
	}
	
	if place_meeting(_x,_y,obj_terminal_pillar)	{
		continue;	
	}
	
	if place_meeting(_x,_y,obj_enemy_spawner)	{
		continue;	
	}
	
	if place_meeting(_x,_y,obj_enemy_robot)	{
		continue;	
	}
	
	if place_meeting(_x,_y,obj_robot)	{
		continue;	
	}
	

	break;
}

if count >= (total_run - 1)	{
	screen_shake(4,30);
	run = false;
	return;
}


return spawn(_x,_y);
