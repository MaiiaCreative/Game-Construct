life_time--

if life_time<=0
	{
		instance_destroy()
	}

if place_meeting(x,y,obj_player)
	{
		global.score+=global.score_item
		audio_play_sound(sfx_hp,1,0)
		if global.gamemode=GAMEMODES.MAIN
			with obj_player
				{
					HP+=1
				}
		
		if global.gamemode=GAMEMODES.DEFEND
			with obj_defender
				{
					HP_defender+=1
				}
		instance_destroy()
	}