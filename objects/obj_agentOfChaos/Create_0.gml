/// @description Insert description here
// You can write your code in this editor
var dropPoint = instance_create_depth(x,y,depth,obj_dropPoint)
variable_instance_set(dropPoint, "owner", id)

broken = false
originalSprite = sprite_index
brokenSprite = spr_wall

thresholdCounter = 0
threshold = aocFailTimer;