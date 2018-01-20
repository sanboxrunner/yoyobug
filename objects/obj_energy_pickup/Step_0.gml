//Getting the Ping-Pong Animations
switch (image_index) {
    case 0:
        img_spd = 1;
        break;
    case 3:
        img_spd = -1;
        break;
}
image_index+=img_spd*0.2;

/*Collision Code	--- Goal: When player hits the node, gets one energy. One enemy hits the node: energy is destroyed.*/
	//Player Collision
var _robot = instance_place(x,y,obj_robot);

if _robot != noone	{
	with _robot	{
		powerup_script = powerup_knight_step;
		powerup_draw	= powerup_knight_draw;
	}
	to_be_destroyed = true;
	global.energy++;
}

	//Enemy Colliision
if place_meeting(x,y,obj_enemy_robot)	{
	to_be_destroyed = true;
}


if to_be_destroyed		{
	instance_destroy();	
}
