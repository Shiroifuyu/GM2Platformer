busy = false;
image_speed = 0.2;
key_down = 0;

if keyboard_check(vk_down) && place_meeting(x, y + 1, obj_plat) {
    key_down = 1;
}

can_walljump = "NO";

if health_ <= 0 {
    instance_destroy();
}

var hinput = keyboard_check(vk_right) - keyboard_check(vk_left);

if hinput != 0 && (place_meeting(x,y+1,obj_solid) | !place_meeting(x,y,obj_ladder)){
    speed_[h] += hinput * acceleration_;
    speed_[h] = clamp(speed_[h], -max_speed_, max_speed_);
} else {
    speed_[h] = lerp(speed_[h], 0, friction_);
}

if !place_meeting(x, y + 1, obj_solid) {
    speed_[v] += gravity_;
} else {
					ladder_off = false;
    if (keyboard_check_pressed(vk_up)) {
        repeat(choose(2, 3)) instance_create_depth(x, bbox_bottom, -1, obj_dust);
        speed_[v] = jump_height_;
    }
}

        if place_meeting(x, y, obj_ladder) {
            gravity_ = 0;
			if(place_meeting(x,y+1,obj_solid)){
				busy = false;
			}else{
				busy = true;
			}
			
			if keyboard_check(ord("V")){
				ladder_off = true;
			}
			
            if keyboard_check(vk_up) {
                speed_[v] = -5;
            } else if keyboard_check(vk_down) {
                speed_[v] = 5;
                key_down = 1;
            }
            else {
                speed_[v] = -0;
            }
        } else {
            gravity_ = 0.5;
        }


        if ((last_wall == "LEFT" || last_wall == "NOONE") && (place_meeting(x + 1, y, obj_solid)) && !place_meeting(x, y + 1, obj_solid)) {
            can_walljump = "YES";
        }
        if ((last_wall == "RIGHT" || last_wall == "NOONE") && (place_meeting(x - 1, y, obj_solid)) && !place_meeting(x, y + 1, obj_solid)) {
            can_walljump = "YES";
        }



        if ((place_meeting(x + 1, y, obj_solid) || place_meeting(x - 1, y, obj_solid)) && !place_meeting(x, y + 1, obj_solid) && (keyboard_check(vk_left) || (keyboard_check(vk_right)))) {
            if (speed_[v] <= 20) && (speed_[v] > 1) speed_[v] -= 1;
            busy = true;
        }

        if (place_meeting(x + 1, y, obj_solid) && !place_meeting(x, y + 1, obj_solid) && keyboard_check_pressed(vk_up) && last_wall != "RIGHT") {
            speed_[v] = jump_height_;
            speed_[h] = -10;
            last_wall = "RIGHT";
        }

        if (place_meeting(x - 1, y, obj_solid) && !place_meeting(x, y + 1, obj_solid) && keyboard_check_pressed(vk_up) && last_wall != "LEFT") {
            speed_[v] = jump_height_;
            speed_[h] = 10;
            last_wall = "LEFT";
        }

        move(speed_);

        // Check for landing
        if place_meeting(x, y + 1, obj_solid) && !place_meeting(x, yprevious + 1, obj_solid) {
            repeat(choose(2, 3)) instance_create_depth(x, bbox_bottom, -1, obj_dust);
            last_wall = "NOONE"
        }

        //====Animate
        if (sign(speed_[h]) != 0) image_xscale = sign(speed_[h]);
        if (keyboard_check(vk_left) || keyboard_check(vk_right)) {
			if(place_meeting(x,y+1,obj_solid) | !place_meeting(x,y,obj_ladder)){
            sprite_index = spr_hw;
			}else{
			sprite_index = spr_player;
			}
        } else {
            sprite_index = spr_player;
        }
        if (speed_[v] < 0) sprite_index = spr_hj;
        if (speed_[v] > 0) sprite_index = spr_hf;
		
		if(keyboard_check(ord("C")) && place_meeting(x,y+1,obj_solid)){
			sprite_index = spr_crouch;
		}

        if (keyboard_check_pressed(vk_space) && !busy)
        {
            state = states.attack;
            image_index = 0;
            sprite_index = spr_attack;
        }
		
		 if (instance_exists(obj_textbox))
        {
			sprite_index = spr_player;
            state = states.idle;
        }
		
		if (instance_exists(obj_menu))
        {
			sprite_index = spr_player;
            state = states.jump;
        }
		if((keyboard_check(vk_left) || keyboard_check(vk_right)) && (place_meeting(x+1,y,obj_solid) || place_meeting(x-1,y,obj_solid)) && !place_meeting(x,y+1,obj_solid)){
			if(keyboard_check(vk_left)){
				sprite_index = spr_player_wall;
				image_xscale=1;
			}
			if(keyboard_check(vk_right)){
				sprite_index = spr_player_wall;
				image_xscale=-1;
			}
		}
		
		if((keyboard_check(vk_left) || keyboard_check(vk_right)) && (place_meeting(x+1,y,obj_solid) || place_meeting(x-1,y,obj_solid)) && place_meeting(x,y+1,obj_solid)){
			sprite_index = spr_push;
		}