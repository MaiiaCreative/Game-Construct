if global.timestop=false
	{
		x+=xsp
		y+=ysp
	}
else
	{
		x+=0
		y+=0
	}

if place_meeting(x,y,obj_player_hitbox) && instance_exists(obj_player) && explode=false
	{
		if obj_player.is_invincible=false && global.super_invincibility=false
			{
				with obj_player
					{
						is_invincible=true
						HP-=1
					}
				global.score+=global.score_dano
			}
		explode=true
	}
	
if explode=true
	{
		xsp=0
		ysp=0
		sprite_index=spr_enemy_explode
		if image_index>image_number-1
			{
				if instance_exists(obj_player) with obj_player enemy_destroyed+=1
				audio_play_sound(sfx_pop,1,0,1,0,random_range(0.8,1))
				instance_destroy()
			}
	}

if place_meeting(x,y,obj_player) && global.super_invincibility
	{
		global.score+=global.score_kill
		explode=true
	}

if place_meeting(x,y,obj_parede)
	{
		instance_destroy()
	}
	
if place_meeting(x,y,obj_defender)
	{
		explode=true
		obj_defender.HP_defender-=1
	}