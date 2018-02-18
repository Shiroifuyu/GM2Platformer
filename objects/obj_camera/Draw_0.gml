/// @description Insert description here
// You can write your code in this editor
if(instance_exists(par_speaker)){
with(par_speaker){
		var dr = detection_radius;
		var c = c_yellow;
		draw_rectangle_color(x-dr, y-dr, x+dr, y+dr, c,c,c,c, true);
	}
}