/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 19A56BDA
/// @DnDArgument : "code" "path = -1;$(13_10)depth = -2;$(13_10)inst = -1;$(13_10)$(13_10)inst = instance_nearest(x,y,obj_preTower);$(13_10)identify = -1;$(13_10)$(13_10)//audio_play_sound(footsteps.id, 0.4,false);"
path = -1;
depth = -2;
inst = -1;

inst = instance_nearest(x,y,obj_preTower);
identify = -1;

//audio_play_sound(footsteps.id, 0.4,false);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 6EA22BB2
/// @DnDArgument : "soundid" "footsteps"
/// @DnDSaveInfo : "soundid" "4adbf66c-8149-42ca-9bb6-0d8d4b5fdcb3"
audio_play_sound(footsteps, 0, 0);