/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 66202B3B
/// @DnDArgument : "var" "chargeshot"
chargeshot = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 41166491
/// @DnDArgument : "var" "speedball"
speedball = 0;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 1E9A9265
/// @DnDArgument : "x" "room_width / 2"
/// @DnDArgument : "y" "room_height"
direction = point_direction(x, y, room_width / 2, room_height);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7B427A5D
/// @DnDApplyTo : 6e3fc5fd-d5e3-42ce-8a7a-0dbe29777809
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "one_balldrop"
with(balldropper) {
one_balldrop = 1;

}

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 45BE863B
/// @DnDArgument : "xscale" "5"
/// @DnDArgument : "yscale" "5"
image_xscale = 5;
image_yscale = 5;