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
				//get current mapping
				var newMap = ds_list_create()
				//keys rotated clockwise
				ds_list_add(newMap, keymap_right, keymap_up, keymap_left, keymap_down);
				keymap_up = ds_list_find_value(newMap, 0);
				keymap_left = ds_list_find_value(newMap, 1);
				keymap_down = ds_list_find_value(newMap, 2);
				keymap_right = ds_list_find_value(newMap, 3);
				show_debug_message("keys rotated")

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
	//interaction_timeAccumulator = 0;