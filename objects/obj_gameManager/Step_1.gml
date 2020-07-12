/// @description determine game state
// You can write your code in this editor

//MVP
/* Determine Game State Based off of: 

3 lives
Time = more people
time = aoc max count
aoc trigger = constant

lives -= failed AOC
*/

//As time increases, increase spawn pool
if (global.passedTime - last_spawn) > spawnRate {
	spawn_pool++;
	last_spawn = global.passedTime;
	var spawned = script_execute(scr_spawnNPCpool, int64(spawn_pool));
	if spawned != 0 {
		//show_debug_message(spawned)
		spawn_pool = 0;
	}
}


if (global.passedTime - last_shot) > shotRate { 
	script_execute(scr_spawnShot);
	last_shot = global.passedTime;
}

if (global.passedTime - last_maxIncrease) > aocMaxRate && 
	maxAocsBroken < instance_number(obj_agentOfChaos){
		maxAocsBroken ++;
		show_debug_message("Active AOC " + string(maxAocsBroken));
	last_maxIncrease = global.passedTime;
}

/*
GALAXY BRAIN BALANCING GET THAT SHIT OUTTA HERE WE DON'T GOT TIME FOR THAT
Impact of Time 
	number of NPC's increase
	number of possible active agents of chaos increase
 
Impact of NPC's
	slower movement
	(?) chance for shots?
 
Impact of Agents of Chaos
	uncompleted Agents of Chaos reduce "lives"

Impact of alcohol
	recover "lives"
	scramble controls

rateOfNPC = lives
rateOfChaos = # NPCs
maxChaos = Time
rateOfAlcohol = ?
*/