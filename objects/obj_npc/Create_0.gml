/// @description Insert description here
// You can write your code in this editor
event_inherited(); //so it will inherit from par_speaker


//-------DIALOGUE STUFF

myPortrait			= spr_portrait_player;
myVoice				= snd_voice1;
myName				= "NPC";

myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;


//-------OTHER

choice_variable		= -1;	//the variable we change depending on the player's choice in dialogue

/////////////
image_index = 0;
image_speed = 0;

hsp = 0;
vsp = 0;
hsp_f = .0;
vsp_f = .0;
grv = 0.2;
frc = 0.1;
acc = 0.5;
jmp = -5
hsp_max = 3;
vsp_max = 5;
jbuff = 0;
hit = 0;


max_hp = 3;
hp=max_hp;

pc = (hp / max_hp) * 100;

invincible = false;