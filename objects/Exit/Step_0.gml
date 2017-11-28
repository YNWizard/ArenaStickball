/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3C9D7159
/// @DnDArgument : "var" "shakeBall"
/// @DnDArgument : "value" "1"
if(shakeBall == 1)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 525FA8F2
	/// @DnDParent : 3C9D7159
	/// @DnDArgument : "x" "random_range((room_width/2 + 400)-10, (room_width/2 + 400) +10)"
	/// @DnDArgument : "y" "random_range((room_height/2)-10,(room_height/2)+ 10)"
	x = random_range((room_width/2 + 400)-10, (room_width/2 + 400) +10);
	y = random_range((room_height/2)-10,(room_height/2)+ 10);
}