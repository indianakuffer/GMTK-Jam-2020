/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_font(fnt_orangekid20);

x = camera_get_view_x(view_camera[0]) + camera_padding;
y = camera_get_view_y(view_camera[0]) + camera_padding;

draw_text(x,y, string(instance_number(obj_npc)) + " friends");