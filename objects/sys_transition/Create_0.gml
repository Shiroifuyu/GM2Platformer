/// @description  Initialize Variables
// Transition Variables
next_room = room;
kind = transition.left;
step = 0;
time = 40;

/// Surfaces
surf_start = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));
surf_end = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));

surface_set_target(surf_start);
gpu_set_blendenable(false);
gpu_set_colorwriteenable(true, true, true, false);
draw_clear(c_black);
draw_surface(application_surface, 0, 0);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true, true, true, true);
surface_reset_target();