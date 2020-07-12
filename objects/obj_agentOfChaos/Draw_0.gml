event_inherited()
if (broken) {
	if thresholdCounter == 0 {
		thresholdCounter = global.passedTime;
	}
	sprite_index = brokenSprite
} else {
	thresholdCounter = 0
	sprite_index = originalSprite	
}

if (broken && ((global.passedTime - thresholdCounter) >= threshold)) {
	var player = instance_nearest(x,y,obj_player1)
	var camera = instance_nearest(x,y,obj_camera)
	if (player.numLives > 0) player.numLives--
	variable_instance_set(camera,"shake",5)
	broken = false
	instance_destroy(warning)
}