/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player){
	if (obj_player.bbox_bottom > y) || obj_player.key_down{
		mask_index = -1;
		
	}else{
		mask_index = spr_plat;
		
	}


if (obj_player.bbox_bottom > y){
	solid_ = false;
}else{
	solid_ = true;
}
}