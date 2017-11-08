/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 2433A33F
/// @DnDArgument : "btn" "gp_shoulderr"
var l2433A33F_0 = 0;
var l2433A33F_1 = gp_shoulderr;
if(gamepad_is_connected(l2433A33F_0) && gamepad_button_check_pressed(l2433A33F_0, l2433A33F_1))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1E54F690
	/// @DnDParent : 2433A33F
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "3"
	if(cooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 7F3BB84A
		/// @DnDApplyTo : other
		/// @DnDParent : 1E54F690
		/// @DnDArgument : "x" "obj_player.x"
		/// @DnDArgument : "y" "obj_player.y"
		with(other) direction = point_direction(x, y, obj_player.x, obj_player.y);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0E3B796F
		/// @DnDApplyTo : other
		/// @DnDParent : 1E54F690
		/// @DnDArgument : "expr" "-50"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "speedball"
		with(other) {
		speedball += -50;
		
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 54D6B8A7
		/// @DnDApplyTo : e9d16825-f808-4507-bf98-ab7112043d1a
		/// @DnDParent : 1E54F690
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "playerlast"
		with(obj_1ball) {
		playerlast = 1;
		
		}
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 266B1AA8
		/// @DnDParent : 1E54F690
		/// @DnDArgument : "spriteind" "spr_playercd"
		/// @DnDSaveInfo : "spriteind" "049cf973-29ae-4c1a-9c38-612ecd490cd7"
		sprite_index = spr_playercd;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 78462106
		/// @DnDParent : 1E54F690
		/// @DnDArgument : "expr" "20"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 20;
	}
}