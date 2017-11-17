/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 51A12ECA
/// @DnDArgument : "code" "var h_move = gamepad_axis_value(0, gp_axislh);$(13_10)var v_move = gamepad_axis_value(0, gp_axislv);$(13_10)if ((h_move != 0) || (v_move != 0))$(13_10){$(13_10)x += h_move * p_speed;$(13_10)y += v_move * p_speed;$(13_10)}$(13_10)var h_point = gamepad_axis_value(0, gp_axisrh);$(13_10)var v_point = gamepad_axis_value(0, gp_axisrv);$(13_10)if ((h_point != 0) || (v_point != 0))$(13_10){$(13_10)var pdir = point_direction(0, 0, h_point, v_point);$(13_10)image_angle = pdir;$(13_10)}"
var h_move = gamepad_axis_value(0, gp_axislh);
var v_move = gamepad_axis_value(0, gp_axislv);
if ((h_move != 0) || (v_move != 0))
{
x += h_move * p_speed;
y += v_move * p_speed;
}
var h_point = gamepad_axis_value(0, gp_axisrh);
var v_point = gamepad_axis_value(0, gp_axisrv);
if ((h_point != 0) || (v_point != 0))
{
var pdir = point_direction(0, 0, h_point, v_point);
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
/// @DnDHash : 4076577E
/// @DnDArgument : "var" "cooldown"
/// @DnDArgument : "op" "3"
if(cooldown <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 34244780
	/// @DnDParent : 4076577E
	/// @DnDArgument : "spriteind" "spr_player"
	/// @DnDSaveInfo : "spriteind" "7cb09654-ce5d-4b56-8b23-1d6acd1973c2"
	sprite_index = spr_player;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
/// @DnDVersion : 1.1
/// @DnDHash : 36EA771C
/// @DnDArgument : "btn" "gp_shoulderr"
var l36EA771C_0 = 0;
var l36EA771C_1 = gp_shoulderr;
if(gamepad_is_connected(l36EA771C_0) && (gamepad_button_check(l36EA771C_0, l36EA771C_1) || gamepad_button_check_released(l36EA771C_0, l36EA771C_1)))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 50CC34AE
	/// @DnDParent : 36EA771C
	/// @DnDArgument : "var" "cooldown"
	if(cooldown == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 34DEFAC7
		/// @DnDParent : 50CC34AE
		/// @DnDArgument : "expr" "-0.6"
		/// @DnDArgument : "var" "chargeshot"
		chargeshot = -0.6;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3E6684DA
		/// @DnDParent : 50CC34AE
		/// @DnDArgument : "var" "chargeshot"
		/// @DnDArgument : "op" "3"
		/// @DnDArgument : "value" "-200"
		if(chargeshot <= -200)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 79DCF5F8
			/// @DnDParent : 3E6684DA
			/// @DnDArgument : "expr" "-200"
			/// @DnDArgument : "var" "chargeshot"
			chargeshot = -200;
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5ECF6BFA
	/// @DnDParent : 36EA771C
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "var" "p_speed"
	p_speed = 5;
}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Released
/// @DnDVersion : 1.1
/// @DnDHash : 15682CA0
/// @DnDArgument : "btn" "gp_shoulderr"
var l15682CA0_0 = 0;
var l15682CA0_1 = gp_shoulderr;
if(gamepad_is_connected(l15682CA0_0) && gamepad_button_check_released(l15682CA0_0, l15682CA0_1))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 473E4BB6
	/// @DnDParent : 15682CA0
	/// @DnDArgument : "expr" "15"
	/// @DnDArgument : "var" "p_speed"
	p_speed = 15;
}