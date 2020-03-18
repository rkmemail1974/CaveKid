/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 28C196B2
/// @DnDArgument : "code" "$(13_10)$(13_10)var _jaw = false;$(13_10)var _axe = false;$(13_10)var _shield = false;$(13_10)var _rhino = false;$(13_10)var _loc = false;$(13_10)var _temp = false;$(13_10)tower =-1;$(13_10)$(13_10)$(13_10)if (mouse_check_button(mb_left)) {$(13_10)	//show_debug_message("images clicked");$(13_10)	with (obj_axe) {$(13_10)		//towerNumber = 1;$(13_10)		_axe = point_in_rectangle(mouse_x,mouse_y, x-100,y-223,x+100,y+223);$(13_10)	}$(13_10)$(13_10)	with (obj_jaw) {$(13_10)		//towerNumber = 2;$(13_10)		_jaw = point_in_rectangle(mouse_x, mouse_y, x-89,y-250,x+89,y+250);$(13_10)	}$(13_10)$(13_10)	with(obj_shield) {$(13_10)		//towerNumber = 3;$(13_10)		_shield = point_in_rectangle(mouse_x,mouse_y,x-210,y-238,x+210,y+238);	$(13_10)	}$(13_10)$(13_10)	with(obj_rhino) {$(13_10)		//towerNumber = 4;$(13_10)		_rhino = point_in_rectangle(mouse_x,mouse_y,x-160,y-192,x+160,y+192);$(13_10)	}$(13_10)	$(13_10)	_loc = point_in_circle(mouse_x,mouse_y,x,y,200);$(13_10)$(13_10)}$(13_10)$(13_10)_temp = _jaw || _axe || _shield || _rhino;$(13_10)$(13_10)$(13_10)if (_temp) {$(13_10)	//global.selected = true;$(13_10)	var kid = instance_create_layer(3335,1281, "Instances", obj_PathFinder);$(13_10)		$(13_10)		with (obj_PathFinder)$(13_10)		{$(13_10)			identify = kid.id;$(13_10)		}$(13_10)	$(13_10)	global.kidId = kid.id;$(13_10)	$(13_10)	if (_axe) {$(13_10)		//_axe = false;$(13_10)		tower = 1;$(13_10)		global.towerId = tower;$(13_10)		destroyLocalHUD();$(13_10)		$(13_10)		with(obj_axe) {	$(13_10)		destroyLocalHUD();$(13_10)		}$(13_10)	}$(13_10)	if (_jaw) {$(13_10)		 tower = 2;$(13_10)		global.towerId = tower;$(13_10)		destroyLocalHUD();$(13_10)		$(13_10)	}$(13_10)	$(13_10)	if (_shield) {$(13_10)		tower = 3;$(13_10)		global.towerId = tower;$(13_10)		destroyLocalHUD();$(13_10)		$(13_10)	}$(13_10)	$(13_10)	if (_rhino) {$(13_10)		tower = 4;$(13_10)		global.towerId = tower;$(13_10)		destroyLocalHUD();$(13_10)		$(13_10)	}$(13_10)	show_debug_message("tower type:");$(13_10)	show_debug_message(tower);$(13_10)	show_debug_message("kid number:");$(13_10)	show_debug_message(kid.id);$(13_10)	$(13_10)	ds_map_add(global.map, tower, kid.id);$(13_10)	ds_map_add(global.mapR, kid.id, tower);$(13_10)	$(13_10)	var k = ds_map_find_value(global.map, tower);$(13_10)	var t = ds_map_find_value(global.mapR, kid.id);$(13_10)	$(13_10)	show_debug_message("Tower number retrieved: ");$(13_10)	show_debug_message(t);$(13_10)	show_debug_message("kid number retrieved: ");$(13_10)	show_debug_message(k);$(13_10)	global.tId = tower;$(13_10)	global.kId = kid.id;$(13_10)} //end if$(13_10)$(13_10)else if (_loc){$(13_10)		destroyLocalHUD();$(13_10)		instance_destroy();$(13_10)}$(13_10)$(13_10)$(13_10)if (collision_circle(x,y,200,obj_PathFinder,false,false) && global.once)$(13_10){$(13_10)	global.once = false;$(13_10)	show_debug_message("before map call value kId:");$(13_10)	show_debug_message(kId);//instance vars are -1$(13_10)	show_debug_message("before map call value tId:");$(13_10)	show_debug_message(tId);$(13_10)	$(13_10)	var tt = ds_map_find_value(global.mapR, global.kId);$(13_10)	var kk = ds_map_find_value(global.map, global.tId);$(13_10)	$(13_10)	$(13_10)	show_debug_message("Tower type collision: ");//this number is -1$(13_10)	show_debug_message(tt);$(13_10)	show_debug_message("kid number collision: ");$(13_10)	show_debug_message(kk);$(13_10)	$(13_10)	$(13_10)	//if (kk == obj_PathFinder.id) {$(13_10)		$(13_10)		var tower = instance_create_layer(x,y,"instances",obj_tower);$(13_10)	$(13_10)		with(obj_PathFinder.id) {$(13_10)			instance_destroy();//destroy kid$(13_10)		}$(13_10)	$(13_10)		instance_destroy();//destroy preTower location$(13_10)	//}$(13_10)}$(13_10)$(13_10)"


