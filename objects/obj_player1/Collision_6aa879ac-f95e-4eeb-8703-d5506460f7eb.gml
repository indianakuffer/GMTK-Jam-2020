/// @description Insert description here
// You can write your code in this editor

//show_debug_message("Colliding with an npc")
velocityModifier = slow_multiplier;


// can reverse angle (switch x,y with other)
// or switch cos / sin to modify npc dodge behavior
var angle = degtorad(point_direction(other.x,other.y,x,y));

variable_instance_set(other.id, "xdir", sin(angle));
variable_instance_set(other.id, "ydir", cos(angle));
variable_instance_set(other.id, "xVelocity", actor_velocity);
variable_instance_set(other.id, "yVelocity", actor_velocity);
