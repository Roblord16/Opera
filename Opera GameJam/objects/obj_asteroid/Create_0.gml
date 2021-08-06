/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 49A75E84
/// @DnDArgument : "path" "path_middle"
/// @DnDArgument : "speed" "10"
/// @DnDArgument : "relative" "true"
/// @DnDSaveInfo : "path" "path_middle"
path_start(path_middle, 10, path_action_stop, true);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 63BC7838
/// @DnDInput : 2
/// @DnDArgument : "var" "size"
/// @DnDArgument : "value" "1"
/// @DnDArgument : "var_1" "multiple"
/// @DnDArgument : "value_1" "1"
var size = 1;
var multiple = 1;

/// @DnDAction : YoYo Games.Loops.While_Loop
/// @DnDVersion : 1
/// @DnDHash : 1BC75187
/// @DnDArgument : "var" "path_index"
/// @DnDArgument : "op" "2"
while ((path_index > 0)) {
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 0F517137
	/// @DnDParent : 1BC75187
	/// @DnDArgument : "code" "size = size * multiple;$(13_10)multiple += 0.1;$(13_10)if(multiple > 2)$(13_10){$(13_10)	multiple = 2;$(13_10)}"
	size = size * multiple;
	multiple += 0.1;
	if(multiple > 2)
	{
		multiple = 2;
	}

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 2607A93C
	/// @DnDParent : 1BC75187
	/// @DnDArgument : "xscale" "size"
	/// @DnDArgument : "yscale" "size"
	image_xscale = size;
	image_yscale = size;
}