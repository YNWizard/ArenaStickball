/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 0238234D
/// @DnDArgument : "soundid" "win"
/// @DnDSaveInfo : "soundid" "4e0d08f9-6072-4d65-a48a-88ac51037257"
audio_play_sound(win, 0, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 71753914
/// @DnDArgument : "var" "playerlast"
/// @DnDArgument : "value" "1"
if(playerlast == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3969B9E0
	/// @DnDApplyTo : be587a13-faef-4223-943f-3e6409ebbdea
	/// @DnDParent : 71753914
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "player1score"
	with(scoring) {
	player1score += 1;
	
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4A6C77A7
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 06B15E1E
	/// @DnDApplyTo : be587a13-faef-4223-943f-3e6409ebbdea
	/// @DnDParent : 4A6C77A7
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "player2score"
	with(scoring) {
	player2score += 1;
	
	}
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 42DFEC04
/// @DnDApplyTo : 6e3fc5fd-d5e3-42ce-8a7a-0dbe29777809
/// @DnDArgument : "steps" "90"
/// @DnDArgument : "alarm" "1"
with(balldropper) {
alarm_set(1, 90);

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5F7E838F
instance_destroy();