/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 3B08AA89
/// @DnDArgument : "speed" "speedball"
speed = speedball;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 30A097AA
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 010B5F50
/// @DnDArgument : "var" "speedball"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "-2"
if(speedball < -2)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3425E2AB
	/// @DnDParent : 010B5F50
	/// @DnDArgument : "expr" "speedball - (speedball / 5)"
	/// @DnDArgument : "var" "speedball"
	speedball = speedball - (speedball / 5);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0A9B82BC
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 36827AD8
	/// @DnDParent : 0A9B82BC
	/// @DnDArgument : "var" "speedball"
	/// @DnDArgument : "op" "4"
	if(speedball >= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 339300EC
		/// @DnDParent : 36827AD8
		/// @DnDArgument : "var" "speedball"
		speedball = 0;
	}
}