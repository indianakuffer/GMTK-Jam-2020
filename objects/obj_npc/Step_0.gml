/// @description Insert description here
// You can write your code in this editor

time_accumulator += global.step_delta;
if (time_accumulator > move_freq){
	xVelocity = actor_velocity;
	yVelocity = actor_velocity;
	xdir = cos(move_dir);
	ydir = sin(move_dir); 
	if(time_accumulator >= move_freq + move_length){
		time_accumulator = 0;
		move_freq = random_range(frequency_lower, frequency_upper);
		move_dir = degtorad(random_range(0,360));
		move_length = random_range(1, actor_velocity);
	}
}


if (xVelocity > 0){
	xVelocity -= .1;
} else{
	xdir = 0;
	xVelocity = 0;
}

if (yVelocity > 0){
	yVelocity -= .1;
} else{
	ydir = 0;
	yVelocity = 0;
}

//show_debug_message(string(xdir) + "_" + string(ydir));