if place_meeting(x,y,obj_player_hitbox)
	{
		global.selecting=true
		
		if mouse_check_button_pressed(mb_any)
				{
					global.gamemode_index+=1
				}
	}
else
	{
		global.selecting=false		
		with obj_key_left{		
		if place_meeting(x,y,obj_player_hitbox)
			{
				global.selecting=true
			}
		}
			
	}

if global.selecting=true
	{
	 obj_player.sprite_index=spr_player_selected
	}else{
		obj_player.sprite_index=spr_player
	}

if global.menu=false
	{
		instance_destroy()
	}