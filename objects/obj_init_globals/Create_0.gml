//Delta Time
global.dt = 0;
global.start = false;


global.grid_width = 18;
global.grid_height = 10;

global.game_grid = ds_grid_create(global.grid_width,global.grid_height);

global.dev_mode = true;

global.start = false;

if window_get_fullscreen()	{
	global.fullscreen = true;	
} else global.fullscreen = false;

init_part();

var starting_energy = 3;
global.energy = starting_energy; 