var _jaw = false;
var _axe = false;
var _shield = false;
var _rhino = false;
var _loc = false;
var _temp = false;
tower =-1;


if (mouse_check_button(mb_left)) {
	//show_debug_message("images clicked");
	with (obj_axe) {
		//towerNumber = 1;
		_axe = point_in_rectangle(mouse_x,mouse_y, x-100,y-223,x+100,y+223);
	}

	with (obj_jaw) {
		//towerNumber = 2;
		_jaw = point_in_rectangle(mouse_x, mouse_y, x-89,y-250,x+89,y+250);
	}

	with(obj_shield) {
		//towerNumber = 3;
		_shield = point_in_rectangle(mouse_x,mouse_y,x-210,y-238,x+210,y+238);	
	}

	with(obj_rhino) {
		//towerNumber = 4;
		_rhino = point_in_rectangle(mouse_x,mouse_y,x-160,y-192,x+160,y+192);
	}
	
	_loc = point_in_circle(mouse_x,mouse_y,x,y,200);

}

_temp = _jaw || _axe || _shield || _rhino;


if (_temp) {
	//global.selected = true;
	var kid = instance_create_layer(3335,1281, "Instances", obj_PathFinder);
		
		with (obj_PathFinder)
		{
			identify = kid.id;
		}
	
	global.kidId = kid.id;
	
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
	show_debug_message("tower type:");
	show_debug_message(tower);
	show_debug_message("kid number:");
	show_debug_message(kid.id);
	
	ds_map_add(global.map, tower, kid.id);
	ds_map_add(global.mapR, kid.id, tower);
	
	var k = ds_map_find_value(global.map, tower);
	var t = ds_map_find_value(global.mapR, kid.id);
	
	show_debug_message("Tower number retrieved: ");
	show_debug_message(t);
	show_debug_message("kid number retrieved: ");
	show_debug_message(k);
	global.tId = tower;
	global.kId = kid.id;
} //end if

else if (_loc){
		destroyLocalHUD();
		instance_destroy();
}


if (collision_circle(x,y,200,obj_PathFinder,false,false) && global.once)
{
	global.once = false;
	show_debug_message("before map call value kId:");
	show_debug_message(kId);//instance vars are -1
	show_debug_message("before map call value tId:");
	show_debug_message(tId);
	
	var tt = ds_map_find_value(global.mapR, global.kId);
	var kk = ds_map_find_value(global.map, global.tId);
	
	
	show_debug_message("Tower type collision: ");//this number is -1
	show_debug_message(tt);
	show_debug_message("kid number collision: ");
	show_debug_message(kk);
	
	
	//if (kk == obj_PathFinder.id) {
		
		var tower = instance_create_layer(x,y,"instances",obj_tower);
	
		with(obj_PathFinder.id) {
			instance_destroy();//destroy kid
		}
	
		instance_destroy();//destroy preTower location
	//}
}