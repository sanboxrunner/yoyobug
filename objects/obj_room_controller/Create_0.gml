event_inherited();
run_once = true;


round_count = 0;
bool_counter = 0;
do_once = true;
tower_draw = false;

tower_grid = ds_grid_create(10,10);

state_machine_init();
state_create("Terminal Colors",make_pillar_colors);
state_create("Terminal Directions",make_terminal_directions);
state_create("Find Terminal Locations",state_terminal_location);
state_create("Idle",state_idle);
state_create("Spawn Towers",state_spawn_towers);
state_create("Timer To Spawn",state_timer_to_spawn);
state_create("Wait to Respawn Towers",state_wait_to_spawn);
state_create("True Idle",state_true_idle);

state_init("Terminal Colors");

time_left = 0;

number = 3;
locked_number = 0;

draw_collision_lines = false;

purple1 = make_color_rgb(63,54,86);
blue1	= make_color_rgb(66,91,121);
active_towers = ds_list_create();

offset = array_create(2);
offset[x_array] = sprite_get_width(spr_totems)/2;
offset[y_array] = -7;