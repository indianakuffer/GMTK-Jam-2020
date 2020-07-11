var cam_width = camera_get_view_width(view_camera[0]);
var cam_height = camera_get_view_height(view_camera[0]);

if instance_exists(following) {
	x_goto = following.x;
	y_goto = following.y;
	
	x = lerp(x,x_goto,.05);
	y = lerp(y,y_goto,.05);
}


cam_w = x - cam_width/2;
cam_h = y - cam_height/2;

camera_set_view_pos(view_camera[0],cam_w + choose(-shake,shake),cam_h + choose(-shake,shake));


if (shake > 0.1){
	shake *= shake_reduction;
} else {
	shake = 0;	
}