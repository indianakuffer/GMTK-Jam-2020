event_inherited()
if (broken) {
	sprite_index = brokenSprite
	thresholdCounter++
} else {
	thresholdCounter = 0
	sprite_index = originalSprite	
}

if (thresholdCounter >= threshold) {
	var player = instance_nearest(x,y,obj_player1)
	var camera = instance_nearest(x,y,obj_camera)
	variable_instance_set(player,"numLives", variable_instance_get(player, "numLives") - 1)
	variable_instance_set(camera,"shake",5)
	broken = false
}