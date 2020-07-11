/// @description Insert description here
// You can write your code in this editor

//if the resource object is unattached
if(other.attached == undefined){
	
	script_execute(scr_debugMsg,("Colliding with " + string(other.id)));
	if (other.id = solution.id) {
		image_blend = c_green
		owner.broken = false
	} else {
		// Play buzzer sound or some visual cue
		image_blend = c_red
	}
} else {
	image_blend = c_white	
}