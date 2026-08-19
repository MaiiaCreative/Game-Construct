//instance_create_depth(irandom_range(3,1400),400,depth,obj_enemy)
//X=-160 ; 1472     Y= 32 ; 736
//instance_create_depth(__left,irandom_range(32,736),obj_enemy)
bpm = audio_sound_get_track_position(theme1)

if round(bpm)==7 && !audio_is_playing(test)
	{
		change_music=true
	}else change_music=false

if change_music=true && instance_exists(obj_player)
	{
		if global.difficulty=2
			{
				audio_sound_gain(theme2,1,1)
			}
		if global.difficulty=3
			{
				audio_sound_gain(themekick,1,1)
			}
		if global.difficulty=4
			{
				audio_sound_gain(theme3,1,1)
			}
	}

if instance_exists(obj_player){
if obj_player.enemy_destroyed>=35 && global.difficulty=1
	{
		global.difficulty+=1
	}
	
if obj_player.enemy_destroyed>=140 && global.difficulty=2
	{
		global.difficulty+=1
	}
	
if obj_player.enemy_destroyed>=600 && global.difficulty=3
	{
		global.difficulty+=1
	}
	
if obj_player.enemy_destroyed>=800 && global.difficulty=4
	{
		global.difficulty+=1
	}
}

#region

if global.difficulty=1{
		global.difficulty_spd=15
	}
if global.difficulty=2{
		global.difficulty_spd=10
//		audio_sound_gain(theme2,1,3)
	}
if global.difficulty=3{
		global.difficulty_spd=8
//		audio_sound_gain(kick,1,3)
	}
if global.difficulty=4{
		global.difficulty_spd=7
	}
if global.difficulty=5{
		global.difficulty_spd=5
//		audio_sound_gain(theme3,1,3)
	}
	
#endregion

if global.gamemode_index<=0
	{
		global.gamemode_index=2
	}
	
if global.gamemode_index>=3
	{
		global.gamemode_index=1
	}

if global.gamemode_index=1
	{
		global.gamemode=GAMEMODES.MAIN
	}

if global.gamemode_index=2
	{
		global.gamemode=GAMEMODES.DEFEND
		
		 if global.menu=0
			{
				if global.gamemode=GAMEMODES.DEFEND && global.menu=0
					{
						global.super_invincibility=true
						with obj_player super_invencibilidade=infinity
					}
				else
					{
						global.super_invincibility=true
						with obj_player super_invencibilidade=set_super_invencibilidade
					}
			}
		
		if !instance_exists(obj_defender) && global.menu=true
			{
				instance_create_layer(x,y,"Buttons",obj_defender)
			}
	}

if global.menu=false{

if wait_moment=true
	{
		alarm[0]=60*3
		wait_moment=false
	}

if power_up_enable=true{
	alarm[1]=random_range(3,6)*60
	power_up_enable= false
	}

/*
if mouse_check_button_pressed(mb_middle)
	{
		global.difficulty+=1
	}*/
	

#region CODIGOS DE power ups


	
#region power-ups
	
		/*
			LISTA ENUMERADA DOS POWER UPS
		
			 1- DESTROYER
			 2- INVINCIBLE
			 3- LIFE
			 4- TIMESTOP
		*/
	
		if power_up=1
			{
				instance_create_layer(x,y,"power_ups",obj_destroyer)
				power_up=noone
			}

		if power_up=2
			{
				instance_create_layer(x,y,"power_ups",obj_invincible)
				power_up=noone
			}
	
		if power_up=3
			{
				instance_create_layer(x,y,"power_ups",obj_life)
				power_up=noone
			}
	
		if power_up=4
			{
				instance_create_layer(x,y,"power_ups",obj_timestop)
				power_up=noone
			}
			
		if global.timestop=true global.sprite_spd+=0.2 
		else global.sprite_spd+=0//velocidade da sprite de parado
			
	#endregion
	
#endregion

}

#region screenshake

var shake = power(global.shake_value, 2)*shake_power
var camX = random_range(-shake, shake)
var camY = random_range(-shake, shake)

if global.shake_value>0 {
		global.shake_value-=0.05
	}
camera_set_view_pos(view_camera[0],camX, camY)

#endregion

if global.flash>0
	{
		global.flash-=0.04
		image_alpha=global.flash_alpha
	}else{
		image_alpha=0
	}
/*
if !audio_is_playing(thm_1) // SISTEMA DE MUSICA
	{
		audio_play_sound(thm_1,1,1)
	}
	
