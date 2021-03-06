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
/// @DnDArgument : "max" "4"
ballpick = floor(random_range(1, 4 + 1));

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
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 06422BC0
		/// @DnDParent : 0AF739BC
		/// @DnDArgument : "steps" "0"
		/// @DnDArgument : "alarm" "1"
		alarm_set(1, 0);
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
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 263E4335
		/// @DnDParent : 438AB4DE
		/// @DnDArgument : "steps" "0"
		/// @DnDArgument : "alarm" "1"
		alarm_set(1, 0);
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
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 0A3C801F
		/// @DnDParent : 4135A5DA
		/// @DnDArgument : "steps" "0"
		/// @DnDArgument : "alarm" "1"
		alarm_set(1, 0);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 02C73181
/// @DnDArgument : "var" "ballpick"
/// @DnDArgument : "value" "4"
if(ballpick == 4)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 19980747
	/// @DnDParent : 02C73181
	/// @DnDArgument : "var" "twelve_balldrop"
	if(twelve_balldrop == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 788F6E46
		/// @DnDParent : 19980747
		/// @DnDArgument : "xpos" "room_width / 2"
		/// @DnDArgument : "ypos" "room_height / 2"
		/// @DnDArgument : "objectid" "obj_12ball"
		/// @DnDSaveInfo : "objectid" "c67ad4fa-e5da-425b-bb17-b1426df8a84c"
		instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_12ball);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 162A81FD
	/// @DnDParent : 02C73181
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 3808982D
		/// @DnDParent : 162A81FD
		/// @DnDArgument : "steps" "0"
		/// @DnDArgument : "alarm" "1"
		alarm_set(1, 0);
	}
}