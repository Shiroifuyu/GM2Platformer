/// @description Insert description here
// You can write your code in this editor
draw_self();
if(instance_exists(secret)){
if(secret.secret_ == true){

draw_sprite_ext(spr_player, 0, x,y, image_xscale, image_yscale, 0, c_white, .5);


gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);

draw_set_alpha(0);
var x1 = x-sprite_xoffset;
var y1  = y-sprite_yoffset;
draw_rectangle(x1, y1, x1+sprite_width, y1+sprite_height, false);
draw_set_alpha(1);

gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendenable(true);
}
}

draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,1);

