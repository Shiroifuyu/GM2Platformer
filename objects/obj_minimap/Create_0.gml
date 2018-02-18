//map properties
map_divider = 5;

map_player_x = obj_player.x/map_divider;
map_player_y = obj_player.y/map_divider;

//map surface
map_width = room_width/map_divider;
map_height = room_height/map_divider;

map_surface = surface_create(map_width, map_height);