/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 6750DE43
/// @DnDArgument : "gp" "1"
/// @DnDArgument : "btn" "gp_shoulderr"
var l6750DE43_0 = 1;
var l6750DE43_1 = gp_shoulderr;
if(gamepad_is_connected(l6750DE43_0) && gamepad_button_check_pressed(l6750DE43_0, l6750DE43_1))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 252C1C76
	/// @DnDParent : 6750DE43
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "3"
	if(cooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 7FFF2AB2
		/// @DnDApplyTo : other
		/// @DnDParent : 252C1C76
		/// @DnDArgument : "x" "obj_player2.x"
		/// @DnDArgument : "y" "obj_player2.y"
		with(other) direction = point_direction(x, y, obj_player2.x, obj_player2.y);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7E43B11E
		/// @DnDApplyTo : other
		/// @DnDParent : 252C1C76
		/// @DnDArgument : "expr" "-50"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "speedball"
		with(other) {
		speedball += -50;
		
		}
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 4629DEA0
		/// @DnDParent : 252C1C76
		/// @DnDArgument : "soundid" "sound0"
		/// @DnDSaveInfo : "soundid" "4e0d08f9-6072-4d65-a48a-88ac51037257"
		audio_play_sound(sound0, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 14F20FAC
		/// @DnDApplyTo : other
		/// @DnDParent : 252C1C76
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "playerlast"
		with(other) {
		playerlast = 2;
		
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3D3AE329
		/// @DnDParent : 252C1C76
		/// @DnDArgument : "expr" "20"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 20;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 270A11C6
		/// @DnDParent : 252C1C76
		/// @DnDArgument : "spriteind" "spr_player2cd"
		/// @DnDSaveInfo : "spriteind" "dca3ccea-2bb2-48f8-aa5e-ba02ea580bc6"
		sprite_index = spr_player2cd;
		image_index = 0;
	}
}