/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left);
draw_text(0, 15, "HSPEED: " + string(obj_player.speed_[h]));
draw_text(0, 28, "VSPEED: " + string(obj_player.speed_[v]));
if(obj_player.can_walljump=="YES"){
	draw_set_color(c_green);
}else{
	draw_set_color(c_red);
}
draw_text(0, 41, "CAN JUMP: " + string(obj_player.can_walljump));
draw_set_color(c_white);
draw_text(0, 54, "FPS: ");
draw_set_color(c_green);
draw_text(0+string_width("FPS: "),54, string(fps));
draw_set_color(c_white);
draw_text(0, 67, "FPS REAL: " + string(fps_real));
draw_text(0, 80, "LAST WALL: " + string(obj_player.last_wall));
if(instance_exists(secret)){
draw_text(0, 93, "SECRET: " + string(secret.secret_));
}
if(obj_player.image_xscale > 0){
	draw_text(0, 2, "IMAGE FACE: RIGHT");
}else{
	draw_text(0, 2, "IMAGE FACE: LEFT");
}

if(keyboard_check_pressed(ord("I")) && !instance_exists(obj_menu)){
	instance_create_depth(x, y, -200, obj_menu);
}
if(keyboard_check_pressed(ord("L"))){
	with(obj_menu){
		instance_destroy();
	}
}