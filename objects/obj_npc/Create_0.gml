/// @description Insert description here
// You can write your code in this editor

#macro frequency_lower 60
#macro frequency_upper 180

// Inherit the parent event
event_inherited();

time_accumulator = 0;
move_freq = random_range(frequency_lower, frequency_upper);
move_dir = degtorad(random_range(0,360));
move_length = random_range(1, actor_velocity);