/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5B18FCA9
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "0.5"
if(image_xscale > 0.5)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 5C01F93D
	/// @DnDParent : 5B18FCA9
	/// @DnDArgument : "xscale" "-0.25"
	/// @DnDArgument : "xscale_relative" "1"
	/// @DnDArgument : "yscale" "-0.25"
	/// @DnDArgument : "yscale_relative" "1"
	image_xscale += -0.25;
	image_yscale += -0.25;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 18D21FE6
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3B08AA89
	/// @DnDParent : 18D21FE6
	/// @DnDArgument : "speed" "speedball"
	speed = speedball;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 42DB7967
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 10B30252
/// @DnDArgument : "var" "speedball"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "-4"
if(speedball < -4)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 251A498B
	/// @DnDParent : 10B30252
	/// @DnDArgument : "expr" "speedball - (speedball / 100)"
	/// @DnDArgument : "var" "speedball"
	speedball = speedball - (speedball / 100);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 227AB313
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 45236055
	/// @DnDParent : 227AB313
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "var" "speedball"
	speedball = -4;
}

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 44A953EC
/// @DnDArgument : "margin" "sprite_width"
move_wrap(1, 1, sprite_width);