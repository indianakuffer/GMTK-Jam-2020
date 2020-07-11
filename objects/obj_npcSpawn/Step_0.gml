if (spawnNumber > 0) {
	instance_create_depth(x + random(sprite_width),y + random(sprite_height),0,obj_npc)
	spawnNumber--
}