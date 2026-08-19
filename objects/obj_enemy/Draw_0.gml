draw_self()

if global.timestop=true
	{

		if xsp= global.enemy_speed && ysp=global.enemy_speed
			{
				draw_sprite_ext(spr_enemy_pointing,global.sprite_spd,x,y,scale,scale,90,c_white,1) //spr_enemy_pointing_right
			}
		
		if xsp= -global.enemy_speed && ysp=global.enemy_speed
			{
				draw_sprite_ext(spr_enemy_pointing,global.sprite_spd,x,y,scale,scale,0,c_white,1)//spr_enemy_pointing_left_down FUNCIONA
			}
			
		if xsp= -global.enemy_speed && -ysp=global.enemy_speed
			{
				draw_sprite_ext(spr_enemy_pointing,global.sprite_spd,x,y,scale,scale,270,c_white,1)//spr_enemy_pointing_left_up
			}
			
		if xsp= global.enemy_speed && -ysp=global.enemy_speed
			{
				draw_sprite_ext(spr_enemy_pointing,global.sprite_spd,x,y,scale,scale,180,c_white,1)//spr_enemy_pointing_right_up 
			}
	}else{}