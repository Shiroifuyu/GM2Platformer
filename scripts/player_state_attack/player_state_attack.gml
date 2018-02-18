var hinput = keyboard_check(vk_right) - keyboard_check(vk_left);
if hinput != 0 {
    speed_[h] += hinput * acceleration_;
    speed_[h] = clamp(speed_[h], -max_speed_, max_speed_);
} else {
    speed_[h] = lerp(speed_[h], 0, friction_);
}

if !place_meeting(x, y + 1, obj_solid) {
    speed_[v] += gravity_;
} else {
    if (keyboard_check_pressed(vk_up)) {
		repeat(choose(2, 3)) instance_create_depth(x, bbox_bottom, -1, obj_dust);
		speed_[v] = jump_height_;
		}
	}
move(speed_);

	sprite_index = spr_attack;
	image_speed = 0.4;
	if (image_index >= 1) && (image_index <= 3)
        {
            with (instance_create_depth(x,y,-1,obj_hitbox))
            {
                image_xscale = other.image_xscale;
				 with (instance_place(x,y,par_enemy))
                {
                    if (hit == 0)
                    {
                        hit = 1;
                        vsp = -3;
                        hsp = sign(x - other.x) * 4;
                        image_xscale = sign(hsp);
                    }
			}
		}
}