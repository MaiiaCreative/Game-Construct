if place_meeting(x,y,obj_player_hitbox)
	{
		global.selecting=true
		
if mouse_check_button_pressed(mb_any)
		{
			global.gamemode_index-=1
		}
	}
else
	{
		global.selecting=false
		with obj_key_right{		
		if place_meeting(x,y,obj_player_hitbox)
			{
				global.selecting=true
			}
		}
	}

if global.menu=false
	{
		if global.gamemode!=GAMEMODES.DEFEND
			{
				global.super_invincibility=false
			}
		instance_destroy()
	}