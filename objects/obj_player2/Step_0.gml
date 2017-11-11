/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 51A12ECA
/// @DnDArgument : "code" "var h_move = gamepad_axis_value(1, gp_axislh);$(13_10)var v_move = gamepad_axis_value(1, gp_axislv);$(13_10)$(13_10)if ((h_move != 0) || (v_move != 0))$(13_10){$(13_10)x += h_move * 15;$(13_10)y += v_move * 15;$(13_10)}$(13_10)var h_point = gamepad_axis_value(1, gp_axisrh);$(13_10)var v_point = gamepad_axis_value(1, gp_axisrv);$(13_10)if ((h_point != 0) || (v_point != 0))$(13_10){$(13_10)var pdir = point_direction(0, 0, h_point, v_point);$(13_10)var dif = angle_difference(pdir, image_angle);$(13_10)image_angle = pdir;$(13_10)}"
var h_move = gamepad_axis_value(1, gp_axislh);
var v_move = gamepad_axis_value(1, gp_axislv);

if ((h_move != 0) || (v_move != 0))
{
x += h_move * 15;
y += v_move * 15;
}
var h_point = gamepad_axis_value(1, gp_axisrh);
var v_point = gamepad_axis_value(1, gp_axisrv);
if ((h_point != 0) || (v_point != 0))
{
var pdir = point_direction(0, 0, h_point, v_point);
var dif = angle_difference(pdir, image_angle);
image_angle = pdir;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4247EB60
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 34128C91
/// @DnDArgument : "var" "cooldown"
/// @DnDArgument : "op" "3"
if(cooldown <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 64F5CAE3
	/// @DnDParent : 34128C91
	/// @DnDArgument : "spriteind" "spr_player2"
	/// @DnDSaveInfo : "spriteind" "687c2e5b-0a18-4819-b725-9d3f4f869dcf"
	sprite_index = spr_player2;
	image_index = 0;
}