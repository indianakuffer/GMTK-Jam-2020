/// @description Insert description here
// You can write your code in this editor

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

show_debug_message(string(xdir) + "_" + string(ydir));