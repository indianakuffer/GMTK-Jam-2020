var max_iter = 10;
var i = 0;

//select random NPC with empty inventory
do {
	// get random instance
	var parent_id = instance_find(obj_npc, irandom(instance_number(obj_npc) - 1));
	//get carrying list
	var inventory = variable_instance_get(parent_id, "carrying");
	i++;
} until (ds_list_empty(inventory) || i >= max_iter);

//if we were able to find an NPC in i iterations
if (i < max_iter){
	//create shot instance
	var inst = instance_create_layer(parent_id.x, parent_id.y,"Instances",obj_shot);

	//attach NPC id to shot
	variable_instance_set(inst, "attached", parent_id);

	//add to shot to NPC's inventory
	ds_list_add(inventory, inst);
	variable_instance_set(parent_id, "carrying", inventory);
	show_debug_message("Added shot to " + string(parent_id));
} else {
	show_debug_message("Was not able to get an NPC");
}