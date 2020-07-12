/// @description Insert description here
// You can write your code in this editor

draw_self()

var offset = 5;
var thickness = 5;

//var parent_owner = variable_instance_get(id, "owner");

if(variable_instance_get(owner, "broken") == true){
	var total = variable_instance_get(owner, "threshold")
	var elapsed = global.passedTime - variable_instance_get(owner, "thresholdCounter")
	var time_status = (total - elapsed) / total * 100
	//show_debug_message(time_status);
	draw_healthbar(x - (sprite_width/3), 
		y + sprite_height/3 + offset,
		x + sprite_width/3,
		y + sprite_height/3 + offset + thickness,
		//amount remaining / total time
		time_status,
		c_black, c_red, c_white, 0, false, true)
}