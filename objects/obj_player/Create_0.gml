/// @description Create the variables
ladder_off=false;
can_walljump = "NO";
last_wall = "NONE";
key_down = 0;
busy=false;
speed_ = [0, 0];
max_speed_ = 4;
gravity_ = .5;
acceleration_ = 1;
friction_ = .3;
jump_height_ = -10;
max_health_ = 5;
health_ = max_health_;
invincible_ = false;
kills=0;

// Map the keys
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("D"), vk_right);

// Scale variables
x_scale_ = image_xscale;
y_scale_ = image_yscale;

image_speed = 0.2;

enum states{
	idle,
	move_,
	jump,
	attack,
	stop
}

state = states.move_;

states_array[states.idle] = player_state_idle;
states_array[states.move_] = player_state_move;
states_array[states.jump] = player_state_jump;
states_array[states.attack] = player_state_attack;
states_array[states.stop] = player_state_stop;

//--------Dialogue Stuff
reset_dialogue_defaults();
myPortrait			= spr_portrait_player;
myVoice				= snd_voice2;
myFont				= f_one;
myName				= "Green";

myPortraitTalk		= spr_portrait_examplechar_mouth;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
myPortraitIdle		= spr_portrait_examplechar_idle;