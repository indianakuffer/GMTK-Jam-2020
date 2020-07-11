/// @description movement
// You can write your code in this editor

newX = xprevious + (xdir * xVelocity * velocityModifier * (global.step_delta));
newY = yprevious + (ydir * yVelocity * velocityModifier *  (global.step_delta));
//accomidate for collisions
while(place_meeting(newX,newY,obj_wall)){
	if(place_meeting(xprevious, newY, obj_wall)){
		newY -= ydir;
	}
	if(place_meeting(newX, yprevious, obj_wall)){
		newX -= xdir;
	}
}
x = newX;
y = newY;

//show_debug_message(string(x) + "_" + string(y));

//if there is an attached object, move attached object
if !ds_list_empty(carrying){
	//show_debug_message("item(s) attached")
	for (var i = 0; i < ds_list_size(carrying); i++){
		var attached = ds_list_find_value(carrying,i);
		variable_instance_set(attached, "x", x + -xdir * attachment_offset);
		variable_instance_set(attached, "y", y + -ydir * attachment_offset - (attached.sprite_height * i)/attachment_offset);
//		variable_instance_set(attached, "z", ydir * i * depth);
		//when going up, the object should be behind
		//when going down, the object should infront
	}
	
}

//if you make this an array of objects being carried, add a slight stacking offset for a bit of wiggle?