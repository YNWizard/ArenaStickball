/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Released
/// @DnDVersion : 1.1
/// @DnDHash : 3F3FC5CB
/// @DnDArgument : "btn" "gp_shoulderr"
var l3F3FC5CB_0 = 0;
var l3F3FC5CB_1 = gp_shoulderr;
if(gamepad_is_connected(l3F3FC5CB_0) && gamepad_button_check_released(l3F3FC5CB_0, l3F3FC5CB_1))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 387C1926
	/// @DnDParent : 3F3FC5CB
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
		/// @DnDArgument : "expr" "40"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 40;
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
		/// @DnDVersion : 1
		/// @DnDHash : 64E9EBEE
		/// @DnDParent : 387C1926
		/// @DnDArgument : "sound" "hit"
		/// @DnDArgument : "pitch" "random_range(0.75, 1.5)"
		/// @DnDSaveInfo : "sound" "250ed198-b7ba-43e7-857b-ffcb19fc682f"
		audio_sound_pitch(hit, random_range(0.75, 1.5));
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 079E6BEA
		/// @DnDParent : 387C1926
		/// @DnDArgument : "soundid" "hit"
		/// @DnDSaveInfo : "soundid" "250ed198-b7ba-43e7-857b-ffcb19fc682f"
		audio_play_sound(hit, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 08B3C6C9
		/// @DnDParent : 387C1926
		/// @DnDArgument : "var" "chargeshot"
		chargeshot = 0;
	}
}