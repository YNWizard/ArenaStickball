/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 6A3312E5
/// @DnDArgument : "x" "room_width / 2"
/// @DnDArgument : "y" "room_height / 8"
/// @DnDArgument : "xscale" "1.6"
/// @DnDArgument : "yscale" "1.6"
/// @DnDArgument : "caption" ""Next Ball:""
/// @DnDArgument : "text" "ballpick"
draw_text_transformed(room_width / 2, room_height / 8, string("Next Ball:") + string(ballpick), 1.6, 1.6, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 55AA1F09
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);