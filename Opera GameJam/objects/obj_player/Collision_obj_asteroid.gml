/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 757716AA
instance_destroy();

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 50EB83F3
/// @DnDArgument : "var" "number"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "10"
/// @DnDArgument : "max" "23"
number = floor(random_range(10, 23 + 1));

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 5FACCF94
/// @DnDArgument : "times" "number"
repeat(number)
{
	/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 4DE573C3
	/// @DnDInput : 2
	/// @DnDParent : 5FACCF94
	/// @DnDArgument : "target" "x"
	/// @DnDArgument : "target_1" "y"
	/// @DnDArgument : "instvar_1" "1"
	x = x;
	y = y;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6E1226D7
	/// @DnDParent : 5FACCF94
	/// @DnDArgument : "xpos" "x"
	/// @DnDArgument : "ypos" "y"
	/// @DnDArgument : "objectid" "obj_debree"
	/// @DnDArgument : "layer" ""effects""
	/// @DnDSaveInfo : "objectid" "obj_debree"
	instance_create_layer(x, y, "effects", obj_debree);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7C3F5178
	/// @DnDParent : 5FACCF94
	/// @DnDArgument : "sprite" "spr_debree"
	/// @DnDSaveInfo : "sprite" "spr_debree"
	draw_sprite(spr_debree, 0, 0, 0);
}