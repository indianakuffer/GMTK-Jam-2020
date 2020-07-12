/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

numLives = 3

#macro dazed_length 10
dazed = false;
dazed_start = 0;

keymap_up = ord("W");
keymap_left = ord("A");
keymap_down = ord("S");
keymap_right = ord("D");

curMap = ds_list_create()
ds_list_add(curMap, keymap_up, keymap_left, keymap_down, keymap_right);

newMap = ds_list_create()
//keys rotated clockwise
ds_list_add(newMap, keymap_right, keymap_up, keymap_left, keymap_down);
