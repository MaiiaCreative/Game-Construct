if instance_exists(obj_player)
	{
			x=mouse_x
			y=mouse_y
		image_xscale=obj_player.image_xscale
		image_yscale=obj_player.image_yscale
	}
else instance_destroy()

if mouse_check_button(mb_right) && global.menu=false
			{
				image_alpha=1
			}
		else 
			{
				image_alpha=0
			}
		
if global.menu=false
	{
			if warning_trigger=true{
					alarm[0]=60*5
					warning_trigger=false
				}
			if hitbox_message=true
				{
					alpha_grow=false
					if alpha=0 hitbox_message=2
				}
			if hitbox_message=2
				{
					alpha_grow=true 
					warning=2
					alarm[0]=60*5
					hitbox_message=3
				}
			if alpha<1 && alpha_grow=true{
					alpha+=0.12
				}
			if alpha>0 && alpha_grow=false{
					alpha-=0.12
				}
			if mouse_check_button(mb_right) && hitbox_message=false
				{
					hitbox_message=true
					alarm[0]=-1
				}
		
	}