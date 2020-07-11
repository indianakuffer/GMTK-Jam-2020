/// @description Insert description here
// You can write your code in this editor

if keyboard_check(vk_left) || keyboard_check(ord("A")){
	xdir = -1;
	xVelocity = actor_velocity;
} else if keyboard_check(vk_right) || keyboard_check(ord("D")){
    xdir = 1;
	xVelocity = actor_velocity;
} else if (xVelocity > 0){
	xVelocity -= actor_friction;
} else{
	xdir = 0;
	xVelocity = 0;
}

if keyboard_check(vk_up) || keyboard_check(ord("W")){
     ydir = -1;
	 yVelocity = actor_velocity;
} else if keyboard_check(vk_down) || keyboard_check(ord("S")){
     ydir = 1;
	 yVelocity = actor_velocity;
} else if (yVelocity > 0){
	yVelocity -= actor_friction;
} else {
	ydir = 0;
	yVelocity = 0;
}


x = xprevious + (xdir * xVelocity * (global.step_delta));
y = yprevious + (ydir * yVelocity * (global.step_delta));

show_debug_message(string(xVelocity) + "_" + string(yVelocity));