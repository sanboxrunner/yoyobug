event_inherited();
active_towers = ds_list_create();
starting_number = 3;
number = starting_number;
draw_collision_lines = false;

offset[X_ARRAY] = sprite_get_width(spr_totems)/2;
offset[Y_ARRAY] = -7;


//Inital Behaviours:
init_grid();
create_room();
make_colors();
make_terminal_directions();

//Pathing
mp_grid = mp_grid_create(0,0,global.grid_width,global.grid_height,tile_width,tile_width);
mp_grid_add_instances(mp_grid,obj_solid,false);
mp_grid_add_instances(mp_grid,obj_terminal, false);
mp_grid_add_instances(mp_grid,obj_terminal_pillar,false);

for (var i = 0; i < global.grid_width; i++)	{
	for (var k = 0; k < global.grid_height; k++)	{
		if global.game_grid[# i,k] ==  WALL	{
			mp_grid_add_cell(mp_grid,i,k);	
		}
	}
}
toggle_grid = false;


state_machine_init();
state_create("Find Terminal Locations",state_experimental_terminal_locations);
state_create("Spawn Spawning Circles",state_spawn_spawning_circles);
state_create("Idle",state_idle);
state_create("Spawn Towers",state_spawn_towers);
state_create("Timer To Spawn",state_timer_to_spawn);
state_create("Wait to Respawn Towers",state_wait_to_spawn);
state_create("True Idle",state_true_idle);

state_init("Find Terminal Locations");


tower_layer = "Instances";
