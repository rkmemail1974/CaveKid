/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 28C196B2
/// @DnDArgument : "code" "$(13_10)$(13_10)var _jaw = false;$(13_10)var _axe = false;$(13_10)var _shield = false;$(13_10)var _rhino = false;$(13_10)var _loc = false;$(13_10)var _temp = false;$(13_10)$(13_10)if (mouse_check_button(mb_left)) {$(13_10)	//show_debug_message("images clicked");$(13_10)	with (obj_axe) {$(13_10)		_axe = point_in_rectangle(mouse_x,mouse_y, x-100,y-223,x+100,y+223);$(13_10)	}$(13_10)$(13_10)	with (obj_jaw) {$(13_10)		_jaw = point_in_rectangle(mouse_x, mouse_y, x-89,y-250,x+89,y+250);$(13_10)	}$(13_10)$(13_10)	with(obj_shield) {$(13_10)		_shield = point_in_rectangle(mouse_x,mouse_y,x-210,y-238,x+210,y+238);	$(13_10)	}$(13_10)$(13_10)	with(obj_rhino) {$(13_10)		_rhino = point_in_rectangle(mouse_x,mouse_y,x-160,y-192,x+160,y+192);$(13_10)	}$(13_10)	$(13_10)	_loc = point_in_circle(mouse_x,mouse_y,x,y,200);$(13_10)$(13_10)}$(13_10)$(13_10)_temp = _jaw || _axe || _shield || _rhino;$(13_10)$(13_10)$(13_10)if (_temp) {$(13_10)	//global.selected = true;$(13_10)	var kid = instance_create_layer(3335,1281, "Instances", obj_PathFinder);$(13_10)	var tower;$(13_10)	global.kidId = kid;$(13_10)	if (_axe) {$(13_10)		//_axe = false;$(13_10)		tower = 1;$(13_10)		global.towerId = tower;$(13_10)		destroyLocalHUD();$(13_10)		$(13_10)		with(obj_axe) {	$(13_10)		destroyLocalHUD();$(13_10)		}$(13_10)	}$(13_10)	if (_jaw) {$(13_10)		tower = 2;$(13_10)		global.towerId = tower;$(13_10)		destroyLocalHUD();$(13_10)		$(13_10)	}$(13_10)	$(13_10)	if (_shield) {$(13_10)		tower = 3;$(13_10)		global.towerId = tower;$(13_10)		destroyLocalHUD();$(13_10)		$(13_10)	}$(13_10)	$(13_10)	if (_rhino) {$(13_10)		tower = 4;$(13_10)		global.towerId = tower;$(13_10)		destroyLocalHUD();$(13_10)		$(13_10)	}$(13_10)	$(13_10)	ds_map_add(global.map, kid, tower);$(13_10)	$(13_10)	$(13_10)} //end if$(13_10)$(13_10)else if (_loc){$(13_10)		destroyLocalHUD();$(13_10)		instance_destroy();$(13_10)}$(13_10)$(13_10)$(13_10)if (collision_circle(x,y,200,obj_PathFinder,false,false))$(13_10){$(13_10)	var tower = instance_create_layer(x,y,"instances",obj_tower);$(13_10)	$(13_10)	with(obj_PathFinder) {$(13_10)		instance_destroy();//destroy kid$(13_10)	}$(13_10)	$(13_10)	instance_destroy();//destroy preTower location$(13_10)	$(13_10)}$(13_10)$(13_10)"


var _jaw = false;
var _axe = false;
var _shield = false;
var _rhino = false;
var _loc = false;
var _temp = false;

if (mouse_check_button(mb_left)) {
	//show_debug_message("images clicked");
	with (obj_axe) {
		_axe = point_in_rectangle(mouse_x,mouse_y, x-100,y-223,x+100,y+223);
	}

	with (obj_jaw) {
		_jaw = point_in_rectangle(mouse_x, mouse_y, x-89,y-250,x+89,y+250);
	}

	with(obj_shield) {
		_shield = point_in_rectangle(mouse_x,mouse_y,x-210,y-238,x+210,y+238);	
	}

	with(obj_rhino) {
		_rhino = point_in_rectangle(mouse_x,mouse_y,x-160,y-192,x+160,y+192);
	}
	
	_loc = point_in_circle(mouse_x,mouse_y,x,y,200);

}

_temp = _jaw || _axe || _shield || _rhino;


if (_temp) {
	//global.selected = true;
	var kid = instance_create_layer(3335,1281, "Instances", obj_PathFinder);
	var tower;
	global.kidId = kid;
	if (_axe) {
		//_axe = false;
		tower = 1;
		global.towerId = tower;
		destroyLocalHUD();
		
		with(obj_axe) {	
		destroyLocalHUD();
		}
	}
	if (_jaw) {
		tower = 2;
		global.towerId = tower;
		destroyLocalHUD();
		
	}
	
	if (_shield) {
		tower = 3;
		global.towerId = tower;
		destroyLocalHUD();
		
	}
	
	if (_rhino) {
		tower = 4;
		global.towerId = tower;
		destroyLocalHUD();
		
	}
	
	ds_map_add(global.map, kid, tower);
	
	
} //end if

else if (_loc){
		destroyLocalHUD();
		instance_destroy();
}


if (collision_circle(x,y,200,obj_PathFinder,false,false))
{
	var tower = instance_create_layer(x,y,"instances",obj_tower);
	
	with(obj_PathFinder) {
		instance_destroy();//destroy kid
	}
	
	instance_destroy();//destroy preTower location
	
}