if (place_meeting(x, y, obj_player)) {
    if (xx != -1) { obj_player.x = xx; }
    if (yy != -1) { obj_player.y = yy; }
    
    room_goto_transition(next_room, kind, 60);
}

