theme1= audio_play_sound(thm_1,1,1)
theme2= audio_play_sound(thm_2,1,1,0)
theme3= audio_play_sound(thm_3,1,1,0)
themekick= audio_play_sound(thm_kick,1,1,0)
//theme1=audio_play_sound(thm_1,1,1) //musica 
//theme2=audio_play_sound(thm_2,1,0,1)
bpm=audio_sound_get_track_position(theme1)
audio_layer=0
change_music=false

#region screenshake

shake_power=25
global.shake_value=0

#endregion

window_set_cursor(cr_none)

#region global variables

global.selecting=false

global.menu=1

global.generate_enemy=false

global.spd=92

global.enemy_speed=4.5

global.power_up_time=8

global.super_invincibility=false

global.timestop=false

global.sprite_spd=0

global.flash_alpha=0.6

global.flash=false

//dificuldade

global.difficulty=1
global.difficulty_spd=15

#region gamemodes

enum GAMEMODES
	{
		MAIN,
		DEFEND
	}

global.gamemode=GAMEMODES.MAIN
global.gamemode_index=1

#endregion

#endregion

power_up=0
power_up_enable=true

image_xscale=room_width*2
image_yscale=room_height*2
image_alpha=0

wait_moment=true