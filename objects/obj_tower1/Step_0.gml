/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 46609B44
/// @DnDArgument : "code" "if (mouse_check_button_pressed(mb_left) && first) {$(13_10)	$(13_10)var temp = point_in_rectangle(mouse_x,mouse_y, x-120, y-200,x+120,y+200);//position_meeting(mouse_x, mouse_y, obj_tower1);//collision_point(mouse_x,mouse_y,obj_tower1, false, false);$(13_10)if (temp) {$(13_10)			//var temp = noone;$(13_10)			first = false;$(13_10)			var inst = instance_create_layer(global.id.x, global.id.y, "Instances", obj_tower);$(13_10)			$(13_10)			with (global.id) {$(13_10)				 instance_destroy();$(13_10)			}$(13_10)			$(13_10)		instance_destroy();$(13_10)		$(13_10)} else {$(13_10)	//first = true;$(13_10)	with (obj_preTower) {$(13_10)		if (!point_in_circle(mouse_x, mouse_y, x, y,200)){//first = true;	$(13_10)			first = true;$(13_10)			show_debug_message("can click circle again");$(13_10)		}$(13_10)	//show_debug_message("can click circle again");$(13_10)	$(13_10)}$(13_10)instance_destroy();$(13_10)}$(13_10)}$(13_10)"
if (mouse_check_button_pressed(mb_left) && first) {
	
var temp = point_in_rectangle(mouse_x,mouse_y, x-120, y-200,x+120,y+200);//position_meeting(mouse_x, mouse_y, obj_tower1);//collision_point(mouse_x,mouse_y,obj_tower1, false, false);
if (temp) {
			//var temp = noone;
			first = false;
			var inst = instance_create_layer(global.id.x, global.id.y, "Instances", obj_tower);
			
			with (global.id) {
				 instance_destroy();
			}
			
		instance_destroy();
		
} else {
	//first = true;
	with (obj_preTower) {
		if (!point_in_circle(mouse_x, mouse_y, x, y,200)){//first = true;	
			first = true;
			show_debug_message("can click circle again");
		}
	//show_debug_message("can click circle again");
	
}
instance_destroy();
}
}