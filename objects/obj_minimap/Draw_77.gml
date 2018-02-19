//draw map on screen
var margin = 32;
var map_size_x = map_width * 0.6;
var map_size_y = map_height * 0.6;
var map_x = map_player_x-map_size_x/2;
var map_y = map_player_y-map_size_y/2;

map_x = clamp(map_x, 0, map_width-map_size_x);
map_y = clamp(map_y, 0, map_height-map_size_y);

draw_surface_part(map_surface,  map_x, map_y, map_size_x, map_size_y, margin, window_get_height()-map_size_y-margin);
surface_save(map_surface, "lel.png"); //Save a screenshot of the minimap for future uses ***MAYBE***