/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 3B08AA89
/// @DnDArgument : "speed" "speedball"
speed = speedball;

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