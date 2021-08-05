/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 63CF5753
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "newLaser"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_laser"
/// @DnDSaveInfo : "objectid" "obj_laser"
var newLaser = instance_create_layer(x + 0, y + 0, "Instances", obj_laser);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 71BA9F2D
/// @DnDArgument : "expr" "image_angle"
/// @DnDArgument : "var" "newLaser.direction"
newLaser.direction = image_angle;