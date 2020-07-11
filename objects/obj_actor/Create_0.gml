/// @description init actor & handle actor macros
// You can write your code in this editor

#macro actor_velocity 1.5
#macro actor_friction .7
#macro interact_maxDistance 10
#macro attachment_offset 5
//#macro keyhold_timer 6

//movement variables
xVelocity = 0;
yVelocity = 0;

xdir = 0;
ydir = 0;

//interaction variables
//interaction_timeAccumulator = 0;
//create a list of attached objects to handle more than one object
carrying = ds_list_create();

//attached = undefined;