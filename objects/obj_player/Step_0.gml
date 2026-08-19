if global.selecting=true
	{
		sprite_index=spr_player_selected
	}
	else
	{
		sprite_index=spr_player
	}

#region movimento

x=mouse_x
y=mouse_y

#endregion

#region HP

if HP<=0
	{
		instance_destroy()
	}
if HP>maxHP
	{
		HP=maxHP
	}

if is_invincible=true
	{
		if invencibilidade=set_invencibilidade //TOMOU DANO
			{
				global.shake_value=1
				audio_play_sound(sfx_damage,1,0)
			}
		invencibilidade--
		image_alpha=0.5
		if invencibilidade<=0
			{
				is_invincible=false
				invencibilidade=set_invencibilidade
			}
	}
else
	{
		image_alpha=1
	}

#endregion

/*
alpha=clamp(alpha,0.2,1)

if instance_exists(obj_player) && distance_to_object(obj_player)<60
	{
		alpha-=0.1
	}else alpha+=0.1*/

#region power ups

if global.menu=0{

if global.super_invincibility=true 
	{		
		super_invencibilidade--
		sprite_index=spr_player_invincible
		if super_invencibilidade<=0
			{
				super_invencibilidade=set_super_invencibilidade
				global.super_invincibility=false
				audio_play_sound(sfx_shield_out,1,0)
			}
	}
else
	{
		sprite_index=spr_player
	}}

if global.timestop=true
	{
		timestop--
		
		if timestop=0
			{
				global.timestop=false
				timestop=set_timestop
			}
	}

#endregion