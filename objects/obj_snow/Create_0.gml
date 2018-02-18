/// @description Insert description here
// You can write your code in this editor
numHalfW = sprite_width div 2;
numHalfH = sprite_height div 2;

psSnow = part_system_create_layer("Instances", false);

prtSnow = part_type_create();
part_type_speed(prtSnow,0.8,1.5,0,0);
part_type_direction(prtSnow, 270, 275, 0, 0);
part_type_life(prtSnow,300,500) 
part_type_scale(prtSnow,1.5,1.5)

peSnow = part_emitter_create(psSnow);
part_emitter_region(psSnow, peSnow, x, x + sprite_width, y+numHalfH, y+numHalfH,pt_shape_snow,50);
part_emitter_stream(psSnow, peSnow, prtSnow, 4);