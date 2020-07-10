var menu_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
var menu_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
var menu_select = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter);

//draw options
for (var i = 0; i < array_length_1d(options); i += 1){
	draw_set_color(c_black);
	draw_set_font(fnt_orangekid);
	draw_set_valign(fa_center);
	draw_text(x,y+(space*i),options[i]);
	if (pos = i){
		draw_sprite(spr_cursor,0,x-4,y+(space*i));
	}
}

//menu movement
if (menu_up){
	if (pos - 1 < 0) pos = array_length_1d(options) - 1;
	else pos -= 1;
}
if (menu_down){
	if (pos + 1 > array_length_1d(options) - 1) pos = 0;
	else pos += 1;
}

//menu actions
if (menu_select){
	switch(pos){
		case 0: room_goto(rm_game); break;
		case 1: game_end(); break;
	}
}