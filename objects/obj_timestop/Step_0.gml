timestop_time--

if timestop_time<=0
	{
		instance_destroy()
	}

if place_meeting(x,y,obj_player)
	{
		global.score+=global.score_item
		audio_play_sound(sfx_timestop,1,0)
		if global.timestop=true
			{
				obj_player.timestop=obj_player.set_timestop
			}
		
		global.timestop=true
		instance_destroy()
	}