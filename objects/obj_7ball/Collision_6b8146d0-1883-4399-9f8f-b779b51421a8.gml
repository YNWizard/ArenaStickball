/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 50B580F3
/// @DnDApplyTo : be587a13-faef-4223-943f-3e6409ebbdea
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "player2score"
with(scoring) {
player2score += 1;

}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 42DFEC04
/// @DnDApplyTo : 6e3fc5fd-d5e3-42ce-8a7a-0dbe29777809
/// @DnDArgument : "steps" "180"
/// @DnDArgument : "alarm" "1"
with(balldropper) {
alarm_set(1, 180);

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5F7E838F
instance_destroy();