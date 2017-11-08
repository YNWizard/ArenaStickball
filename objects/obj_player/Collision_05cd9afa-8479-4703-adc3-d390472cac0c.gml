/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 42BA40AD
/// @DnDArgument : "btn" "gp_shoulderr"
var l42BA40AD_0 = 0;
var l42BA40AD_1 = gp_shoulderr;
if(gamepad_is_connected(l42BA40AD_0) && gamepad_button_check_pressed(l42BA40AD_0, l42BA40AD_1))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 387C1926
	/// @DnDParent : 42BA40AD
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "3"
	if(cooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 022E449A
		/// @DnDApplyTo : other
		/// @DnDParent : 387C1926
		/// @DnDArgument : "x" "obj_player.x"
		/// @DnDArgument : "y" "obj_player.y"
		with(other) direction = point_direction(x, y, obj_player.x, obj_player.y);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 69C46FEF
		/// @DnDApplyTo : other
		/// @DnDParent : 387C1926
		/// @DnDArgument : "expr" "-50"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "speedball"
		with(other) {
		speedball += -50;
		
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 43D67E2C
		/// @DnDApplyTo : other
		/// @DnDParent : 387C1926
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "playerlast"
		with(other) {
		playerlast = 1;
		
		}
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 4EE97536
		/// @DnDParent : 387C1926
		/// @DnDArgument : "spriteind" "spr_playercd"
		/// @DnDSaveInfo : "spriteind" "049cf973-29ae-4c1a-9c38-612ecd490cd7"
		sprite_index = spr_playercd;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5BEC1AEF
		/// @DnDParent : 387C1926
		/// @DnDArgument : "expr" "20"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 20;
	}
}