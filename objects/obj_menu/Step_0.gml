/// @description Check for menu inputs
if(keyboard_check_pressed(vk_left)){
	audio_play_sound(snd_moveselect,1,false);
	if(image_index=0 || image_index=5 || image_index=10){
		image_index+=4;
	}else{
	image_index--;
	}
}

if(keyboard_check_pressed(vk_right)){
	audio_play_sound(snd_moveselect,1,false);
	if(image_index=9 || image_index=4 || image_index=14){
		image_index-=4;
	}else{
	image_index++;
	}
}

if(keyboard_check_pressed(vk_down)){
	audio_play_sound(snd_moveselect,1,false);
	image_index+=5;
}

if(keyboard_check_pressed(vk_up)){
	audio_play_sound(snd_moveselect,1,false);
	image_index-=5;
}