terminal_locked = false;

timer_spr = spr_greentimer;
//Timer Stuff
timer_percent = 0;
small_timer = 0;
small_timer_total = 0;
small_past_value = 0;
timer_spr = spr_greentimer;
timer_start = false;

debug_message(string("Terminal Created: Coordinates [") + string(x/tile_width)+string(",")+string(y/tile_width)+string("]"));
