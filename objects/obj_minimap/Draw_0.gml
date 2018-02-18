//draw to map surface
surface_set_target(map_surface);
//draw minimap
draw_sprite(map, 0, 0, 0);
//draw player icon
draw_sprite_ext(spr_player_icon, 0, map_player_x, map_player_y, 1, 1, obj_player.image_xscale*-90, c_white, 1);

surface_reset_target();