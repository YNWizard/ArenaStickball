/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 3803F265
/// @DnDArgument : "btn" "gp_shoulderr"
var l3803F265_0 = 0;
var l3803F265_1 = gp_shoulderr;
if(gamepad_is_connected(l3803F265_0) && gamepad_button_check_pressed(l3803F265_0, l3803F265_1))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73F20BC7
	/// @DnDParent : 3803F265
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "3"
	if(cooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 45C751B7
		/// @DnDApplyTo : other
		/// @DnDParent : 73F20BC7
		/// @DnDArgument : "x" "obj_player.x"
		/// @DnDArgument : "y" "obj_player.y"
		with(other) direction = point_direction(x, y, obj_player.x, obj_player.y);
	
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
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "playerlast"
		with(obj_7ball) {
		playerlast = 1;
		
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 625D36E5
		/// @DnDParent : 73F20BC7
		/// @DnDArgument : "expr" "20"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 20;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6DE04793
		/// @DnDParent : 73F20BC7
		/// @DnDArgument : "spriteind" "spr_playercd"
		/// @DnDSaveInfo : "spriteind" "049cf973-29ae-4c1a-9c38-612ecd490cd7"
		sprite_index = spr_playercd;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 09EBBB3C
		/// @DnDParent : 73F20BC7
		/// @DnDArgument : "soundid" "sound0"
		/// @DnDSaveInfo : "soundid" "4e0d08f9-6072-4d65-a48a-88ac51037257"
		audio_play_sound(sound0, 0, 0);
	}
}