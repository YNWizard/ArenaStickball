/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3E48AA98
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "0.25"
if(image_xscale > 0.25)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 3D99E4CA
	/// @DnDParent : 3E48AA98
	/// @DnDArgument : "xscale" "-0.25"
	/// @DnDArgument : "xscale_relative" "1"
	/// @DnDArgument : "yscale" "-0.25"
	/// @DnDArgument : "yscale_relative" "1"
	image_xscale += -0.25;
	image_yscale += -0.25;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 761FDDB4
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 517222D2
	/// @DnDParent : 761FDDB4
	/// @DnDArgument : "speed" "speedball"
	speed = speedball;
}

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
/// @DnDArgument : "value" "-1.2"
if(speedball < -1.2)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3425E2AB
	/// @DnDParent : 010B5F50
	/// @DnDArgument : "expr" "speedball - (speedball / 5)"
	/// @DnDArgument : "var" "speedball"
	speedball = speedball - (speedball / 5);

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7DED2E63
	/// @DnDParent : 010B5F50
	/// @DnDArgument : "spriteind" "spr_1ball"
	/// @DnDSaveInfo : "spriteind" "344c5db0-6193-42ae-954b-b7ef1ec98951"
	sprite_index = spr_1ball;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0A9B82BC
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 39FAD899
	/// @DnDParent : 0A9B82BC
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_1ballmove"
	/// @DnDSaveInfo : "spriteind" "92d29d7e-da43-4a24-b891-4641c78d081c"
	sprite_index = spr_1ballmove;
	image_index += 0;

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