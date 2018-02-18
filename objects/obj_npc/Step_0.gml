event_inherited();


vsp += grv;
hsp = Approach(hsp,0,frc);
rnd_ = irandom_range(1,20);
/*
if (hit != 0)
{
	if(obj_player.image_index==1){
	i=instance_create_depth(x,y,-20,obj_dmg_number);
	i.damage=rnd_;
	hp--;
	}
    hit = Approach(hit,0,0.05);
    alarm_set(0, 5);
}
else image_index = 0;
*/
hit = Approach(hit,0,0.05);
image_index = 0;
//===Collide
Player_MoveCollide();