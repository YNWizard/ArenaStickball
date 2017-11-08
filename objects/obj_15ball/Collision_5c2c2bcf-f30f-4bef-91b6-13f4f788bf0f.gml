/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3E6681C7
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)//Horizontal bounce$(13_10)if(place_meeting(x + hspeed, y, wall))$(13_10)    direction = -direction + 180;$(13_10)$(13_10)//Vertical bounce$(13_10)if(place_meeting(x, y + vspeed, wall))$(13_10)    direction = -direction;$(13_10)"
/// @description Execute Code
//Horizontal bounce
if(place_meeting(x + hspeed, y, wall))
    direction = -direction + 180;

//Vertical bounce
if(place_meeting(x, y + vspeed, wall))
    direction = -direction;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 0301270F
/// @DnDArgument : "angle" "-direction"
/// @DnDArgument : "angle_relative" "1"
image_angle += -direction;