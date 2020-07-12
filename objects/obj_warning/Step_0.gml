/// @description Insert description here
// You can write your code in this editor

var dir = point_direction(obj_player1.x,obj_player1.y,owner.x,owner.y)
var dist = point_distance(obj_player1.x,obj_player1.y,owner.x,owner.y)

x = obj_player1.x + lengthdir_x(rad,dir)
y =  obj_player1.y + lengthdir_y(rad,dir)

if (dist < origRad ) {
	image_alpha = 0.2
	rad = dist
} else {
	rad = origRad
	image_alpha = alpha	
}

if (!owner.broken) instance_destroy()