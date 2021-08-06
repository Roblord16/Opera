/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 54696DF2
instance_destroy();

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 5E3AE6BF
/// @DnDArgument : "var" "number"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "10"
/// @DnDArgument : "max" "23"
number = floor(random_range(10, 23 + 1));

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 2CB95CB4
/// @DnDArgument : "times" "number"
repeat(number)
{
	/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 5FF74553
	/// @DnDInput : 2
	/// @DnDParent : 2CB95CB4
	/// @DnDArgument : "target" "x"
	/// @DnDArgument : "target_1" "y"
	/// @DnDArgument : "instvar_1" "1"
	x = x;
	y = y;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 762EE1C9
	/// @DnDParent : 2CB95CB4
	/// @DnDArgument : "xpos" "x"
	/// @DnDArgument : "ypos" "y"
	/// @DnDArgument : "objectid" "obj_debree"
	/// @DnDArgument : "layer" ""effects""
	/// @DnDSaveInfo : "objectid" "obj_debree"
	instance_create_layer(x, y, "effects", obj_debree);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3C1B3759
	/// @DnDParent : 2CB95CB4
	/// @DnDArgument : "sprite" "spr_debree"
	/// @DnDSaveInfo : "sprite" "spr_debree"
	draw_sprite(spr_debree, 0, 0, 0);
}

/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
/// @DnDVersion : 1
/// @DnDHash : 79DA2FEB
/// @DnDArgument : "sound" "explosion1"
/// @DnDSaveInfo : "sound" "explosion1"
audio_sound_gain(explosion1, 1, 0);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 1DA8C6BA
/// @DnDArgument : "soundid" "explosion1"
/// @DnDSaveInfo : "soundid" "explosion1"
audio_play_sound(explosion1, 0, 0);