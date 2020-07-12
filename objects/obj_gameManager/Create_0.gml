/// @description Must be in all rooms with actors
// You can write your code in this editor

//Measuring delta_time between frames
script_execute(scr_delta_time);

//effects specific debug logs in scr_debugMsg
global.debug_flag = false;

#macro spawnRate 5
last_spawn = 0;
spawn_pool = 0;

#macro shotRate 15
last_shot = 0;

#macro aocMaxRate 30
last_maxIncrease = 0;

aocList = ds_list_create()
aocsBroken = 0
maxAocsBroken = 2
for (var i = 0; i < instance_number(obj_agentOfChaos); ++i) {
	ds_list_add(aocList, instance_find(obj_agentOfChaos,i))
}

//AOC break rates
counter = 0
threshold = 3
minThreshold = 3
maxThreshold = 8