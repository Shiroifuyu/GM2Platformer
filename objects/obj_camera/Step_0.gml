if not instance_exists(target_) exit;
x = lerp(x, target_.x, 0.5);
y = lerp(y, target_.y, 0.8);
x = clamp(x, width_/2, room_width-width_/2);
y = clamp(y, height_/2, room_height-height_/2);
camera_set_view_pos(view_camera[0], x-width_/2, y-height_/2);

if(keyboard_check(ord("R"))){
	game_restart();
}

if(keyboard_check(ord("F"))){
	window_set_fullscreen(true);
}

// STEP EVENT OF THE PLAYER OR SOME CONTROLLER OBJECT
var _cam_x = camera_get_view_x(view_camera[0]) ;
layer_x("bg_1", _cam_x * 0.5); // Change the background layer name to whatever you use in the room editor
layer_x("bg_2", _cam_x * 0.25);   // Change the 0.25 and 0.5 values to change the speed of the effect
layer_x("bg_3", _cam_x * 1); 