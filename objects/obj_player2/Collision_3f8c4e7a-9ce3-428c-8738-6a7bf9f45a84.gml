/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 1EE159AC
/// @DnDArgument : "gp" "1"
/// @DnDArgument : "btn" "gp_shoulderr"
var l1EE159AC_0 = 1;
var l1EE159AC_1 = gp_shoulderr;
if(gamepad_is_connected(l1EE159AC_0) && gamepad_button_check_pressed(l1EE159AC_0, l1EE159AC_1))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73F20BC7
	/// @DnDParent : 1EE159AC
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "3"
	if(cooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 45C751B7
		/// @DnDApplyTo : other
		/// @DnDParent : 73F20BC7
		/// @DnDArgument : "x" "obj_player2.x"
		/// @DnDArgument : "y" "obj_player2.y"
		with(other) direction = point_direction(x, y, obj_player2.x, obj_player2.y);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 37DB6915
		/// @DnDApplyTo : other
		/// @DnDParent : 73F20BC7
		/// @DnDArgument : "expr" "-20"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "speedball"
		with(other) {
		speedball += -20;
		
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2A53ADF9
		/// @DnDApplyTo : cd9dd0b7-5e7c-4a81-87a6-0baf4b6a09dc
		/// @DnDParent : 73F20BC7
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "playerlast"
		with(obj_7ball) {
		playerlast = 2;
		
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 36191FC8
		/// @DnDParent : 73F20BC7
		/// @DnDArgument : "expr" "20"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 20;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2522D2C3
		/// @DnDParent : 73F20BC7
		/// @DnDArgument : "spriteind" "spr_player2cd"
		/// @DnDSaveInfo : "spriteind" "dca3ccea-2bb2-48f8-aa5e-ba02ea580bc6"
		sprite_index = spr_player2cd;
		image_index = 0;
	}
}