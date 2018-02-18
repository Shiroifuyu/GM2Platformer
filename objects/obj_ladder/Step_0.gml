/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player){
	if obj_player.ladder_off==true{
		mask_index = -1;
		
	}else{
		mask_index = spr_ladder;	
	}


if (obj_player.ladder_off == true){
	solid_ = false;
}else{
	solid_ = true;
}
}