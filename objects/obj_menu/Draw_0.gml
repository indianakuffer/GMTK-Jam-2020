var menu_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
var menu_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
var menu_select = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter);

//draw title
draw_set_color(c_black)
draw_set_font(fnt_orangekid36)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(x + 20,y - 50,"Out of Town")

draw_set_font(fnt_arial)
draw_text_ext(x + 20,y + 100,"Your parents are out of town and you decided to throw a party, but it's out of control! Use the tools around your house to make sure everyone stays happy! If you're low on lives, keep an eye out for a guest who wants to give you a    shot.",18,300)

//draw options
for (var i = 0; i < array_length_1d(options); i += 1){
	draw_set_color(c_black);
	draw_set_font(fnt_orangekid20);
	draw_set_valign(fa_center);
	draw_set_halign(fa_left);
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
		case 0: room_goto(rm_game); global.gameRunning = true; break;
		case 1: game_end(); break;
	}
}