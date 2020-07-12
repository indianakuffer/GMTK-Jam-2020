/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_middle);
draw_set_valign(fa_bottom);
draw_set_color(c_white);
draw_set_font(fnt_orangekid20);


x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2);
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - camera_padding;

draw_text(x,y, string(obj_player1.numLives) + " Lives");