/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 2D0F10F5
/// @DnDArgument : "x" "20"
/// @DnDArgument : "y" "20"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(20, 20, string("Score: ") + string(__dnd_score));

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 10853B1C
/// @DnDArgument : "x" "20"
/// @DnDArgument : "y" "40"
/// @DnDArgument : "sprite" "spr_lives"
/// @DnDSaveInfo : "sprite" "spr_lives"
var l10853B1C_0 = sprite_get_width(spr_lives);
var l10853B1C_1 = 0;
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
for(var l10853B1C_2 = __dnd_lives; l10853B1C_2 > 0; --l10853B1C_2) {
	draw_sprite(spr_lives, 0, 20 + l10853B1C_1, 40);
	l10853B1C_1 += l10853B1C_0;
}