counter+=global.dt/60;

percent_time = counter / random_time;

if percent_time >	1	{
	if instance_number(obj_enemy_robot) < 10	{
	if !place_meeting(x+TILE_WIDTH,y+2*TILE_WIDTH,obj_robot_parent)	{
		instance_create_layer(x+tile_width,y+2*tile_width,"Instances",obj_enemy_robot);

	
		image_speed = 0.5;

	
	
		counter = 0;
		percent_time = 0;
		random_time = irandom_range(2,6);
		}
	}
}

