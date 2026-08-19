invencivel_time--

if invencivel_time<=0
	{
		instance_destroy()
	}

if place_meeting(x,y,obj_player)
	{
		global.score+=global.score_item
		if global.super_invincibility=true
			{
				with obj_player
					{
						super_invencibilidade=set_super_invencibilidade
					}
			}
		global.super_invincibility=true
		audio_play_sound(sfx_shield_in,1,0)
		instance_destroy()
	}