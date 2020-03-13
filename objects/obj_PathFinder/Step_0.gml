/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 231F99CD
/// @DnDArgument : "code" "if (mouse_check_button_pressed(mb_any)) {$(13_10)	var path = aStarGetPath(x,y,mouse_x, mouse_y);	//returns path$(13_10)	path_start(path,5,0,true);$(13_10)	//path index to start, speed, endaction, absolute$(13_10)$(13_10)}$(13_10)$(13_10)"
if (mouse_check_button_pressed(mb_any)) {
	var path = aStarGetPath(x,y,mouse_x, mouse_y);	//returns path
	path_start(path,5,0,true);
	//path index to start, speed, endaction, absolute

}