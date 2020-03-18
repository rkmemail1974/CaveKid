/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 503DF95B
/// @DnDArgument : "code" "$(13_10)inst = instance_nearest(x,y,obj_preTower);$(13_10)$(13_10)//if (mouse_check_button_pressed(mb_left) && global.selected) {$(13_10)	path = aStarGetPath(x,y,inst.x,inst.y);//mouse_x, mouse_y);	//returns path$(13_10)	//path_start(path,1,0,true);$(13_10)	//path index to start, speed, endaction, absolute$(13_10)//global.selected = false;$(13_10)//}"

inst = instance_nearest(x,y,obj_preTower);

//if (mouse_check_button_pressed(mb_left) && global.selected) {
	path = aStarGetPath(x,y,inst.x,inst.y);//mouse_x, mouse_y);	//returns path
	//path_start(path,1,0,true);
	//path index to start, speed, endaction, absolute
//global.selected = false;
//}

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 7F6761D4
/// @DnDArgument : "path" "path"
/// @DnDArgument : "speed" "5"
path_start(path, 5, path_action_stop, false);