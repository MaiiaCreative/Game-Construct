destroyer_time--

if destroyer_time<=0
	{
		instance_destroy()
	}

if place_meeting(x,y,obj_player)
	{
		global.score+=instance_number(obj_enemy)*10
		with obj_enemy
			{
				explode=true
			}
		global.flash=true
		audio_play_sound(sfx_destroyer,1,0)
		instance_destroy()
	}