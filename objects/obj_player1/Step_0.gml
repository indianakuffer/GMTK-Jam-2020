/// @description Insert description here
// You can write your code in this editor

//recover velocityModifier
if (velocityModifier < 1){
	velocityModifier += velocity_recovery;
} else {
	velocityModifier = 1
}
//show_debug_message(velocityModifier)

//replace keyboard checks with scr_readInputs later

//movement

if keyboard_check(keymap_left){
	xdir = -1;
	xVelocity = actor_velocity;
} else if keyboard_check(keymap_right){
	xdir = 1;
	xVelocity = actor_velocity;
} else if (xVelocity > 0){
	xVelocity -= actor_friction;
} else{
	xdir = 0;
	xVelocity = 0;
}

if keyboard_check(keymap_up){
	    ydir = -1;
		yVelocity = actor_velocity;
} else if keyboard_check(keymap_down){
	    ydir = 1;
		yVelocity = actor_velocity;
} else if (yVelocity > 0){
	yVelocity -= actor_friction;
} else {
	ydir = 0;
	yVelocity = 0;
}

if (!global.gameRunning) {
	xVelocity = 0
	yVelocity = 0
}

//interaction
/*if keyboard_check(vk_space){
	interaction_timeAccumulator += global.step_delta;	
}
show_debug_message(string(interaction_timeAccumulator));
*/
if keyboard_check_pressed(vk_space){
	//short press
	//if interaction_timeAccumulator <= keyhold_timer{
	var newResourceInRange = false;
	for (var i = 0; i < instance_number(obj_resource); i++){
		var inst_resource = instance_find(obj_resource,i)
		//if the object is within range AND (carrying list is empty or not in the list)
		if (distance_to_object(inst_resource) <= interact_maxDistance
		&& (ds_list_empty(carrying) || ds_list_find_index(carrying, inst_resource) == -1)){
			script_execute(scr_debugMsg, ("Carrying " + string(inst_resource)));
			
			//if the object picked up was a shot
			if(inst_resource.object_index == obj_shot){
				
				//get parent
				var parent_id = variable_instance_get(inst_resource, "attached");
				var inventory = variable_instance_get(parent_id, "carrying");
				ds_list_delete(inventory, ds_list_size(inventory) - 1);
				variable_instance_set(parent_id,"carrying", inventory);
				instance_destroy(inst_resource);
				// DO SOMETHING FOR THE PLAYER HERE LIKE INCREASE LIFE AND SWAP CONTROLS
				numLives ++;
				dazed = true;
			} else {
				//add object to the top of the carrying stack
				ds_list_add(carrying, inst_resource);
				//set actor to attached resource
				variable_instance_set(inst_resource, "attached", id)
				newResourceInRange = true;
			}
		}
		else {
			//show_debug_message("object out of range");
		}
	}
		
	//show_debug_message(newResourceInRange)
	if !ds_list_empty(carrying) && !newResourceInRange {
		var topOfStack = ds_list_find_value(carrying, ds_list_size(carrying) - 1);
		script_execute(scr_debugMsg, ("Dropping " + string(topOfStack)));
		variable_instance_set(topOfStack, "attached", undefined)
		variable_instance_set(topOfStack, "y", (y + ydir * attachment_offset));
		ds_list_delete(carrying, ds_list_size(carrying) - 1);
	}
}

//apply keymapping swap
if dazed {
	dazed_time += global.step_delta;
	if (dazed_time < dazed_length){
		//change applied mapping
		var mapping = newMap;
		show_debug_message("keys rotated")
	} else {
		dazed_time = 0;
		dazed = false;
		var mapping = curMap;
	}
	show_debug_message(dazed_time);
	//apply mapping
	keymap_up = ds_list_find_value(mapping, 0);
	keymap_left = ds_list_find_value(mapping, 1);
	keymap_down = ds_list_find_value(mapping, 2);
	keymap_right = ds_list_find_value(mapping, 3);	
	
}		