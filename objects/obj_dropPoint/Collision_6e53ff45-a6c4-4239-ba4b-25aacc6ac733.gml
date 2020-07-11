/// @description Insert description here
// You can write your code in this editor

//if the resource object is unattached
if(other.attached == undefined){
	image_blend = make_colour_hsv(180, 90, 90);
	script_execute(scr_debugMsg,("Colliding with " + string(other.id)));	
}