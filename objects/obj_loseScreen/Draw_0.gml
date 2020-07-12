var cam_width = camera_get_view_width(view_camera[0])
var cam_height = camera_get_view_height(view_camera[0])

x = camera_get_view_x(view_camera[0])
y = camera_get_view_y(view_camera[0])


draw_set_alpha(0.7)
draw_set_color(c_black)
draw_rectangle(x, y, x+cam_width, y+cam_height, false)
draw_set_alpha(1)

draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_orangekid20)
draw_text(x + cam_width/2, y + cam_height/2,"You lose :(")

if (canRestart) {
	if (canRestartOpacity < 1) canRestartOpacity += 1/room_speed/canRestartFadeIn
	draw_set_font(fnt_orangekid)
	draw_set_alpha(canRestartOpacity)
	draw_text(x + cam_width/2, y + cam_height/2 + 40,"Press space to restart")
	draw_set_alpha(1)
	if (keyboard_check_pressed(vk_space) && !global.gameRunning) {room_goto(rm_menu)}
}