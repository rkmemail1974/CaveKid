/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 28C196B2
/// @DnDArgument : "code" "if (mouse_check_button_pressed(mb_left)) {$(13_10)	if (point_in_circle(mouse_x, mouse_y, x, y,200))$(13_10)	{	$(13_10)		first = false;$(13_10)		show_debug_message("clicking circle");$(13_10)		global.id = id;$(13_10)		var temp = instance_create_layer(x+400, y-400, "Instances", obj_tower1);$(13_10)	}$(13_10)}"
if (mouse_check_button_pressed(mb_left)) {
	if (point_in_circle(mouse_x, mouse_y, x, y,200))
	{	
		first = false;
		show_debug_message("clicking circle");
		global.id = id;
		var temp = instance_create_layer(x+400, y-400, "Instances", obj_tower1);
	}
}