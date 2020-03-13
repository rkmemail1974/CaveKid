/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 40A78D1A
/// @DnDArgument : "code" "$(13_10)if collision_circle(x,y,100, obj_skull, false, true)$(13_10){$(13_10)	playerHealth -= 25;$(13_10)	//instance_destroy(id, true);$(13_10)	$(13_10)	with (obj_skull) {$(13_10)		instance_create_layer(x,y,"Instances", obj_first_particle);$(13_10)		instance_destroy(id, true);$(13_10)		}$(13_10)		$(13_10)}$(13_10)$(13_10)$(13_10)if (playerHealth >= playerMaxHealth) {$(13_10)	playerHealth = playerMaxHealth;	$(13_10)}$(13_10)$(13_10)if (playerHealth <= 0) {$(13_10)	instance_destroy();$(13_10)	//game_restart();$(13_10)}$(13_10)"

if collision_circle(x,y,100, obj_skull, false, true)
{
	playerHealth -= 25;
	//instance_destroy(id, true);
	
	with (obj_skull) {
		instance_create_layer(x,y,"Instances", obj_first_particle);
		instance_destroy(id, true);
		}
		
}


if (playerHealth >= playerMaxHealth) {
	playerHealth = playerMaxHealth;	
}

if (playerHealth <= 0) {
	instance_destroy();
	//game_restart();
}