/// @description  Transition
step++;
obj_player.visible = false;
obj_player.sprite_index = 0;
obj_player.image_speed = 0;
obj_player.state = states.stop;
if (step > time) {
	obj_player.visible = true;
	obj_player.state = states.idle;
	instance_destroy(); 
	}

if (!surface_exists(surf_start) || !surface_exists(surf_end)) {
    if (room != next_room) { 
		room_goto(next_room);
		}
    instance_destroy();
}

