/// @description Must be in all rooms with actors
// You can write your code in this editor

//Measuring delta_time between frames
script_execute(scr_delta_time);

global.debug_flag = false;


aocList = ds_list_create()
aocsBroken = 0
maxAocsBroken = 2
for (var i = 0; i < instance_number(obj_agentOfChaos); ++i) {
	ds_list_add(aocList, instance_find(obj_agentOfChaos,i))
}

counter = 0
threshold = 8
minThreshold = 3
maxThreshold = 8