/// @description  Update surfaces
if (kind == transition.left || kind == transition.right || kind == transition.up || kind == transition.down) {
    surface_set_target(surf_end);
    draw_clear(c_black);
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(true,true,true,false);
    draw_surface(application_surface,0,0);
	gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendenable(true);
    surface_reset_target();
}

