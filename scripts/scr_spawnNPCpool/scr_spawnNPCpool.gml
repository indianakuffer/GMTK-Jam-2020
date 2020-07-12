//Input : int arguement0 of npc's to spawn
//Output : int number of npcs added

if !is_int64(argument0){
	return 0;	
} else {
	//get list of all spawn zones
	var pool = instance_furthest(obj_player1.x, obj_player1.y, obj_npcSpawn);		
	var num_spawn = variable_instance_get(pool, "spawnNumber") + argument0;
	variable_instance_set(pool, "spawnNumber", num_spawn)
	show_debug_message("Spawn Count Modified by " + string(argument0));
	return argument0;
}
	