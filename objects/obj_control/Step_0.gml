/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3A1C1CB0
/// @DnDArgument : "code" "$(13_10)if (mouse_check_button_pressed(mb_right)) {$(13_10)	var inst = instance_create_layer(mouse_x,mouse_y,"Instances", obj_preTower);$(13_10)} else {$(13_10)	global.selected = true;$(13_10)}$(13_10)"

if (mouse_check_button_pressed(mb_right)) {
	var inst = instance_create_layer(mouse_x,mouse_y,"Instances", obj_preTower);
} else {
	global.selected = true;
}