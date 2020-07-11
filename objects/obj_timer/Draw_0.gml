x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - padding*2
y = camera_get_view_y(view_camera[0]) + padding

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_white)
draw_set_font(fnt_orangekid20)

if (seconds < 10) second_string = "0" + string(seconds)
else second_string = string(seconds)
draw_text(x,y,string(minutes) + ":" + string(second_string))