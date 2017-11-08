/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 28F7D6AD
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "0.25"
if(image_xscale > 0.25)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 17D66B5C
	/// @DnDParent : 28F7D6AD
	/// @DnDArgument : "xscale" "-0.25"
	/// @DnDArgument : "xscale_relative" "1"
	/// @DnDArgument : "yscale" "-0.25"
	/// @DnDArgument : "yscale_relative" "1"
	image_xscale += -0.25;
	image_yscale += -0.25;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 736A590F
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3B08AA89
	/// @DnDParent : 736A590F
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
/// @DnDArgument : "value" "-200"
if(speedball < -200)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 251A498B
	/// @DnDParent : 10B30252
	/// @DnDArgument : "expr" "-200"
	/// @DnDArgument : "var" "speedball"
	speedball = -200;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 36827AD8
/// @DnDArgument : "var" "speedball"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "-12"
if(speedball >= -12)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 339300EC
	/// @DnDParent : 36827AD8
	/// @DnDArgument : "expr" "-12"
	/// @DnDArgument : "var" "speedball"
	speedball = -12;
}