/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_middle);
draw_set_valign(fa_bottom);
draw_set_color(c_white);
draw_set_font(fnt_orangekid20);


x = obj_player1.x;
y = obj_player1.y - camera_padding;

if obj_player1.daze_remain != 0 {
	draw_text(x,y, string(obj_player1.daze_remain));
}