/// @description Insert description here
// You can write your code in this editor

//probably need to modify based on the constraints of the room
#macro inner_bounds 5

instance_create_layer(random_range(inner_bounds, room_width - inner_bounds), 
		random_range(inner_bounds, room_height - inner_bounds),
		"Instances",
		obj_resource)

instance_create_layer(random_range(inner_bounds, room_width - inner_bounds), 
		random_range(inner_bounds, room_height - inner_bounds),
		"Instances",
		obj_dropPoint)