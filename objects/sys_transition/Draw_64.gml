/// @description Transition
//We create teh temporary variables containing the gui width and height for easy access.
var width, height, x1, y1, x2, y2;
width = display_get_gui_width();
height = display_get_gui_height();

//Push left
switch (kind) {
    case transition.left: 
        x1 = (1-step/time) * width; y1 = 0;
        x2 = (-step/time) * width; y2 = 0;
    break;
    case transition.right: 
        x1 = (-1+step/time) * width; y1 = 0;
        x2 = (step/time) * width; y2 = 0;
    break;
    case transition.up: 
        x1 = 0; y1 = (1-step/time) * height;
        x2 = 0; y2 = (-step/time) * height;
    break;
    case transition.down: 
        x1 = 0; y1 = (-1+step/time) * height;
        x2 = 0; y2 = (step/time) * height;
    break;
}

if (room != next_room) { room_goto(next_room); }

draw_surface_stretched(surf_end, x1, y1, width, height);
draw_surface_stretched(surf_start, x2, y2, width, height);

