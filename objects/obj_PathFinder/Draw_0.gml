/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 190791BC
/// @DnDArgument : "code" "draw_self();$(13_10)//path_index is system variable$(13_10)//draw path elements$(13_10)/*$(13_10)if (path_get_number(path_index)>=2) {$(13_10)	//draw path$(13_10)	draw_set_color(c_blue);$(13_10)	var temp = path_get_number(path_index);//returns number of points on path$(13_10)	for(var i = 0; i<temp-1;i++) {$(13_10)		draw_line($(13_10)			path_get_point_x(path_index,i) + .5*obj_Astar.blockSize,$(13_10)			path_get_point_y(path_index,i) + .5*obj_Astar.blockSize,$(13_10)			path_get_point_x(path_index,i+1) + .5*obj_Astar.blockSize,$(13_10)			path_get_point_y(path_index,i+1) + .5*obj_Astar.blockSize$(13_10)			);$(13_10)	}$(13_10)	$(13_10)	//draw starting and ending point$(13_10)	draw_set_color(c_green);//sets base color for drawing functions$(13_10)	draw_circle(path_get_point_x(path_index,0)+.5*obj_Astar.blockSize,$(13_10)		path_get_point_y(path_index,0)+.5*obj_Astar.blockSize,5,false);$(13_10)	draw_set_color(c_red);$(13_10)	$(13_10)	//****not drawing end red circle!$(13_10)	draw_circle(path_get_point_x(path_index,path_get_number(path_index)-1 +.5*obj_Astar.blockSize),$(13_10)		path_get_point_y(path_index,path_get_number(path_index)-1+.5*obj_Astar.blockSize),5,false);$(13_10)		}$(13_10)		$(13_10)		*/"
draw_self();
//path_index is system variable
//draw path elements
/*
if (path_get_number(path_index)>=2) {
	//draw path
	draw_set_color(c_blue);
	var temp = path_get_number(path_index);//returns number of points on path
	for(var i = 0; i<temp-1;i++) {
		draw_line(
			path_get_point_x(path_index,i) + .5*obj_Astar.blockSize,
			path_get_point_y(path_index,i) + .5*obj_Astar.blockSize,
			path_get_point_x(path_index,i+1) + .5*obj_Astar.blockSize,
			path_get_point_y(path_index,i+1) + .5*obj_Astar.blockSize
			);
	}
	
	//draw starting and ending point
	draw_set_color(c_green);//sets base color for drawing functions
	draw_circle(path_get_point_x(path_index,0)+.5*obj_Astar.blockSize,
		path_get_point_y(path_index,0)+.5*obj_Astar.blockSize,5,false);
	draw_set_color(c_red);
	
	//****not drawing end red circle!
	draw_circle(path_get_point_x(path_index,path_get_number(path_index)-1 +.5*obj_Astar.blockSize),
		path_get_point_y(path_index,path_get_number(path_index)-1+.5*obj_Astar.blockSize),5,false);
		}
		
		*//**/