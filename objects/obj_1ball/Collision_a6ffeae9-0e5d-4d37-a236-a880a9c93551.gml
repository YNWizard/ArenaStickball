/// @description Execute Code
//Horizontal bounce
if(place_meeting(x + hspeed, y, wall))
    direction = -direction + 180;

//Vertical bounce
if(place_meeting(x, y + vspeed, wall))
    direction = -direction;