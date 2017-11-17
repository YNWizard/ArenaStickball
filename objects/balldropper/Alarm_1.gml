/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 2CFCB93A
randomize();

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1A280CFB
/// @DnDArgument : "var" "ballpick"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "3"
ballpick = floor(random_range(1, 3 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 51D91987
/// @DnDArgument : "var" "ballpick"
/// @DnDArgument : "value" "3"
if(ballpick == 3)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D9D1D65
	/// @DnDParent : 51D91987
	/// @DnDArgument : "var" "fifteen_balldrop"
	if(fifteen_balldrop == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 39009BB4
		/// @DnDParent : 7D9D1D65
		/// @DnDArgument : "xpos" "room_width / 2"
		/// @DnDArgument : "ypos" "room_height / 2"
		/// @DnDArgument : "objectid" "obj_15ball"
		/// @DnDSaveInfo : "objectid" "59714b8b-5054-4a54-ba60-d6062c9b0d3b"
		instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_15ball);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0AF739BC
	/// @DnDParent : 51D91987
	else
	{
		/// @DnDAction : YoYo Games.Random.Randomize
		/// @DnDVersion : 1
		/// @DnDHash : 0FE80970
		/// @DnDParent : 0AF739BC
		randomize();
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 346A47B7
		/// @DnDParent : 0AF739BC
		/// @DnDArgument : "var" "ballpick"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "min" "1"
		/// @DnDArgument : "max" "3"
		ballpick = floor(random_range(1, 3 + 1));
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7C5BC774
/// @DnDArgument : "var" "ballpick"
/// @DnDArgument : "value" "1"
if(ballpick == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 707EC711
	/// @DnDParent : 7C5BC774
	/// @DnDArgument : "var" "one_balldrop"
	if(one_balldrop == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 270D98DF
		/// @DnDParent : 707EC711
		/// @DnDArgument : "xpos" "room_width / 2"
		/// @DnDArgument : "ypos" "room_height / 2"
		/// @DnDArgument : "objectid" "obj_1ball"
		/// @DnDSaveInfo : "objectid" "e9d16825-f808-4507-bf98-ab7112043d1a"
		instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_1ball);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 438AB4DE
	/// @DnDParent : 7C5BC774
	else
	{
		/// @DnDAction : YoYo Games.Random.Randomize
		/// @DnDVersion : 1
		/// @DnDHash : 776CC100
		/// @DnDParent : 438AB4DE
		randomize();
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 5B7F6825
		/// @DnDParent : 438AB4DE
		/// @DnDArgument : "var" "ballpick"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "min" "1"
		/// @DnDArgument : "max" "3"
		ballpick = floor(random_range(1, 3 + 1));
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6E008308
/// @DnDArgument : "var" "ballpick"
/// @DnDArgument : "value" "2"
if(ballpick == 2)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D02D359
	/// @DnDParent : 6E008308
	/// @DnDArgument : "var" "seven_balldrop"
	if(seven_balldrop == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 25884577
		/// @DnDParent : 1D02D359
		/// @DnDArgument : "xpos" "room_width / 2"
		/// @DnDArgument : "ypos" "room_height / 2"
		/// @DnDArgument : "objectid" "obj_7ball"
		/// @DnDSaveInfo : "objectid" "cd9dd0b7-5e7c-4a81-87a6-0baf4b6a09dc"
		instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_7ball);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 4135A5DA
	/// @DnDParent : 6E008308
	else
	{
		/// @DnDAction : YoYo Games.Random.Randomize
		/// @DnDVersion : 1
		/// @DnDHash : 03B63346
		/// @DnDParent : 4135A5DA
		randomize();
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 7BB7A8A2
		/// @DnDParent : 4135A5DA
		/// @DnDArgument : "var" "ballpick"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "min" "1"
		/// @DnDArgument : "max" "3"
		ballpick = floor(random_range(1, 3 + 1));
	}
}